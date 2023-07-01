
import os, re, json
from subprocess import run, Popen
from shutil import rmtree
from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt, get_token, csrf_protect


from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import FileSerializer, MULFileSerializer, stringSerializer

import base64


from rest_framework.decorators import api_view, permission_classes
from rest_framework import permissions

GUARDISTA_PATH = os.path.split(os.path.split(os.path.split(os.path.split(os.path.realpath(__file__))[0])[0])[0])[0]





# Create your views here.
def index(request):
    return render(request, 'index.html')

@csrf_exempt
def upload(request):
    return render(request, 'upload.html')



def makeNewDummyFolder():
    temp_folder = str(os.getcwd())+'/tmp'
    temp_folder = temp_folder.replace('\\','/')
    if not os.path.exists(temp_folder):
        os.makedirs(temp_folder)
    i = len(os.listdir(temp_folder))
    newDummyFolder = os.path.join(temp_folder, f'tmp{i}')
    if not os.path.exists(newDummyFolder):
        os.makedirs(newDummyFolder)
    
    newDummyFolder = newDummyFolder.replace('\\','/')
    return newDummyFolder




def sanityChecks(FileNames):
    '''
    this function checks the input files, and trigger a warning if:
    1) there are multiple executable files
    2) there is an executable within the source files
    3) there are files not supported yet by our project,   CURRENTLY SUPPORTING [C, C++, Python]
    '''
    countExecutables = 0
    countSourceFiles = 0
    countUnknownFiles = 0
    for file in FileNames:
        if(file.endswith('.exe')):
            countExecutables += 1
            continue
        if(file.endswith('.cpp') or file.endswith('.c') or file.endswith('.h') or file.endswith('.o') or file.endswith('.py') or file.endswith('.gch')):
            countSourceFiles+=1
            continue
        countUnknownFiles +=1
    
    if(countUnknownFiles > 0):
        responseDict = {'invalid_mode': f'We still do not support those file extensions :( \n But We are on our way !!'}
        valid = 0
    elif(countSourceFiles > 1 and countExecutables > 0):
        responseDict = {'invalid_mode': f'We only scan one executable per time'}
        valid = 0
    elif(countExecutables > 1):
        responseDict = {'invalid_mode': f'We cannot scan a mix of executables and source files, please scan either all your source files, or scan the executables as one executable at a time'}
        valid = 0
    elif(countExecutables == 1 and countSourceFiles == 0 and countUnknownFiles == 0):
        responseDict = {'one_executable_mode': f'Wait for the scan'}
        valid = 1
    elif(countExecutables == 0 and countSourceFiles > 0 and countUnknownFiles == 0):
        responseDict = {'source_code_mode': f'Wait for compilation then scanning'}
        valid = 1
    elif(countExecutables == 0 and countSourceFiles > 0 and countUnknownFiles == 0):
        responseDict = {'invalid_mode': f'No Files Attached!'}
        valid = 0
    
    return responseDict, valid



 
def runOnFolder(folderPath):
    absPathtoMainPipeline = os.path.join(GUARDISTA_PATH, 'mainPipeline.py')
    run (['python', absPathtoMainPipeline, folderPath, 'false', folderPath+'/output'])

    absPathtoOutputFolder = os.path.join(GUARDISTA_PATH, 'output', 'LLfiles')
    for llfile in os.listdir(absPathtoOutputFolder):
        if llfile.endswith('.ll'):
            with open(os.path.join(absPathtoOutputFolder,llfile), 'r') as f:
                content = f.read()

    rmtree(folderPath)
    return content




def asynchronousRunOnFolder(folderPath):

    OUTputPath = os.path.join(folderPath,'output')
    statusPath = str(os.path.join(folderPath, 'status.txt')).replace('\\', '/')
    with open(statusPath, 'w') as f:
        f.write('submitted')
    absPathtoMainPipeline = os.path.join(GUARDISTA_PATH, 'mainPipeline.py')

    p = Popen(['python', absPathtoMainPipeline, folderPath, 'false', os.path.join(folderPath,'output')])

    return


class MulFileUploadView(APIView):
    def post(self, request):
        serializer = MULFileSerializer(data=request.data)
        if serializer.is_valid():
            files = serializer.validated_data['files']
            file_paths = []
            new_working_folder = makeNewDummyFolder()
            allFileNames =[f.name for f in files]
            response_for_checks, validity = sanityChecks(allFileNames)
            num_case = re.findall('\d+',str(os.path.split(new_working_folder)[1]))[0]
            response_for_checks['num_case'] = num_case
            
            if(validity):
                for file in files:
                    file_path = os.path.join(new_working_folder, file.name).replace('\\', '/')
                    with open(file_path, 'wb+') as destination:
                        for chunk in file.chunks():
                            destination.write(chunk)
                    file_paths.append(file_path)

                asynchronousRunOnFolder(new_working_folder)
                response = HttpResponse({f"{num_case}": int(num_case)})
                response.set_cookie('num_case', num_case)
                response.status_code = 201
                return response #, render(request, 'Loading.html')#, 
            
            else:
                return Response(response_for_checks, status=status.HTTP_400_BAD_REQUEST)
        else:
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        
        


class CheckStatusView(APIView):
    def get(self, request):
        try:
            num_case  = request.COOKIES.get('num_case')
        except:
            response = HttpResponse({f"invalid {num_case}num_case": 'cookie not set'}) 
            response.status_code = 401
            return response
        if (num_case == ''):
            response = HttpResponse({f"invalid {num_case}num_case": 'cookie not set'}) 
            response.status_code = 402
            return response
       
        if(num_case):
            script_parent_folder_path = '/'.join(re.split(r'\\',os.path.realpath(__file__))[:-2])
            OutputDir = os.path.join(script_parent_folder_path, 'tmp', f'tmp{num_case}', 'output')
            StatusFile = str(os.path.join(OutputDir, 'status.txt')).replace('\\', '/')
            if(os.path.isdir(OutputDir)):
                try:
                    with open (StatusFile, 'r') as f:
                        content = f.read()
                    content = re.sub('\n', '',content)
                    content = re.sub('\s', '',content)
                except:
                    return Response({'invalid_mode': f'no file submitted, num_case {num_case} not found'}, status=status.HTTP_404_NOT_FOUND)
                
                if(content == 'completed'):
                    

                    return JsonResponse({"waiting_status": 4})
                elif(content == 'classified'):
    

                    return JsonResponse({"waiting_status": 3})
                elif(content == 'submitted'):
                    respBody = {"waiting_status": 0}
                    jsonResp = json.dumps(respBody)
                    return HttpResponse(jsonResp, status=status.HTTP_200_OK,content_type='application/json')
                elif(re.findall('.*c.*o.*m.*p.*', content)):
                    respBody = {"waiting_status": 1}
                    jsonResp = json.dumps(respBody)
                    return HttpResponse(jsonResp, status=status.HTTP_200_OK,content_type='application/json')
                elif(re.findall('.*i.*f.*t.*e.*', content)):
                    respBody = {"waiting_status": 2}
                    jsonResp = json.dumps(respBody)
                    return HttpResponse(jsonResp, status=status.HTTP_200_OK,content_type='application/json')
                else:
                    respBody = {"waiting_status": content}
                    jsonResp = json.dumps(respBody)
                    return HttpResponse(jsonResp, status=status.HTTP_200_OK,content_type='application/json')
            else:
                return Response({'invalid_mode': f'no file submitted, num_case {num_case} not found'}, status=status.HTTP_400_BAD_REQUEST)
        
        response = HttpResponse({"invalid num_case": 'cookie not set'}) 
        response.status_code = 404
        return response




    def post(self, request):
        serializer = stringSerializer(data = request.data)
        if serializer.is_valid():
            try:
                num_case = serializer.validated_data['num_case']
            except:
                return Response({'invalid_mode': 'trying to read from a non-existent name field'}, status=status.HTTP_400_BAD_REQUEST)
       
            if(num_case):
                StatusFile = os.path.join(os.getcwd(), 'tmp', f'tmp{num_case}', 'output', 'status.txt')
                if(os.path.exists(StatusFile)):
                    with open (StatusFile, 'r') as f:
                        content = f.read()
                    
                    if(content == 'completed'):
                        parent_path = str(os.path.split(os.path.realpath(__file__))[0])
                        #rmtree(parent_path+f'/tmp/tmp{num_case}')
                        return Response({'COMPLETED': 1, 'Content-Type' : 'text'} , status=status.HTTP_200_OK)
                    else:
                        return Response({'waiting_status': base64.b64encode(content)}, status=status.HTTP_200_OK)

            return Response({'invalid_mode': f'no file submitted, num_case {num_case} not found'}, status=status.HTTP_400_BAD_REQUEST)
        return Response({'invalid_mode': serializer.errors}, status=status.HTTP_400_BAD_REQUEST)
        
            
class GetCSRFToken(APIView):
    def get(self, request):
        csrf_token = request.COOKIES.get('csrftoken')
        response = JsonResponse(json.dumps({'x-csrftoken': csrf_token}, ensure_ascii=False), safe=False)
        response['x-csrftoken'] = csrf_token
        return response
     

class CheckReportView(APIView):
    def get(self, request):
        try:
            num_case  = request.COOKIES.get('num_case')
        except:
            response = HttpResponse({f"invalid {num_case}num_case, no corresponding json report": 'cookie not set'}) 
            response.status_code = 404
            return response
        if (num_case == ''):
            response = HttpResponse({f"invalid {num_case}num_case, no corresponding json report": 'cookie not set'}) 
            response.status_code = 404
            return response
       
        if(num_case):
            script_parent_folder_path = '/'.join(re.split(r'\\',os.path.realpath(__file__))[:-2])
            OutputDir = os.path.join(script_parent_folder_path, 'tmp', f'tmp{num_case}', 'output')
            StatusFile = str(os.path.join(OutputDir, 'status.txt')).replace('\\', '/')

            ReportFile =  str(os.path.join(OutputDir, 'finalReport.json')).replace('\\', '/')



            if(os.path.isdir(OutputDir) and os.path.isfile(ReportFile)):
                try:
                    with open (ReportFile, 'r') as f:
                        content = json.load(f)
                    with open (StatusFile, 'r') as f:
                        status_content = f.read()
                except:
                    return JsonResponse(json.dumps({f"invalid {num_case}num_case, no corresponding json report": 'cookie not set'}, ensure_ascii=False), status=status.HTTP_400_BAD_REQUEST, safe=False)
                
                respBody = dict()#{'waiting_status' : status_content}
                respBody['report'] = content


                jsonResp = json.dumps(respBody)


                return HttpResponse(jsonResp, status=status.HTTP_200_OK, content_type='application/json')
            else:
                return JsonResponse(json.dumps({f"invalid {num_case}num_case, no corresponding json report": 'cookie not set'}, ensure_ascii=False), status=status.HTTP_400_BAD_REQUEST, safe=False)
        
        response = HttpResponse({f"invalid {num_case}num_case, no corresponding json report": 'cookie not set'}) 
        response.status_code = 400
        return response






'''
def upload_files(request):
    if request.method == 'POST':
        files = request.FILES.getlist('files')
        if not files:
            return JsonResponse({'error': 'No files were uploaded.'}, status=400)
        # create a temporary folder to store the files
        temp_folder = '/tmp/uploads'
        if not os.path.exists(temp_folder):
            os.makedirs(temp_folder)
        for file in files:
            # create a unique filename for each file
            filename = os.path.join(temp_folder, file.name)
            i = 1
            while os.path.exists(filename):
                filename = os.path.join(temp_folder, f'{os.path.splitext(file.name)[0]}_{i}{os.path.splitext(file.name)[1]}')
                i += 1
            # save the file to disk
            with open(filename, 'wb') as f:
                for chunk in file.chunks():
                    f.write(chunk)
        return JsonResponse({'message': f'{len(files)} file(s) uploaded successfully.'}, status=200)
    else:
        return JsonResponse({'error': 'Invalid request method.'}, status=405)
'''




class FileUploadView(APIView):
    def post(self, request, format=None):
        serializer = FileSerializer(data=request.data)
        if serializer.is_valid():
            uploaded_file = serializer.validated_data['file']
            # create a temporary folder to store the files
            temp_folder = '/tmp/uploads'
            if not os.path.exists(temp_folder):
                os.makedirs(temp_folder)
            # create a unique filename for the file
            filename = os.path.join(temp_folder, uploaded_file.name)
            i = 1
            while os.path.exists(filename):
                filename = os.path.join(temp_folder, f'{os.path.splitext(uploaded_file.name)[0]}_{i}{os.path.splitext(uploaded_file.name)[1]}')
                i += 1
            # save the file to disk
            with open(filename, 'wb') as f:
                for chunk in uploaded_file.chunks():
                    f.write(chunk)
            return Response({'message': f'File "{uploaded_file.name}" uploaded successfully.'})
        else:
            return Response(serializer.errors, status=400)
        
