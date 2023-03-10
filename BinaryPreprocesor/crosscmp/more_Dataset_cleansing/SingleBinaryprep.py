import json
import re
import os
import shutil
import time

'''
                                                        ---DESCRIPTION---
    Remember the SinleBinary dataset? the dataset where each test case contains only one binary file.
    this python script just decompiles each test case and puts the llvm files in a directory inside each folder. also it captures the
    span of the vulnerable function inside the ll file, and captures the name of the function also inside the ll file.
'''


#just for some fun statistics
count_of_all_vulnerabilities = 0
count_of_safe_files = 0
count_of_vulnerable_cases = 0
start_time = time.time()

#path to the multibinaries dataset
rootPathToDataset = "D:/ClassWork/Dataset/sample/One Binary"

#path to RetDec's bin folder
RetDecPath = "D:/ClassWork/Guardista/BinaryPreprocesor/RetDec/bin"

#list containing all files and folders
root_dir_list = os.listdir(rootPathToDataset)
#print(root_dir_list)

############################################################# MAIN LOOP :for each test case folder ######################################
for iter,folder in enumerate(root_dir_list):

    if(folder[-5:len(folder)] == '.json' or folder == 'llvmout'):  #just some debugging, as retdec sometimes goes batshit crazy and might throw anything anywhere
        continue


    #working path, for a single test case, which we will use in each test case iteration
    Path = rootPathToDataset + '/' + folder
    
    #those are our executables inside this test case
    executable = ''
    availableFiles = os.listdir(Path)
    for exe in availableFiles:
        if exe[-5:len(exe)] != '.json' and exe != 'llvmout' and exe[-4: len(exe)] != '.txt':    #ignore any .txt and json and the folder llvmout
            executable = exe

    #path for the label json file for this test case,  (the static analyzer output)
    labelPath = Path+"/report.json"

    #directory where the ll files should be put
    llvmirPath = Path+"/llvmout"
    if(os.path.exists(llvmirPath)):
        shutil.rmtree(llvmirPath)
    if(not os.path.exists(labelPath)):
        print(f"\n\nCOULDNT FIND report.json in path : {labelPath}\n\n")
        continue
    os.mkdir(llvmirPath)

    #now we should go to retdecc and lift the executables into llvmirpath
    exepath = Path + '/' + executable
    nullout = os.system('python '+RetDecPath+'/retdec-decompiler.py '+ '"' + exepath + '"' + ' --stop-after bin2llvmir -o '+ '"' + Path + '/llvmout/' + executable + '"')

    #just take the ll files and ignore anything else
    dir_list = os.listdir(llvmirPath)
    llvm = ''
    for f in dir_list:
        if (f[-3: len(f)] == '.ll'):
            llvm = f

    if(llvm == ''):                     #meaning no llvm ir files, maybe retdec failed to decompile
        continue
    #print(executables)


    #directoryfiles = dict()
    #directoryfiles[llvmirPath+'/'+llvm] = llvm

    llfilepath = llvmirPath+'/'+llvm

    #print(directoryfiles)




    f = open(labelPath)
    data = json.load(f)
    new_data = data                     #it is the same as result.json, but with our modifications :)
    txtfileobj = ''                     #just for Ayman to check out something


   



    ############## read all vulnerable functions from the results.json and store them in a dictionary #################
    function_names = dict()

    flag_to_skip_safe_file = False
    if data == []:                                        #if report.json is empty
        count_of_safe_files = count_of_safe_files + 1
        new_data = dict()
        new_data['safe'] = True
        txtfileobj = 'safe'
        flag_to_skip_safe_file = True
    else:
        count_of_vulnerable_cases = count_of_vulnerable_cases + 1
        for i,d in enumerate(data):
            name = data[i]['procedure']
            function_names[name] = i
            count_of_all_vulnerabilities = count_of_all_vulnerabilities + 1


    ################################## open each ll file and search for all function names in this ll file ##############################
    output = []

    FileLL = open(llfilepath)
    content = FileLL.read()

    if(not flag_to_skip_safe_file):
        for funcname in function_names.keys():

            #defining our own regex script
            func_splitted_name = funcname
            re.sub('::','.*',func_splitted_name)
            re.sub('<.*>','.*',func_splitted_name)
            regex_script = r'define[^\n]*'+func_splitted_name+r'\([^\n]*\n(?:[^\n}]*\n)*}'


            matches = re.findall(regex_script , str(content), re.DOTALL)
            #print (f"\n\n\n\n\nFILE {iter}   :   {str(matches[0])}\n\n\n\n\n")
            if (matches != []):
                final_func_name = re.findall('(?<=@).*(?=\()', matches[0])
                new_data[function_names[funcname]]['function_name_in_binary'] = str(final_func_name)
                new_data[function_names[funcname]]['function_content_in_binary'] = str(matches[0])
                txtfileobj = txtfileobj+funcname + ' --> ' + str(matches) + '\n'

            FileLL.close()
    ############################################################################################################################################

    #just write the output files in the test case folder
    #we write 3 new files/folders
    #1) llvmout folder, containing the llvm files produced from lifting the binaries
    #2) output.json, it is the same as result.json but with our modifications and edits.
    #3) Aymoonanalyze.txt, it is just for Aymoon to check something out.      (I shall delete it soon, but just keep it plz)
    jsonobj = json.dumps(new_data)
    outfile = open(Path+"\output.json", "w")
    outfile.write(jsonobj)
    outfile.close()

    txtfile = open(Path+'\Aymoonanalysis.txt', "w")
    txtfile.write(txtfileobj)
    txtfile.close()
    f.close()

print(f"count of vulnerable test cases : {count_of_vulnerable_cases}")
print(f"Total : {count_of_all_vulnerabilities} vulnerabilities")
print(f"And Total : {count_of_safe_files} of safe files")
end_time = time.time()
print(f"\n\nthis script took {end_time-start_time} seconds to be fully executed")