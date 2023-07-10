

'''
this scripts aims to normalize and abstract away any noise in the LLVM that can cause deviations during matching
matching noise is defined by any substring prune to frequent and customizable changes which do not affect the semantics of the subject-
string

in our case we want to normalize:
*Temp Variables
*Function names
*Function calls
*Basic Block labels
*standardize spaces
*standardize data types (as the conversion from any integers (i16,i32,i128,etc) to i64)
*integers above 64bit to a special identifier
!insn.addr !164 will be converted to !insn.addr INS


Question : Shall we convert and abstract array sizes?
example: store [260 x i64]   --->   store[SIZE x INT]

Question: what to do with those weird data types?
example: %stack_var_-262   and    %dataBuffer_-268
are those user defined data with names "stack_var" or are those predefined reserved words in LLVM that refer to a stack/buffer ?
if they were user defined, we should abstract them to maybe "USR_VAR", if not, then leave them as they are, but shall we 
abstract the number in front of them?

Question: shall we normalize all new lines? they will not affect any semantics ever!
I wanna normalize them, but it will be verrrry hard to vizualize

Question: shall we leave the predefined functions without normalizing?
I really want to leave them because functions like memcpy() is a predefined function and plays a great role in identification of vulns
'''


import re


# Just for testing
String1 = '''define void @bad() local_unnamed_addr {
dec_label_pc_408be0:
  %stack_var_-262 = alloca i32, align 4
  %dataBuffer_-268 = alloca [260 x i8], align 1
  store [260 x i8] [i8 47, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], [260 x i8]* %dataBuffer_-268, align 1, !insn.addr !161
  %0 = bitcast i32* %stack_var_-262 to i8*
  call void @memset(i8* nonnull %0, i8 0, i32 254), !insn.addr !162
  %1 = getelementptr inbounds [260 x i8], [260 x i8]* %dataBuffer_-268, i32 0, i32 0, !insn.addr !163
  %2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_46fe68, i32 0, i32 0)), !insn.addr !164
  %3 = icmp eq i8* %2, null, !insn.addr !165
  br i1 %3, label %dec_label_pc_408c7a, label %dec_label_pc_408c4a, !insn.addr !166

dec_label_pc_408c4a:                              ; preds = %dec_label_pc_408be0
  %4 = call i32 @strlen(i8* nonnull %1), !insn.addr !167
  %5 = sub i32 259, %4, !insn.addr !168
  %6 = call i8* @strncat(i8* nonnull %1, i8* nonnull %2, i32 %5), !insn.addr !169
  br label %dec_label_pc_408c7a, !insn.addr !170

dec_label_pc_408c7a:                              ; preds = %dec_label_pc_408be0, %dec_label_pc_408c4a
  %7 = call %_IO_FILE* @fopen(i8* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_46fe6c, i32 0, i32 0)), !insn.addr !171
  %8 = icmp eq %_IO_FILE* %7, null, !insn.addr !172
  br i1 %8, label %dec_label_pc_408cac, label %dec_label_pc_408c9d, !insn.addr !173

dec_label_pc_408c9d:                              ; preds = %dec_label_pc_408c7a
  %9 = ptrtoint %_IO_FILE* %7 to i32, !insn.addr !171
  %10 = call i32 @fclose(i32 %9), !insn.addr !174
  br label %dec_label_pc_408cac, !insn.addr !175

dec_label_pc_408cac:                              ; preds = %dec_label_pc_408c9d, %dec_label_pc_408c7a
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !176
  ret void, !insn.addr !177
}'''







LLVM_OPERATORS = ['sext', 'ptrtoint', 'load', 'alloca', 'trunc', 'add', 'and', 'icmp', 'store', 'br', 'sub', 'select', 'ret'\
                   ,'getelementptr', 'inbounds', 'reload', 'eq', 'inttoptr', 'align', 'strcmp', 'label', 'false', 'reg2mem', 'reload',\
                    'global_var', '_IO_FILE', 'fprintf', 'stack_var_', 'Fadd', 'fadd', 'fsub', 'mul', 'fmul', 'udiv'\
                        ,'sdiv', 'fdiv', 'or', 'xor', 'fneg', 'cmpxchg', 'fcmp', 'ne', 'ugt', 'uge', 'ult', 'ule', 'sgt', 'sge', 'slt'\
                            ,'sle', 'switch', 'indirectbr', 'invoke', 'callbr', 'resume', 'catchswitch', 'catchret', 'cleanupret',\
                                'urem', 'srem', 'frem', 'extractelement', 'extractvalue', 'insertelement', 'extractvalue', 'insertvalue', 'addrspace',\
                                    'zext', 'fptrunc', 'fpext', 'fptoui', 'fptosi', 'uitofp', 'sitofp', 'ptrtoint', 'intoptr',\
                    'memset', 'inline', 'memcpy', 'llvm', 'sadd', 'with', 'overflow', 'uadd', 'ssub', 'usub', 'smul', 'umul', 'sat', 'sshl'\
                        ,'ushl', 'set', 'loop', 'iterations', 'test', 'decrement', 'reg', 'increment', 'stack_var_-', 'dataBuffer_-'\
                          , 'x86_amx', 'x86_mmx', 'ppc_fp128', 'ptr', 'half', 'bfloat', 'float', 'fp128', 'x86_fp80']



regex_reserved = []
for i in LLVM_OPERATORS:
    regex_reserved.append('\b'+i+'\b')


def NormalizeLLVM(String1):
    '''
      Basically the main normalizer
    '''

    # Replace temp variables with TMP
    tempVariables = re.findall('%\d+', String1)
    String1 = re.sub('%\d+', "TMP", String1)
    

    #I put a special sign '$$' before Any token I want to reserve, then will convert them later to their original token
    reservedWordsReserver = re.findall('('+'|'.join(regex_reserved) + ')', String1)
    String1 = re.sub('('+'|'.join(regex_reserved) + ')', r'$$\1', String1)

    # Find function calls
    functionCalls = re.findall("(@(?<!$$)\w+\(.*\))",String1)
    String1 = re.sub("(@(?<!$$)\w+\(.*\))", "FUNC", String1)
    

    
    # Standarize Integer sizes
    bigIntegers = re.findall("i6[5-9]", String1)
    bigIntegers = bigIntegers + re.findall("i[7-9][0-9]+", String1)
    bigIntegers = bigIntegers + re.findall("i[0-9][0-9][0-9]+", String1)
    String1 = re.sub("i6[5-9]", "BIGINT", String1)
    String1 = re.sub("i[7-9][0-9]+", "BIGINT", String1)
    String1 = re.sub("i[0-9][0-9][0-9]+", "BIGINT", String1)
    

    integerTypes = re.findall("i\d+", String1)
    String1 = re.sub("i\d+", "INT", String1)
    
    # find basic block labels and standarize them
    basicBlockLabels = re.findall("(dec_label_pc\w+).*:", String1)

    BB_IDs_list = dict()
    for i in range(len(basicBlockLabels)):
        BB_IDs_list[basicBlockLabels[i]] = f"BB{i}"
        String1 = re.sub("(dec_label_pc\w+):", f"BB{i}", String1, count=1)
    basicBlockReferences = re.findall("%(dec_label_pc\w+)", String1)

    convertedBasicBlockReferences = []
    for i in basicBlockReferences:
        try:
          convertedBasicBlockReferences.append("REF_" + BB_IDs_list[i])
          #convertedBasicBlockReferences.append("REF_BB" + BB_IDs_list[i])
        except:
            convertedBasicBlockReferences.append("REF_BB")

    for i in range(len(basicBlockReferences)):
        String1 = re.sub("%dec_label_pc\w+", convertedBasicBlockReferences[i], String1, count=1)

    # find the instruction addresses mentioned explicitly
    insnAddr = re.findall("!insn.addr\s+(!\d+)", String1)
    String1 = re.sub("(?<=!insn.addr)\s+(!\d+)", " INS", String1)


    #retrieve all reserved tokens
    String1 = re.sub('$$(\w+)', r'\1', String1)

    #eliminate multiple spaces but leave new lines
    String1 = re.sub("\t| +", " ", String1)

    return String1



#DEPRECATED
'''
def TokenizeLLVM(String_After_Normalizing):
    output = ctok.tokenize(String_After_Normalizing, lang = "python", syntax_error='ignore')
    return output
'''

def tokenizeLLVM (String_After_Normalizing, EndOfLineFlag=False):
    '''
        Just a simple tokenizer that tokenizes using word boundaries :)
        it also puts an EOL token at the end of each line
        and standarizes multiple spaces and new lines
    '''
    
    if EndOfLineFlag:
      String_After_Normalizing = re.sub(r'\n', ' EOL ', String_After_Normalizing)
    else:
        String_After_Normalizing = re.sub(r'\n', ' ', String_After_Normalizing)
    StringTemp = re.sub('\s+', ' ', String_After_Normalizing)
    output = re.split(r'\b', StringTemp)
    
    final_output = []
    for tok in output:
        if tok != ' ':
            final_output.append(re.sub(' ', '', tok))
    return final_output




#CALL THIS ONLY
def Normalize_Tokenize_LLVM(llvmString, EndOfLineFlag = False):
    out1 = NormalizeLLVM(llvmString)
    out2 = tokenizeLLVM (out1, EndOfLineFlag)
    return out2




# Just for testing
# out1 = NormalizeLLVM(String2)
# out2 = tokenizeLLVM(out1, True)
# print(out2)
