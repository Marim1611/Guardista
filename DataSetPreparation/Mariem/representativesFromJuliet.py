import os
import sys
import shutil
import re

'''
python representativesFromJuliet.py F:\\RawDataset\\C\\testcases\\ F:\\RepresentativeDataset\\testcases\\
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


def copy_good_bad_testcases(currentpath, dest_path,file,testcase_number):
    '''
    copy good/bad testcases to the representative dataset
    '''
    
    if testcase_number!= None:
        pattern = r'.*({}).*'.format(testcase_number)
        if re.search(pattern, file):            
            picked_testcases.append([testcase_number,family,subfamily_name])
            copyFiles(currentpath,dest_path,file)


def pick_random_representative(source_path,dest_path,family,subfamily_name,file,random_testcase):
    '''
    pick a random representative from the testcases of each family/subfamily
    '''
     
    for testcase in copied_testcases:
        if testcase.startswith(family+'__'+subfamily_name):
            if not re.search(r".*(bad\w*|good\w*).*",testcase):
                return 
        
    if random_testcase ==1:  
        number = '0'+str(random_testcase)
        starting=family+'__'+subfamily_name+'_' +'0'+str(random_testcase)

    else:
        number = str(random_testcase)
        starting=family+'__'+subfamily_name+'_' +str(random_testcase)
                
    if not any(testcase.startswith(starting) for testcase in copied_testcases):
        if file.startswith(starting): 

            picked_testcases.append([number,family,subfamily_name])
            copyFiles(source_path,dest_path,file)


def copy_all_files_for_testcase(source_path,dest_path,file,family,subfamily_name):

    for testcase in picked_testcases:
        testcase_number= testcase[0]
        testcase_family= testcase[1]
        testcase_subfamily= testcase[2]

        if file not in copied_testcases and\
            family==testcase_family and\
            subfamily_name==testcase_subfamily and\
            file.startswith(family+'__'+subfamily_name+'_'+testcase_number):
                
                copyFiles(source_path,dest_path,file)

# ------------------------------------------------


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


            # -------- Pick a random representative testcase for each subfamily --------

            # get all the testcases for each subfamily
            testcases= [testcase for testcase in files if testcase.startswith(family+'__'+subfamily_name)]
            testcases_numbers = [re.search(r'(?<=_)\d+(?=[a-z])?', testcase).group() for testcase in testcases]

            # get testcases_numbers that have more than one part
            splitted_testcases= list(set([testcase for testcase in testcases_numbers if testcases_numbers.count(testcase)>1]))
            splitted_testcases.sort()

            # good/bad testcases numbers 
            good_bad_testcases= None

            for testcase in testcases:
                if re.search(r".*(bad\w*|good\w*).*",testcase):
                    # get its number and remove it from splitted_testcases
                    testcase_number= re.search(r'(?<=_)\d+(?=[a-z])?', testcase).group()
                    good_bad_testcase= testcase_number

                    if testcase_number in splitted_testcases:
                        splitted_testcases.remove(testcase_number)

            for i,testcase in enumerate(testcases):
                if not re.search(r".*(bad\w*|good\w*).*",testcase) and testcases_numbers[i] in splitted_testcases:
                    random_testcase= int(testcases_numbers[i])
                    break 
       
            # ------------------------------------------------
            dest_path=pathToRepresentativeDataSet+ family+ "\\"+ subfamily_name
            makeDir(dest_path) #make subfamily directories 
            copy_good_bad_testcases(source_path,dest_path, file,good_bad_testcase) 
            pick_random_representative(source_path,dest_path,family,subfamily_name,file,random_testcase)
            copy_all_files_for_testcase(source_path,dest_path,file,family,subfamily_name)
            print("done with: "+ file)
            
            random_testcase=1 #reset for the next file