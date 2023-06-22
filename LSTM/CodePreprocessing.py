import re, json

''' 
                            For matcher purposes
This function is used to extract the functions from the LLVM IR file and store them in a JSON file.
It takes both the llvm file and the name of the json file as input. 

it's imported inside the StringSimilarities.ipynb and the json file is loaded into a list of functions.

'''
def functions_preprocessing( llvm_file, json_file , writeJson=True):
    functions = dict()
    
    with open( llvm_file, 'r' ) as f:
        new_fn= 0
        fn_header= []
        fn_names= []

        for line in f:
            if re.match( r'^define.+',line ):
                fn_names.append(re.findall('(@.*)\(', line)[0]) #to be returned
                fn_header.append(line) #to be saved in json
                functions[new_fn]= ' ' 
                continue

            if re.match( r'^}$',line ):
                new_fn+=1
                continue
             
            if functions.get(new_fn) !=None:
                functions[new_fn]+=line 

    #replace all keys with the function name
    for i in range(len(functions)):
        functions[fn_header[i]]=functions.pop(i)

    if(writeJson):
        with open( json_file+'.json', 'w' ) as f:
            f.write( json.dumps( functions, indent=6, sort_keys=True ) )

    fn_body= []
    for key in functions.keys():
        fn_body.append(functions[key])

    return fn_header,fn_body

