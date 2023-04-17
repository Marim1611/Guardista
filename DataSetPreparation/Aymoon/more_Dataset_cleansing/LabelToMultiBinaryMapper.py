import json
import re
import os
import shutil
import time
import sys


'''
    TAKES TWO ARGUMENT ONLY, WHICH IS THE ROOT PATH TO THE DATASET CONATINING THE "OneBinary" and "MultiBinaries" FOLDERS.
    SECOND ARGUMENT IS THE PATH TO RETDEC's bin FOLDER
    run this script like this:
    python LabelToMultiBinaryMapper.py D:\classwork\dataset\sample_modified D:\classwork\Guardista\RetDec\bin
    

                                                            ------DESCRIPTION-----
    HELLO again, do you remember the multibinary dataset? it was a subset from the 3-in-1 dataset but filtered by testcases which
    produced multiple binaries, not just a single executable.

    in the report.json (the file containing the static analyzer results, in other words, labels) it was not specified which vulnerability
    was in which binary from those multiple binaries, so we needed a method to somehow match which label(vulnerability) is matched to which
    binary from the produced multiple binaries.
    which is..... this script :)

    general methodology is getting the exact function name then searching by regex for the definition of this function in each binary,
    if we found the function definition, then we can say that this vulnerable function belongs to this binary file.

    we had some small ambiguities regarding the naming convention that llvm follows but we resolved them Hamd Le Allah...
    for example consider the function "spider.crawl()" it would appear in the llvm as "1wespider5tecrawl()".
    also consider the constructor "spider::spider", it would appear in the llvm as "4iq1spider8uhspider()"
    so we had to include some slight abstraction in our regex script.

    the final ambiguity and it is not resolved yet,
    we stumbled upon some vulnerabilities and their stated function is "main", and function "main" is present in literally all binary files
    so we couldn't capture, which "main" does this exact vulnerability points to, does it point to the first binary or one of the others?

    we thought of some possible approaches but all of which will just burn us trying to reach perfectionism.
    so our last and favourite resort and decision is.... just dump those vulnerabilities, yay :D

'''



#just for some fun statistics
count_of_vulns_in_main = 0
count_of_test_cases_containing_vulns_in_main = 0
count_of_safe_files = 0
count_of_all_vulnerabilities = 0
start_time = time.time()

#path to the multibinaries dataset
rootPathToDataset = str(sys.argv[1]) + "/MultiBinaries"
rootPathToDataset = re.sub(r'\\', '/', rootPathToDataset)

#path to RetDec's bin folder
RetDecPath = str(sys.argv[2])
RetDecPath = re.sub(r'\\', '/', RetDecPath)

#list containing all files and folders
root_dir_list = os.listdir(rootPathToDataset)
#print(root_dir_list)

############################################################# MAIN LOOP :for each test case folder ######################################
for folder in root_dir_list:
    
    if(folder[-5:len(folder)] == '.json' or folder == 'llvmout'):  #just some debugging, as retdec sometimes goes batshit crazy and might throw anything anywhere
        continue


    #working path, for a single test case, which we will use in each test case iteration
    Path = rootPathToDataset + '/' + folder
    
    #those are our executables inside this test case
    executables = []
    execs = os.listdir(Path)
    for exe in execs:
        if exe[-5:len(exe)] != '.json' and exe != 'llvmout' and exe[-4: len(exe)] != '.txt':    #ignore any .txt and json and the folder llvmout
            executables.append(exe)

    #path for the label json file for this test case,  (the static analyzer output)
    labelPath = Path+"/report.json"

    #directory where the ll files should be put
    llvmirPath = Path+"/llvmout"
    if(os.path.exists(llvmirPath)):
        shutil.rmtree(llvmirPath)
    if(not os.path.exists(labelPath)):
        print(f"\n\n\n\n\n\nCOULDNT FIND report.json in path : {labelPath}\n\n")
        continue
    os.mkdir(llvmirPath)

    #now we should go to retdecc and lift the executables into llvmirpath
    for exe in executables:
        exepath = Path + '/' + exe
        nullout = os.system("python "+RetDecPath+"/retdec-decompiler.py "+ exepath + " --stop-after bin2llvmir -o "+ Path+'/llvmout/'+exe)




    #just take the ll files and ignore anything else
    dir_list = os.listdir(llvmirPath)
    llvms = []
    for f in dir_list:
        if (f[-3: len(f)] == '.ll'):
            llvms.append(f)
    #print(executables)


    directoryfiles = dict()
    for i in llvms:
        directoryfiles[llvmirPath+'/'+i] = i

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
        new_data = [dict()]
        new_data[0]['safe'] = True
        txtfileobj = 'safe'
        flag_to_skip_safe_file = True


    for i,d in enumerate(data):
        name = data[i]['procedure']
        function_names[name] = i
        count_of_all_vulnerabilities = count_of_all_vulnerabilities + 1
        if(name == 'main'):
            count_of_vulns_in_main = count_of_vulns_in_main +1

    if ('main' in function_names.keys()):
        count_of_test_cases_containing_vulns_in_main = count_of_test_cases_containing_vulns_in_main + 1
    #print(function_names)



    ################################## open each ll file and search for all function names in this ll file ##############################
    output = []

    if(not flag_to_skip_safe_file):
        for i, llfilepath in enumerate(directoryfiles.keys()):
            FileLL = open(llfilepath)
            content = FileLL.read()
            for funcname in function_names.keys():

                #defining our own regex script
                func_splitted_name = funcname
                func_splitted_name = re.sub(r'::','.*',func_splitted_name)
                func_splitted_name = re.sub(r'<.*>','.*',func_splitted_name)
                #print(func_splitted_name)
                regex_script = 'define.*'+func_splitted_name+'\(.*\{'
                regex_binary_content_script =  r'define[^\n]*'+func_splitted_name+r'\([^\n]*\n(?:[^\n}]*\n)*}'


                matches = re.findall(regex_script , str(content))
                #binary_content = re.findall(regex_binary_content_script , str(content))
                if (matches != []):
                    final_func_name = re.findall('(?<=@)(.*\))(?=.*\{)', matches[0])
                    new_data[function_names[funcname]]['function_name_in_binary'] = str(final_func_name[0])
                    
                    #we dont need this function
                    #new_data[function_names[funcname]]['function_content_in_binary'] = str(binary_content[0])
                    
                    new_data[function_names[funcname]]['whichbinary'] = directoryfiles[llfilepath]
                    txtfileobj = txtfileobj+funcname+' --> ' + directoryfiles[llfilepath] + ' --> ' + str(matches[0]) + '\n'

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



# finally, print our simple statistics
print(f"Count of Safe test cases : {count_of_safe_files}")
print(f"\nI found that there are {count_of_test_cases_containing_vulns_in_main} testcases in the **GIVEN SAMPLE OF** multibinary dataset, containing one or more vulnerabilities in 'main' \n\n")
print(f"with a total count of {count_of_vulns_in_main} vulnerabilites, out of all the {count_of_all_vulnerabilities} vulnerabilities")
end_time = time.time()
print(f"\n\nthis script took {end_time-start_time} seconds to be fully executed")