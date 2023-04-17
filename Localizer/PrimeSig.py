import re
from collections import Counter

def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

def generate_primes(n):
    primes = []
    for i in range(2, n+1):
        if is_prime(i): 
            primes.append(i)
    return primes


Primes = generate_primes(1500)
#print(Primes)
#print(len(Primes))

LLVM_OPERATORS = ['call', 'sext', 'ptrtoint', 'load', 'alloca', 'trunc', 'add', 'and', 'icmp', 'store', 'br', 'sub', 'select', 'ret'\
                   ,'getelementptr', 'inbounds', 'reload', 'eq', 'inttoptr', 'align', 'strcmp', 'label', 'false', 'reg2mem', 'reload',\
                    'global_var', '_IO_FILE', 'fprintf', 'stack_var_', 'dec_label_pc', 'Fadd', 'fadd', 'fsub', 'mul', 'fmul', 'udiv'\
                        ,'sdiv', 'fdiv', 'or', 'xor', 'fneg', 'cmpxchg', 'fcmp', 'ne', 'ugt', 'uge', 'ult', 'ule', 'sgt', 'sge', 'slt'\
                            ,'sle', 'switch', 'indirectbr', 'invoke', 'callbr', 'resume', 'catchswitch', 'catchret', 'cleanupret',\
                                'urem', 'srem', 'frem', 'extractelement', 'extractvalue', 'insertelement', 'extractvalue', 'insertvalue', 'addrspace',\
                                    'zext', 'fptrunc', 'fpext', 'fptoui', 'fptosi', 'uitofp', 'sitofp', 'ptrtoint', 'intoptr',\
                    'memset', 'inline', 'memcpy', 'llvm', 'sadd', 'with', 'overflow', 'uadd', 'ssub', 'usub', 'smul', 'umul', 'sat', 'sshl'\
                        ,'ushl', 'set', 'loop', 'iterations', 'test', 'decrement', 'reg', 'increment']


LLVM_DATA_TYPES = ['void', 'i32', 'i16', 'i64', 'i128', 'half', 'bfloat', 'float', 'fp128', 'x86_fp80', 'ptr', 'ppc_fp128',\
                       'x86_amx', 'x86_mmx']


ALL_OPR = LLVM_OPERATORS
ALL_OPR = ALL_OPR + LLVM_DATA_TYPES

RESERVED = {ALL_OPR[i]: Primes[i] for i in range(len(ALL_OPR))}
RESERVED = dict(sorted(RESERVED.items()))

print(type(RESERVED))



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


String2 = '''define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_44::bad"() local_unnamed_addr {
dec_label_pc_408c80:
  %stack_var_-259 = alloca i32, align 4
  %dataBuffer_-268 = alloca [260 x i8], align 1
  store [260 x i8] [i8 99, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], [260 x i8]* %dataBuffer_-268, align 1, !insn.addr !167
  %0 = bitcast i32* %stack_var_-259 to i8*
  call void @memset(i8* nonnull %0, i8 0, i32 251), !insn.addr !168
  %1 = getelementptr inbounds [260 x i8], [260 x i8]* %dataBuffer_-268, i32 0, i32 0, !insn.addr !169
  %2 = call i32 @strlen(i8* nonnull %1), !insn.addr !170
  %3 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_470e70, i32 0, i32 0)), !insn.addr !171
  %4 = icmp eq i8* %3, null, !insn.addr !172
  %5 = ptrtoint [260 x i8]* %dataBuffer_-268 to i32
  br i1 %4, label %dec_label_pc_408d3e, label %dec_label_pc_408d13, !insn.addr !173

dec_label_pc_408d13:                              ; preds = %dec_label_pc_408c80
  %6 = sub i32 259, %2, !insn.addr !174
  %7 = add i32 %2, %5, !insn.addr !175
  %8 = inttoptr i32 %7 to i8*, !insn.addr !176
  %9 = call i8* @strncat(i8* %8, i8* nonnull %3, i32 %6), !insn.addr !177
  br label %dec_label_pc_408d3e, !insn.addr !178

dec_label_pc_408d3e:                              ; preds = %dec_label_pc_408d13, %dec_label_pc_408c80
  call void @__security_check_cookie(i32 %5), !insn.addr !179
  ret void, !insn.addr !180
}'''


String3 = 'define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_44::bad"() local_unnamed_addr { dec_label_pc_408c80:'

String4 = 'define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_44::bad"() local_unnamed_addr { dec_label_pc_408c80:'

String5 = '%6 = sub i32 259, %2, !insn.addr !174'
String6 = '%7 = add i32 %2, %5, !insn.addr !175'

String7 = '''define void @"CWE23_Relative_Path_Traversal__char_connect_socket_ofstream_02::bad"() local_unnamed_addr {
dec_label_pc_410c60:
  %esp.18.reg2mem = alloca i32, !insn.addr !665
  %esp.1.ph.reg2mem = alloca i32, !insn.addr !665
  %esp.0.ph.reg2mem = alloca i32, !insn.addr !665
  %service_-284 = alloca i32, align 4
  %wsaData_-684 = alloca i32, align 4
  %stack_var_-259 = alloca i32, align 4
  %dataBuffer_-268 = alloca [260 x i8], align 1
  %stack_var_-884 = alloca i32, align 4
  store [260 x i8] [i8 99, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], [260 x i8]* %dataBuffer_-268, align 1, !insn.addr !666
  %0 = bitcast i32* %stack_var_-259 to i8*
  call void @memset(i8* nonnull %0, i8 0, i32 251), !insn.addr !667
  %1 = ptrtoint i32* %stack_var_-884 to i32, !insn.addr !668
  %2 = getelementptr inbounds [260 x i8], [260 x i8]* %dataBuffer_-268, i32 0, i32 0, !insn.addr !669
  %3 = call i32 @strlen(i8* nonnull %2), !insn.addr !670
  %4 = add i32 %1, -4, !insn.addr !671
  %5 = inttoptr i32 %4 to i32*, !insn.addr !671
  %6 = ptrtoint i32* %wsaData_-684 to i32, !insn.addr !671
  store i32 %6, i32* %5, align 4, !insn.addr !671
  %7 = add i32 %1, -8, !insn.addr !672
  %8 = inttoptr i32 %7 to i32*, !insn.addr !672
  store i32 514, i32* %8, align 4, !insn.addr !672
  %9 = call i32 @WSAStartup(i16 ptrtoint (i32* @39 to i16), %WSAData* bitcast (i32* @39 to %WSAData*)), !insn.addr !673
  %10 = icmp eq i32 %9, 0, !insn.addr !674
  store i32 %7, i32* %esp.18.reg2mem, !insn.addr !675
  br i1 %10, label %dec_label_pc_410d09, label %dec_label_pc_410e72, !insn.addr !675

dec_label_pc_410d09:                              ; preds = %dec_label_pc_410c60
  %11 = add i32 %1, -12, !insn.addr !676
  %12 = inttoptr i32 %11 to i32*, !insn.addr !676
  store i32 6, i32* %12, align 4, !insn.addr !676
  %13 = add i32 %1, -16, !insn.addr !677
  %14 = inttoptr i32 %13 to i32*, !insn.addr !677
  store i32 1, i32* %14, align 4, !insn.addr !677
  %15 = add i32 %1, -20, !insn.addr !678
  %16 = inttoptr i32 %15 to i32*, !insn.addr !678
  store i32 2, i32* %16, align 4, !insn.addr !678
  %17 = call i32 @socket(i32 1, i32 ptrtoint (i32* @39 to i32), i32 ptrtoint (i32* @39 to i32)), !insn.addr !679
  %18 = icmp eq i32 %17, -1
  %19 = icmp eq i1 %18, false, !insn.addr !680
  store i32 %15, i32* %esp.1.ph.reg2mem, !insn.addr !680
  br i1 %19, label %dec_label_pc_410d33, label %dec_label_pc_410e6c, !insn.addr !680

dec_label_pc_410d33:                              ; preds = %dec_label_pc_410d09
  %20 = add i32 %1, -24, !insn.addr !681
  %21 = inttoptr i32 %20 to i32*, !insn.addr !681
  store i32 16, i32* %21, align 4, !insn.addr !681
  %22 = add i32 %1, -28, !insn.addr !682
  %23 = inttoptr i32 %22 to i32*, !insn.addr !682
  store i32 0, i32* %23, align 4, !insn.addr !682
  %24 = add i32 %1, -32, !insn.addr !683
  %25 = inttoptr i32 %24 to i32*, !insn.addr !683
  %26 = ptrtoint i32* %service_-284 to i32, !insn.addr !683
  store i32 %26, i32* %25, align 4, !insn.addr !683
  %27 = inttoptr i32 %17 to i8*, !insn.addr !684
  call void @memset(i8* %27, i8 ptrtoint (i32* @39 to i8), i32 ptrtoint (i32* @39 to i32)), !insn.addr !684
  store i32 2, i32* %service_-284, align 4, !insn.addr !685
  store i32 ptrtoint ([10 x i8]* @global_var_4af19c to i32), i32* %21, align 4, !insn.addr !686
  %28 = load i32, i32* %service_-284, align 4, !insn.addr !687
  %29 = inttoptr i32 %28 to i8*, !insn.addr !687
  %30 = call i32 @inet_addr(i8* %29), !insn.addr !687
  store i32 27015, i32* %23, align 4, !insn.addr !688
  %31 = trunc i32 %30 to i16, !insn.addr !689
  %32 = call i16 @htons(i16 %31), !insn.addr !689
  store i32 16, i32* %25, align 4, !insn.addr !690
  %33 = add i32 %1, -36, !insn.addr !691
  %34 = inttoptr i32 %33 to i32*, !insn.addr !691
  store i32 %26, i32* %34, align 4, !insn.addr !691
  %35 = add i32 %1, -40, !insn.addr !692
  %36 = inttoptr i32 %35 to i32*, !insn.addr !692
  store i32 %17, i32* %36, align 4, !insn.addr !692
  %37 = sext i16 %32 to i32, !insn.addr !693
  %38 = call i32 @connect(i32 %37, %sockaddr* bitcast (i32* @39 to %sockaddr*), i32 ptrtoint (i32* @39 to i32)), !insn.addr !693
  %39 = icmp eq i32 %38, -1, !insn.addr !694
  %40 = icmp eq i1 %39, false, !insn.addr !695
  store i32 %35, i32* %esp.0.ph.reg2mem, !insn.addr !695
  br i1 %40, label %dec_label_pc_410d95, label %dec_label_pc_410e56, !insn.addr !695

dec_label_pc_410d95:                              ; preds = %dec_label_pc_410d33
  %41 = add i32 %1, -44, !insn.addr !696
  %42 = inttoptr i32 %41 to i32*, !insn.addr !696
  store i32 0, i32* %42, align 4, !insn.addr !696
  %43 = sub i32 259, %3, !insn.addr !697
  %44 = add i32 %1, -48, !insn.addr !698
  %45 = inttoptr i32 %44 to i32*, !insn.addr !698
  store i32 %43, i32* %45, align 4, !insn.addr !698
  %46 = ptrtoint [260 x i8]* %dataBuffer_-268 to i32, !insn.addr !699
  %47 = add i32 %3, %46
  %48 = add i32 %1, -52, !insn.addr !700
  %49 = inttoptr i32 %48 to i32*, !insn.addr !700
  store i32 %47, i32* %49, align 4, !insn.addr !700
  %50 = add i32 %1, -56, !insn.addr !701
  %51 = inttoptr i32 %50 to i32*, !insn.addr !701
  store i32 %17, i32* %51, align 4, !insn.addr !701
  %52 = call i32 @recv(i32 ptrtoint (i32* @39 to i32), i8* bitcast (i32* @39 to i8*), i32 ptrtoint (i32* @39 to i32), i32 ptrtoint (i32* @39 to i32)), !insn.addr !702
  %53 = icmp ne i32 %52, -1, !insn.addr !703
  %54 = icmp eq i32 %52, 0, !insn.addr !704
  %55 = icmp eq i1 %54, false, !insn.addr !705
  %or.cond = icmp eq i1 %53, %55
  store i32 %50, i32* %esp.0.ph.reg2mem, !insn.addr !706
  br i1 %or.cond, label %dec_label_pc_410dda, label %dec_label_pc_410e56, !insn.addr !706

dec_label_pc_410dda:                              ; preds = %dec_label_pc_410d95
  %56 = add i32 %47, %52, !insn.addr !707
  %57 = inttoptr i32 %56 to i8*, !insn.addr !707
  store i8 0, i8* %57, align 1, !insn.addr !707
  %58 = add i32 %1, -60, !insn.addr !708
  %59 = inttoptr i32 %58 to i32*, !insn.addr !708
  store i32 13, i32* %59, align 4, !insn.addr !708
  %60 = add i32 %1, -64, !insn.addr !709
  %61 = inttoptr i32 %60 to i32*, !insn.addr !709
  store i32 %46, i32* %61, align 4, !insn.addr !709
  %62 = call i32 @function_404435(i32 %52), !insn.addr !710
  %63 = icmp eq i32 %62, 0, !insn.addr !711
  br i1 %63, label %dec_label_pc_410e1c, label %dec_label_pc_410e13, !insn.addr !712

dec_label_pc_410e13:                              ; preds = %dec_label_pc_410dda
  %64 = inttoptr i32 %62 to i8*, !insn.addr !713
  store i8 0, i8* %64, align 1, !insn.addr !714
  br label %dec_label_pc_410e1c, !insn.addr !714

dec_label_pc_410e1c:                              ; preds = %dec_label_pc_410e13, %dec_label_pc_410dda
  store i32 10, i32* %59, align 4, !insn.addr !715
  store i32 %46, i32* %61, align 4, !insn.addr !716
  %65 = call i32 @function_404435(i32 %62), !insn.addr !717
  %66 = icmp eq i32 %65, 0, !insn.addr !718
  store i32 %50, i32* %esp.0.ph.reg2mem, !insn.addr !719
  br i1 %66, label %dec_label_pc_410e56, label %dec_label_pc_410e3c, !insn.addr !719

dec_label_pc_410e3c:                              ; preds = %dec_label_pc_410e1c
  %67 = inttoptr i32 %65 to i8*, !insn.addr !720
  store i8 0, i8* %67, align 1, !insn.addr !721
  store i32 %50, i32* %esp.0.ph.reg2mem, !insn.addr !721
  br label %dec_label_pc_410e56, !insn.addr !721

dec_label_pc_410e56:                              ; preds = %dec_label_pc_410d95, %dec_label_pc_410e1c, %dec_label_pc_410e3c, %dec_label_pc_410d33
  %esp.0.ph.reload = load i32, i32* %esp.0.ph.reg2mem
  %68 = add i32 %esp.0.ph.reload, -4, !insn.addr !722
  %69 = inttoptr i32 %68 to i32*, !insn.addr !722
  store i32 %17, i32* %69, align 4, !insn.addr !722
  %70 = call i32 @closesocket(i32 ptrtoint (i32* @39 to i32)), !insn.addr !723
  store i32 %68, i32* %esp.1.ph.reg2mem, !insn.addr !723
  br label %dec_label_pc_410e6c, !insn.addr !723

dec_label_pc_410e6c:                              ; preds = %dec_label_pc_410d09, %dec_label_pc_410e56
  %esp.1.ph.reload = load i32, i32* %esp.1.ph.reg2mem
  %71 = call i32 @WSACleanup(), !insn.addr !724
  store i32 %esp.1.ph.reload, i32* %esp.18.reg2mem, !insn.addr !724
  br label %dec_label_pc_410e72, !insn.addr !724

dec_label_pc_410e72:                              ; preds = %dec_label_pc_410c60, %dec_label_pc_410e6c
  %esp.18.reload = load i32, i32* %esp.18.reg2mem
  %72 = add i32 %esp.18.reload, -4, !insn.addr !725
  %73 = inttoptr i32 %72 to i32*, !insn.addr !725
  store i32 1, i32* %73, align 4, !insn.addr !725
  %74 = call i32 @function_401a3c(i8* nonnull %2), !insn.addr !726
  %75 = add i32 %esp.18.reload, -8, !insn.addr !727
  %76 = inttoptr i32 %75 to i32*, !insn.addr !727
  store i32 64, i32* %76, align 4, !insn.addr !727
  %77 = add i32 %esp.18.reload, -12, !insn.addr !728
  %78 = inttoptr i32 %77 to i32*, !insn.addr !728
  store i32 2, i32* %78, align 4, !insn.addr !728
  %79 = ptrtoint [260 x i8]* %dataBuffer_-268 to i32, !insn.addr !729
  %80 = add i32 %esp.18.reload, -16, !insn.addr !730
  %81 = inttoptr i32 %80 to i32*, !insn.addr !730
  store i32 %79, i32* %81, align 4, !insn.addr !730
  %82 = call i32 @function_40669a(), !insn.addr !731
  %83 = call i32 @function_402a27(), !insn.addr !732
  %84 = call i32 @function_4013a2(), !insn.addr !733
  call void @__security_check_cookie(i32 ptrtoint (i32* @39 to i32)), !insn.addr !734
  ret void, !insn.addr !735
}
'''
String8 = '''define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_44::bad"() local_unnamed_addr {
dec_label_pc_408c80:
  %stack_var_-259 = alloca i32, align 4
  %dataBuffer_-268 = alloca [260 x i8], align 1
  store [260 x i8] [i8 99, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], [260 x i8]* %dataBuffer_-268, align 1, !insn.addr !167
  %0 = bitcast i32* %stack_var_-259 to i8*
  call void @memset(i8* nonnull %0, i8 0, i32 251), !insn.addr !168
  %1 = getelementptr inbounds [260 x i8], [260 x i8]* %dataBuffer_-268, i32 0, i32 0, !insn.addr !169
  %2 = call i32 @strlen(i8* nonnull %1), !insn.addr !170
  %3 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_470e70, i32 0, i32 0)), !insn.addr !171
  %4 = icmp eq i8* %3, null, !insn.addr !172
  %5 = ptrtoint [260 x i8]* %dataBuffer_-268 to i32
  br i1 %4, label %dec_label_pc_408d3e, label %dec_label_pc_408d13, !insn.addr !173

dec_label_pc_408d13:                              ; preds = %dec_label_pc_408c80
  %6 = sub i32 259, %2, !insn.addr !174
  %7 = add i32 %2, %5, !insn.addr !175
  %8 = inttoptr i32 %7 to i8*, !insn.addr !176
  %9 = call i8* @strncat(i8* %8, i8* nonnull %3, i32 %6), !insn.addr !177
  br label %dec_label_pc_408d3e, !insn.addr !178

dec_label_pc_408d3e:                              ; preds = %dec_label_pc_408d13, %dec_label_pc_408c80
  call void @__security_check_cookie(i32 %5), !insn.addr !179
  ret void, !insn.addr !180
}
'''

String_Same_subFamily = '''define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_18::bad"() local_unnamed_addr {
dec_label_pc_408c40:
  %stack_var_-259 = alloca i32, align 4
  %dataBuffer_-268 = alloca [260 x i8], align 1
  store [260 x i8] [i8 99, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], [260 x i8]* %dataBuffer_-268, align 1, !insn.addr !170
  %0 = bitcast i32* %stack_var_-259 to i8*
  call void @memset(i8* nonnull %0, i8 0, i32 251), !insn.addr !171
  %1 = getelementptr inbounds [260 x i8], [260 x i8]* %dataBuffer_-268, i32 0, i32 0, !insn.addr !172
  %2 = call i32 @strlen(i8* nonnull %1), !insn.addr !173
  %3 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_470e6c, i32 0, i32 0)), !insn.addr !174
  %4 = icmp eq i8* %3, null, !insn.addr !175
  br i1 %4, label %dec_label_pc_408cf4, label %dec_label_pc_408cc9, !insn.addr !176

dec_label_pc_408cc9:                              ; preds = %dec_label_pc_408c40
  %5 = ptrtoint [260 x i8]* %dataBuffer_-268 to i32
  %6 = sub i32 259, %2, !insn.addr !177
  %7 = add i32 %2, %5, !insn.addr !178
  %8 = inttoptr i32 %7 to i8*, !insn.addr !179
  %9 = call i8* @strncat(i8* %8, i8* nonnull %3, i32 %6), !insn.addr !180
  br label %dec_label_pc_408cf4, !insn.addr !181

dec_label_pc_408cf4:                              ; preds = %dec_label_pc_408cc9, %dec_label_pc_408c40
  %10 = call %_IO_FILE* @fopen(i8* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_470e70, i32 0, i32 0)), !insn.addr !182
  %11 = icmp eq %_IO_FILE* %10, null, !insn.addr !183
  br i1 %11, label %dec_label_pc_408d30, label %dec_label_pc_408d21, !insn.addr !184

dec_label_pc_408d21:                              ; preds = %dec_label_pc_408cf4
  %12 = ptrtoint %_IO_FILE* %10 to i32, !insn.addr !185
  %13 = call i32 @fclose(i32 %12), !insn.addr !185
  br label %dec_label_pc_408d30, !insn.addr !186

dec_label_pc_408d30:                              ; preds = %dec_label_pc_408d21, %dec_label_pc_408cf4
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !187
  ret void, !insn.addr !188
}
'''

String_Same_subFamily2 = '''define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_41::bad"() local_unnamed_addr {
dec_label_pc_408c90:
  %stack_var_-259 = alloca i32, align 4
  %dataBuffer_-268 = alloca [260 x i8], align 1
  store [260 x i8] [i8 99, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], [260 x i8]* %dataBuffer_-268, align 1, !insn.addr !178
  %0 = bitcast i32* %stack_var_-259 to i8*
  call void @memset(i8* nonnull %0, i8 0, i32 251), !insn.addr !179
  %1 = getelementptr inbounds [260 x i8], [260 x i8]* %dataBuffer_-268, i32 0, i32 0, !insn.addr !180
  %2 = call i32 @strlen(i8* nonnull %1), !insn.addr !181
  %3 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @global_var_470e70, i32 0, i32 0)), !insn.addr !182
  %4 = icmp eq i8* %3, null, !insn.addr !183
  %5 = ptrtoint [260 x i8]* %dataBuffer_-268 to i32
  br i1 %4, label %dec_label_pc_408d44, label %dec_label_pc_408d19, !insn.addr !184

dec_label_pc_408d19:                              ; preds = %dec_label_pc_408c90
  %6 = sub i32 259, %2, !insn.addr !185
  %7 = add i32 %2, %5, !insn.addr !186
  %8 = inttoptr i32 %7 to i8*, !insn.addr !187
  %9 = call i8* @strncat(i8* %8, i8* nonnull %3, i32 %6), !insn.addr !188
  br label %dec_label_pc_408d44, !insn.addr !189

dec_label_pc_408d44:                              ; preds = %dec_label_pc_408d19, %dec_label_pc_408c90
  %10 = call i32 @function_403323(i32 %5), !insn.addr !190
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !191
  ret void, !insn.addr !192
}
'''



def CountEdges(functionString):
    branch_regex = 'br(.*),'
    emptList = []
    lineMatched = re.findall(branch_regex, functionString)
    for line in lineMatched:
        emptList = emptList + re.split(',', line)
    print(emptList)
    return len(emptList)



def CalculatePrimeSignature(functionString, RESERVED_Dict, RESERVED_List):
    #####this section just does some regex on a given string, the result is always the same
    all_matches = []
    for res in RESERVED_List:
        matches = re.findall(res, functionString)
        if(matches):
            all_matches = all_matches + matches
    ####################################################################################


    #this is to calculate a histogram of the matches <name, frequency> then store it in a dictionary
    #then sort the dictionary by keys (the sorted() function casts to a tuple)
    #then finalizing by casting it back to dictionary
    my_list = all_matches
    histogram = dict(sorted(dict(Counter(my_list)).items()))

    #this print always prints the same histogram
    print(f"\n\n\n{histogram}\n")

    #this loop just multiplies a fixed number(which is RESERVED_Dict[k]) raised to the frequency of the item in histogram
    #like an accumulator, but using multiplication
    PrimeSignature = 1
    for k,v in histogram.items():
        PrimeSignature = PrimeSignature * (RESERVED_Dict[k] ^ v)
        if (len(str(PrimeSignature)) > 30):
            print(PrimeSignature)

    print(f"String's Prime Signature: {PrimeSignature}")
    #THIS RETURNED INTEGER IS DIFFERENT FOR EACH RUN !!!!
    return PrimeSignature




def prime_factors(n):
    i = 2
    factors = set()
    while i * i <= n:
        if n % i:
            i += 1
        else:
            n //= i
            factors.add(i)
    if n > 1:
        factors.add(n)
    return factors

def JaccardPrimeSignature(x, y):
    x_prime_factors = prime_factors(x)
    y_prime_factors = prime_factors(y)
    intersection = x_prime_factors.intersection(y_prime_factors)
    union = x_prime_factors.union(y_prime_factors)
    return len(intersection) / len(union)




#P1 = CalculatePrimeSignature(String8, RESERVED, ALL_OPR)
P2 = CalculatePrimeSignature(String_Same_subFamily2, RESERVED, ALL_OPR)


Result = JaccardPrimeSignature(P1, P2)

print(Result)





'''


'''