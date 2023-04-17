import os
import sys
import shutil
import re

'''
python representativesFromJuliet.py F:\RawDataset\C\testcases\ F:\RepresentativeDataset\testcases\
'''


pathToRawJuliet= str(sys.argv[1])
pathToRepresentativeDataSet= str(sys.argv[2])

#------------------------------------------------
def makeDir(path):
    if not os.path.exists(path):
        os.makedirs(path)


def copyFiles(currentpath, dest_path,file):

    if re.search(r'.*(\.c.*|\.h)',file):
            copied_testcases.append(file)
    try:
        shutil.copy(currentpath, dest_path)
    except:
        print("Error copying file: "+ currentpath)


def copy_non_testcases(currentpath, dest_path,file,folder_name):
    '''
    copy non-testcases to the representative dataset as .bat/ main.cpp/ MAKEFILES..
    '''
    if not file.startswith(folder_name):

        # check if dest path has any file ending with .bat 
        if file.endswith('.bat'):
            if not any(file.endswith('.bat') for file in os.listdir(dest_path)):
                if re.search(r'.*s.*\.bat',file):
                    file= re.sub(r'_s\d*','',file)  # remove the s from the file name 
                    dest_path+= "\\"+ file

                copyFiles(currentpath,dest_path,file)
            return 
        
        copyFiles(currentpath,dest_path,file) #main.cpp/ MAKEFILES/...


def copy_good_bad_testcases(currentpath, dest_path,file):
    '''
    copy good/bad testcases to the representative dataset
    '''
    testcase= re.search(r".*(?<=\D)(\d+)(?=_(bad\w*|good\w*))(.*)",file) 
    if testcase!= None:
        testcase_number= testcase.group(1)        

        picked_testcases.append(testcase_number)

        copyFiles(currentpath,dest_path,file)



def pick_random_representative(source_path,dest_path,family,subfamily_name,file,random_testcase):
    '''
    pick a random representative from the testcases of each family/subfamily
    '''
     
    for testcase in copied_testcases:
        if testcase.startswith(family+'__'+subfamily_name):
            if not re.search(r".*(bad\w*|good\w*).*",testcase):
                return 
        
    if random_testcase <10: 
            number = '0'+str(random_testcase)
            starting=family+'__'+subfamily_name+'_' +'0'+str(random_testcase)

    else:
        number = str(random_testcase)
        starting=family+'__'+subfamily_name+'_' +str(random_testcase)
                
    while any(testcase.startswith(starting) for testcase in copied_testcases):
        random_testcase+=1 
    
    if random_testcase <10: 
        number = '0'+str(random_testcase)
        starting=family+'__'+subfamily_name+'_' +'0'+str(random_testcase)
    else:
        number = str(random_testcase)
        starting=family+'__'+subfamily_name+'_' +str(random_testcase)

    if file.startswith(starting): 
        picked_testcases.append(number)
        copyFiles(source_path,dest_path,file)


def copy_all_files_for_testcase(source_path,dest_path,file,family,subfamily_name):

    for testcase_number in picked_testcases: 
        if file not in copied_testcases and\
           file.startswith(family+'__'+subfamily_name+'_'+testcase_number):
            
            copyFiles(source_path,dest_path,file)   

# ------------------------------------------------



if __name__ == "__main__":
    cveFamilies= True
    picked_testcases= []
    copied_testcases= []
    random_testcase=1

    for currentpath, folders, files in os.walk(pathToRawJuliet):

        if cveFamilies:
            for folder in folders:
                path= pathToRepresentativeDataSet+ folder
                makeDir(path) #make CVE families directories

            cveFamilies= False 

        for file in files: 
            folder_name= currentpath.split("\\")[-1] # get the folder name

            # ------------------------------------------------
            if re.search("^s",folder_name) : # CVE subfolders 
                family= currentpath.split("\\")[-2] 
            
            if re.search("^CWE",folder_name): # CVE family folder
                family=folder_name

            source_path= currentpath + "\\"+ file
            dest_path= pathToRepresentativeDataSet+ family
            copy_non_testcases(source_path,dest_path,file,family)

            #------------------------------------------------
            if file.startswith(family):
                subfamily_with_testcases=file.split(family+"__")[1] 
                subfamily_name= re.search(r"(.*)(_\d+\w*)(\.c.*|\.h)$",subfamily_with_testcases).group(1)
                dest_path=pathToRepresentativeDataSet+ family+ "\\"+ subfamily_name

                makeDir(dest_path) #make subfamily directories

                copy_good_bad_testcases(source_path,dest_path, file) 
                pick_random_representative(source_path,dest_path,family,subfamily_name,file,random_testcase)
                copy_all_files_for_testcase(source_path,dest_path,file,family,subfamily_name)
            