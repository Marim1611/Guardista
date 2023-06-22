from LLNormalizer import*
from Winnowing import *
from tqdm import tqdm

String1 ='''define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_44::bad"() local_unnamed_addr {
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

String2 ='''define void @bad() local_unnamed_addr {
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

String3 = '''define void @CWE90_LDAP_Injection__w32_char_connect_socket_03_bad() local_unnamed_addr {
dec_label_pc_4089a0:
  %.pre-phi29.reg2mem = alloca i32*, !insn.addr !171
  %esp.5.reg2mem = alloca i32, !insn.addr !171
  %esp.3.reg2mem = alloca i32, !insn.addr !171
  %.pre-phi17.reg2mem = alloca i32, !insn.addr !171
  %.pre-phi19.reg2mem = alloca i32*, !insn.addr !171
  %.pre-phi23.reg2mem = alloca i32*, !insn.addr !171
  %esp.2.reg2mem = alloca i32, !insn.addr !171
  %.pre-phi.reg2mem = alloca i32, !insn.addr !171
  %.pre-phi11.reg2mem = alloca i32*, !insn.addr !171
  %.pre-phi15.reg2mem = alloca i32*, !insn.addr !171
  %.pre-phi25.reg2mem = alloca i32, !insn.addr !171
  %esp.19.reg2mem = alloca i32, !insn.addr !171
  %esp.1.ph.reg2mem = alloca i32, !insn.addr !171
  %esp.0.ph.reg2mem = alloca i32, !insn.addr !171
  %filter_-520 = alloca [256 x i8], align 1
  %pMessage_-952 = alloca i32*, align 4
  %service_-536 = alloca i32, align 4
  %wsaData_-936 = alloca i32, align 4
  %stack_var_-263 = alloca i32, align 4
  %dataBuffer_-264 = alloca [256 x i8], align 1
  %stack_var_-976 = alloca i8*, align 4
  %0 = load i8, i8* @global_var_47a077, align 1, !insn.addr !172
  %1 = insertvalue [256 x i8] undef, i8 %0, 0, !insn.addr !173
  store [256 x i8] %1, [256 x i8]* %dataBuffer_-264, align 1, !insn.addr !173
  %2 = bitcast i32* %stack_var_-263 to i8*
  call void @memset(i8* nonnull %2, i8 0, i32 255), !insn.addr !174
  %3 = ptrtoint i8** %stack_var_-976 to i32, !insn.addr !175
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %dataBuffer_-264, i32 0, i32 0, !insn.addr !176
  %5 = call i32 @strlen(i8* nonnull %4), !insn.addr !177
  %6 = add i32 %3, -4, !insn.addr !178
  %7 = inttoptr i32 %6 to i32*, !insn.addr !178
  %8 = ptrtoint i32* %wsaData_-936 to i32, !insn.addr !178
  store i32 %8, i32* %7, align 4, !insn.addr !178
  %9 = add i32 %3, -8, !insn.addr !179
  %10 = inttoptr i32 %9 to i32*, !insn.addr !179
  store i32 514, i32* %10, align 4, !insn.addr !179
  %11 = call i32 @WSAStartup(i16 ptrtoint (i32* @71 to i16), %WSAData* bitcast (i32* @71 to %WSAData*)), !insn.addr !180
  %12 = icmp eq i32 %11, 0, !insn.addr !181
  store i32 %9, i32* %esp.19.reg2mem, !insn.addr !182
  br i1 %12, label %dec_label_pc_408a31, label %dec_label_pc_408b9a, !insn.addr !182

dec_label_pc_408a31:                              ; preds = %dec_label_pc_4089a0
  %13 = add i32 %3, -12, !insn.addr !183
  %14 = inttoptr i32 %13 to i32*, !insn.addr !183
  store i32 6, i32* %14, align 4, !insn.addr !183
  %15 = add i32 %3, -16, !insn.addr !184
  %16 = inttoptr i32 %15 to i32*, !insn.addr !184
  store i32 1, i32* %16, align 4, !insn.addr !184
  %17 = add i32 %3, -20, !insn.addr !185
  %18 = inttoptr i32 %17 to i32*, !insn.addr !185
  store i32 2, i32* %18, align 4, !insn.addr !185
  %19 = call i32 @socket(i32 1, i32 ptrtoint (i32* @71 to i32), i32 ptrtoint (i32* @71 to i32)), !insn.addr !186
  %20 = icmp eq i32 %19, -1
  %21 = icmp eq i1 %20, false, !insn.addr !187
  store i32 %17, i32* %esp.1.ph.reg2mem, !insn.addr !187
  br i1 %21, label %dec_label_pc_408a5b, label %dec_label_pc_408b94, !insn.addr !187

dec_label_pc_408a5b:                              ; preds = %dec_label_pc_408a31
  %22 = add i32 %3, -24, !insn.addr !188
  %23 = inttoptr i32 %22 to i32*, !insn.addr !188
  store i32 16, i32* %23, align 4, !insn.addr !188
  %24 = add i32 %3, -28, !insn.addr !189
  %25 = inttoptr i32 %24 to i32*, !insn.addr !189
  store i32 0, i32* %25, align 4, !insn.addr !189
  %26 = add i32 %3, -32, !insn.addr !190
  %27 = inttoptr i32 %26 to i32*, !insn.addr !190
  %28 = ptrtoint i32* %service_-536 to i32, !insn.addr !190
  store i32 %28, i32* %27, align 4, !insn.addr !190
  %29 = inttoptr i32 %19 to i8*, !insn.addr !191
  call void @memset(i8* %29, i8 ptrtoint (i32* @71 to i8), i32 ptrtoint (i32* @71 to i32)), !insn.addr !191
  store i32 2, i32* %service_-536, align 4, !insn.addr !192
  store i32 ptrtoint ([10 x i8]* @global_var_4790a0 to i32), i32* %23, align 4, !insn.addr !193
  %30 = load i32, i32* %service_-536, align 4, !insn.addr !194
  %31 = inttoptr i32 %30 to i8*, !insn.addr !194
  %32 = call i32 @inet_addr(i8* %31), !insn.addr !194
  store i32 27015, i32* %25, align 4, !insn.addr !195
  %33 = trunc i32 %32 to i16, !insn.addr !196
  %34 = call i16 @htons(i16 %33), !insn.addr !196
  store i32 16, i32* %27, align 4, !insn.addr !197
  %35 = add i32 %3, -36, !insn.addr !198
  %36 = inttoptr i32 %35 to i32*, !insn.addr !198
  store i32 %28, i32* %36, align 4, !insn.addr !198
  %37 = add i32 %3, -40, !insn.addr !199
  %38 = inttoptr i32 %37 to i32*, !insn.addr !199
  store i32 %19, i32* %38, align 4, !insn.addr !199
  %39 = sext i16 %34 to i32, !insn.addr !200
  %40 = call i32 @connect(i32 %39, %sockaddr* bitcast (i32* @71 to %sockaddr*), i32 ptrtoint (i32* @71 to i32)), !insn.addr !200
  %41 = icmp eq i32 %40, -1, !insn.addr !201
  %42 = icmp eq i1 %41, false, !insn.addr !202
  store i32 %37, i32* %esp.0.ph.reg2mem, !insn.addr !202
  br i1 %42, label %dec_label_pc_408abd, label %dec_label_pc_408b7e, !insn.addr !202

dec_label_pc_408abd:                              ; preds = %dec_label_pc_408a5b
  %43 = add i32 %3, -44, !insn.addr !203
  %44 = inttoptr i32 %43 to i32*, !insn.addr !203
  store i32 0, i32* %44, align 4, !insn.addr !203
  %45 = sub i32 255, %5, !insn.addr !204
  %46 = add i32 %3, -48, !insn.addr !205
  %47 = inttoptr i32 %46 to i32*, !insn.addr !205
  store i32 %45, i32* %47, align 4, !insn.addr !205
  %48 = ptrtoint [256 x i8]* %dataBuffer_-264 to i32, !insn.addr !206
  %49 = add i32 %5, %48
  %50 = add i32 %3, -52, !insn.addr !207
  %51 = inttoptr i32 %50 to i32*, !insn.addr !207
  store i32 %49, i32* %51, align 4, !insn.addr !207
  %52 = add i32 %3, -56, !insn.addr !208
  %53 = inttoptr i32 %52 to i32*, !insn.addr !208
  store i32 %19, i32* %53, align 4, !insn.addr !208
  %54 = call i32 @recv(i32 ptrtoint (i32* @71 to i32), i8* bitcast (i32* @71 to i8*), i32 ptrtoint (i32* @71 to i32), i32 ptrtoint (i32* @71 to i32)), !insn.addr !209
  %55 = icmp ne i32 %54, -1, !insn.addr !210
  %56 = icmp eq i32 %54, 0, !insn.addr !211
  %57 = icmp eq i1 %56, false, !insn.addr !212
  %or.cond = icmp eq i1 %55, %57
  store i32 %52, i32* %esp.0.ph.reg2mem, !insn.addr !213
  br i1 %or.cond, label %dec_label_pc_408b02, label %dec_label_pc_408b7e, !insn.addr !213

dec_label_pc_408b02:                              ; preds = %dec_label_pc_408abd
  %58 = add i32 %49, %54, !insn.addr !214
  %59 = inttoptr i32 %58 to i8*, !insn.addr !214
  store i8 0, i8* %59, align 1, !insn.addr !214
  %60 = add i32 %3, -60, !insn.addr !215
  %61 = inttoptr i32 %60 to i32*, !insn.addr !215
  store i32 13, i32* %61, align 4, !insn.addr !215
  %62 = add i32 %3, -64, !insn.addr !216
  %63 = inttoptr i32 %62 to i32*, !insn.addr !216
  store i32 %48, i32* %63, align 4, !insn.addr !216
  %64 = call i32 @function_401947(), !insn.addr !217
  %65 = icmp eq i32 %64, 0, !insn.addr !218
  br i1 %65, label %dec_label_pc_408b44, label %dec_label_pc_408b3b, !insn.addr !219

dec_label_pc_408b3b:                              ; preds = %dec_label_pc_408b02
  %66 = inttoptr i32 %64 to i8*, !insn.addr !220
  store i8 0, i8* %66, align 1, !insn.addr !221
  br label %dec_label_pc_408b44, !insn.addr !221

dec_label_pc_408b44:                              ; preds = %dec_label_pc_408b3b, %dec_label_pc_408b02
  store i32 10, i32* %61, align 4, !insn.addr !222
  store i32 %48, i32* %63, align 4, !insn.addr !223
  %67 = call i32 @function_401947(), !insn.addr !224
  %68 = icmp eq i32 %67, 0, !insn.addr !225
  store i32 %52, i32* %esp.0.ph.reg2mem, !insn.addr !226
  br i1 %68, label %dec_label_pc_408b7e, label %dec_label_pc_408b64, !insn.addr !226

dec_label_pc_408b64:                              ; preds = %dec_label_pc_408b44
  %69 = inttoptr i32 %67 to i8*, !insn.addr !227
  store i8 0, i8* %69, align 1, !insn.addr !228
  store i32 %52, i32* %esp.0.ph.reg2mem, !insn.addr !228
  br label %dec_label_pc_408b7e, !insn.addr !228

dec_label_pc_408b7e:                              ; preds = %dec_label_pc_408abd, %dec_label_pc_408b44, %dec_label_pc_408b64, %dec_label_pc_408a5b
  %esp.0.ph.reload = load i32, i32* %esp.0.ph.reg2mem
  %70 = add i32 %esp.0.ph.reload, -4, !insn.addr !229
  %71 = inttoptr i32 %70 to i32*, !insn.addr !229
  store i32 %19, i32* %71, align 4, !insn.addr !229
  %72 = call i32 @closesocket(i32 ptrtoint (i32* @71 to i32)), !insn.addr !230
  store i32 %70, i32* %esp.1.ph.reg2mem, !insn.addr !230
  br label %dec_label_pc_408b94, !insn.addr !230

dec_label_pc_408b94:                              ; preds = %dec_label_pc_408a31, %dec_label_pc_408b7e
  %esp.1.ph.reload = load i32, i32* %esp.1.ph.reg2mem
  %73 = call i32 @WSACleanup(), !insn.addr !231
  store i32 %esp.1.ph.reload, i32* %esp.19.reg2mem, !insn.addr !231
  br label %dec_label_pc_408b9a, !insn.addr !231

dec_label_pc_408b9a:                              ; preds = %dec_label_pc_4089a0, %dec_label_pc_408b94
  %esp.19.reload = load i32, i32* %esp.19.reg2mem
  store i8* null, i8** %stack_var_-976, align 4, !insn.addr !232
  store i32* null, i32** %pMessage_-952, align 4, !insn.addr !233
  %74 = ptrtoint [256 x i8]* %dataBuffer_-264 to i32, !insn.addr !234
  %75 = add i32 %esp.19.reload, -4
  %76 = inttoptr i32 %75 to i32*
  store i32 %74, i32* %76, align 4, !insn.addr !235
  %77 = add i32 %esp.19.reload, -8
  %78 = inttoptr i32 %77 to i32*
  store i32 ptrtoint ([8 x i8]* @global_var_4790ac to i32), i32* %78, align 4, !insn.addr !236
  %79 = add i32 %esp.19.reload, -12, !insn.addr !237
  %80 = inttoptr i32 %79 to i32*, !insn.addr !237
  store i32 255, i32* %80, align 4, !insn.addr !237
  %81 = add i32 %esp.19.reload, -16, !insn.addr !238
  %82 = inttoptr i32 %81 to i32*, !insn.addr !238
  %83 = ptrtoint [256 x i8]* %filter_-520 to i32, !insn.addr !238
  store i32 %83, i32* %82, align 4, !insn.addr !238
  %84 = load i8*, i8** %stack_var_-976, align 4, !insn.addr !239
  %85 = call i32 (i8*, i32, i8*, ...) @_snprintf(i8* %84, i32 0, i8* bitcast (i32* @71 to i8*)), !insn.addr !239
  store i32 389, i32* %76, align 4, !insn.addr !240
  store i32 ptrtoint ([10 x i8]* @global_var_4790b4 to i32), i32* %78, align 4, !insn.addr !241
  %86 = call %ldap* @ldap_initA(i8* bitcast (i32* @71 to i8*), i32 ptrtoint (i32* @71 to i32)), !insn.addr !242
  %87 = icmp eq %ldap* %86, null, !insn.addr !243
  %88 = icmp eq i1 %87, false, !insn.addr !244
  br i1 %88, label %dec_label_pc_408b9a.dec_label_pc_408c18_crit_edge, label %dec_label_pc_408c04, !insn.addr !244

dec_label_pc_408b9a.dec_label_pc_408c18_crit_edge: ; preds = %dec_label_pc_408b9a
  %.pre24 = ptrtoint %ldap* %86 to i32, !insn.addr !245
  store i32 %.pre24, i32* %.pre-phi25.reg2mem
  store i32* %78, i32** %.pre-phi15.reg2mem
  store i32* %76, i32** %.pre-phi11.reg2mem
  store i32 %75, i32* %.pre-phi.reg2mem
  store i32 %esp.19.reload, i32* %esp.2.reg2mem
  br label %dec_label_pc_408c18

dec_label_pc_408c04:                              ; preds = %dec_label_pc_408b9a
  store i32 ptrtoint ([22 x i8]* @global_var_4790c0 to i32), i32* %76, align 4, !insn.addr !246
  %89 = ptrtoint %ldap* %86 to i32
  %90 = call i32 @function_403cd8(i32 %89), !insn.addr !247
  store i32 1, i32* %76, align 4, !insn.addr !248
  call void @exit(i32 ptrtoint (i32* @71 to i32)), !insn.addr !249
  store i32 %89, i32* %.pre-phi25.reg2mem, !insn.addr !249
  store i32* %80, i32** %.pre-phi15.reg2mem, !insn.addr !249
  store i32* %78, i32** %.pre-phi11.reg2mem, !insn.addr !249
  store i32 %77, i32* %.pre-phi.reg2mem, !insn.addr !249
  store i32 %75, i32* %esp.2.reg2mem, !insn.addr !249
  br label %dec_label_pc_408c18, !insn.addr !249

dec_label_pc_408c18:                              ; preds = %dec_label_pc_408b9a.dec_label_pc_408c18_crit_edge, %dec_label_pc_408c04
  %esp.2.reload = load i32, i32* %esp.2.reg2mem
  %.pre-phi.reload = load i32, i32* %.pre-phi.reg2mem
  %.pre-phi11.reload = load i32*, i32** %.pre-phi11.reg2mem
  %.pre-phi15.reload = load i32*, i32** %.pre-phi15.reg2mem
  %.pre-phi25.reload = load i32, i32* %.pre-phi25.reg2mem
  store i32 0, i32* %.pre-phi11.reload, align 4, !insn.addr !250
  store i32 %.pre-phi25.reload, i32* %.pre-phi15.reload, align 4, !insn.addr !251
  %91 = call i32 @ldap_connect(%ldap* bitcast (i32* @71 to %ldap*), %l_timeval* bitcast (i32* @71 to %l_timeval*)), !insn.addr !252
  %92 = icmp eq i32 %91, 0, !insn.addr !253
  store i32* %.pre-phi15.reload, i32** %.pre-phi23.reg2mem, !insn.addr !254
  store i32* %.pre-phi11.reload, i32** %.pre-phi19.reg2mem, !insn.addr !254
  store i32 %.pre-phi.reload, i32* %.pre-phi17.reg2mem, !insn.addr !254
  store i32 %esp.2.reload, i32* %esp.3.reg2mem, !insn.addr !254
  br i1 %92, label %dec_label_pc_408c4d, label %dec_label_pc_408c39, !insn.addr !254

dec_label_pc_408c39:                              ; preds = %dec_label_pc_408c18
  store i32 ptrtoint ([18 x i8]* @global_var_4790d8 to i32), i32* %.pre-phi11.reload, align 4, !insn.addr !255
  %93 = call i32 @function_403cd8(i32 %91), !insn.addr !256
  store i32 1, i32* %.pre-phi11.reload, align 4, !insn.addr !257
  call void @exit(i32 ptrtoint (i32* @71 to i32)), !insn.addr !258
  %.pre16 = add i32 %.pre-phi.reload, -4, !insn.addr !259
  %.pre18 = inttoptr i32 %.pre16 to i32*, !insn.addr !259
  %.pre20 = add i32 %.pre-phi.reload, -8, !insn.addr !260
  %.pre22 = inttoptr i32 %.pre20 to i32*, !insn.addr !260
  store i32* %.pre22, i32** %.pre-phi23.reg2mem, !insn.addr !258
  store i32* %.pre18, i32** %.pre-phi19.reg2mem, !insn.addr !258
  store i32 %.pre16, i32* %.pre-phi17.reg2mem, !insn.addr !258
  store i32 %.pre-phi.reload, i32* %esp.3.reg2mem, !insn.addr !258
  br label %dec_label_pc_408c4d, !insn.addr !258

dec_label_pc_408c4d:                              ; preds = %dec_label_pc_408c39, %dec_label_pc_408c18
  %esp.3.reload = load i32, i32* %esp.3.reg2mem
  %.pre-phi17.reload = load i32, i32* %.pre-phi17.reg2mem
  %.pre-phi19.reload = load i32*, i32** %.pre-phi19.reg2mem
  %.pre-phi23.reload = load i32*, i32** %.pre-phi23.reg2mem
  %94 = ptrtoint i32** %pMessage_-952 to i32, !insn.addr !259
  store i32 %94, i32* %.pre-phi19.reload, align 4, !insn.addr !259
  store i32 0, i32* %.pre-phi23.reload, align 4, !insn.addr !260
  %95 = add i32 %esp.3.reload, -12, !insn.addr !261
  %96 = inttoptr i32 %95 to i32*, !insn.addr !261
  store i32 0, i32* %96, align 4, !insn.addr !261
  %97 = add i32 %esp.3.reload, -16, !insn.addr !262
  %98 = inttoptr i32 %97 to i32*, !insn.addr !262
  store i32 0, i32* %98, align 4, !insn.addr !262
  %99 = add i32 %esp.3.reload, -20, !insn.addr !263
  %100 = inttoptr i32 %99 to i32*, !insn.addr !263
  store i32 0, i32* %100, align 4, !insn.addr !263
  %101 = add i32 %esp.3.reload, -24, !insn.addr !264
  %102 = inttoptr i32 %101 to i32*, !insn.addr !264
  store i32 0, i32* %102, align 4, !insn.addr !264
  %103 = add i32 %esp.3.reload, -28, !insn.addr !265
  %104 = inttoptr i32 %103 to i32*, !insn.addr !265
  store i32 0, i32* %104, align 4, !insn.addr !265
  %105 = add i32 %esp.3.reload, -32, !insn.addr !266
  %106 = inttoptr i32 %105 to i32*, !insn.addr !266
  store i32 %83, i32* %106, align 4, !insn.addr !266
  %107 = add i32 %esp.3.reload, -36, !insn.addr !267
  %108 = inttoptr i32 %107 to i32*, !insn.addr !267
  store i32 2, i32* %108, align 4, !insn.addr !267
  %109 = add i32 %esp.3.reload, -40, !insn.addr !268
  %110 = inttoptr i32 %109 to i32*, !insn.addr !268
  store i32 ptrtoint ([5 x i8]* @global_var_4790ec to i32), i32* %110, align 4, !insn.addr !268
  %111 = add i32 %esp.3.reload, -44, !insn.addr !269
  %112 = inttoptr i32 %111 to i32*, !insn.addr !269
  store i32 %.pre-phi25.reload, i32* %112, align 4, !insn.addr !269
  %113 = call i32 @ldap_search_ext_sA(%ldap* bitcast (i32* @71 to %ldap*), i8* bitcast (i32* @71 to i8*), i32 ptrtoint (i32* @71 to i32), i8* bitcast (i32* @71 to i8*), i8** bitcast (i32* @71 to i8**), i32 ptrtoint (i32* @71 to i32), %ldapcontrolA** bitcast (i32* @71 to %ldapcontrolA**), %ldapcontrolA** bitcast (i32* @71 to %ldapcontrolA**), %l_timeval* bitcast (i32* @71 to %l_timeval*), i32 ptrtoint (i32* @71 to i32), %ldapmsg** bitcast (i32* @71 to %ldapmsg**)), !insn.addr !270
  %114 = inttoptr i32 %113 to i8*, !insn.addr !271
  store i8* %114, i8** %stack_var_-976, align 4, !insn.addr !271
  %115 = icmp eq i32 %113, 0, !insn.addr !272
  store i32 %esp.3.reload, i32* %esp.5.reg2mem, !insn.addr !273
  br i1 %115, label %dec_label_pc_408cba, label %dec_label_pc_408c8d, !insn.addr !273

dec_label_pc_408c8d:                              ; preds = %dec_label_pc_408c4d
  store i32 ptrtoint ([14 x i8]* @global_var_4790f4 to i32), i32* %.pre-phi19.reload, align 4, !insn.addr !274
  %116 = load i8*, i8** %stack_var_-976, align 4, !insn.addr !275
  %117 = ptrtoint i8* %116 to i32, !insn.addr !275
  %118 = call i32 @function_403cd8(i32 %117), !insn.addr !275
  %119 = load i32*, i32** %pMessage_-952, align 4, !insn.addr !276
  %120 = icmp eq i32* %119, null, !insn.addr !276
  br i1 %120, label %dec_label_pc_408cb3, label %dec_label_pc_408ca3, !insn.addr !277

dec_label_pc_408ca3:                              ; preds = %dec_label_pc_408c8d
  %121 = ptrtoint i32* %119 to i32, !insn.addr !278
  store i32 %121, i32* %.pre-phi19.reload, align 4, !insn.addr !279
  %122 = call i32 @ldap_msgfree(%ldapmsg* bitcast (i32* @71 to %ldapmsg*)), !insn.addr !280
  br label %dec_label_pc_408cb3, !insn.addr !281

dec_label_pc_408cb3:                              ; preds = %dec_label_pc_408ca3, %dec_label_pc_408c8d
  store i32 1, i32* %.pre-phi19.reload, align 4, !insn.addr !282
  call void @exit(i32 ptrtoint (i32* @71 to i32)), !insn.addr !283
  store i32 %.pre-phi17.reload, i32* %esp.5.reg2mem, !insn.addr !283
  br label %dec_label_pc_408cba, !insn.addr !283

dec_label_pc_408cba:                              ; preds = %dec_label_pc_408cb3, %dec_label_pc_408c4d
  %esp.5.reload = load i32, i32* %esp.5.reg2mem
  %123 = load i32*, i32** %pMessage_-952, align 4, !insn.addr !284
  %124 = icmp eq i32* %123, null, !insn.addr !284
  br i1 %124, label %dec_label_pc_408cba.dec_label_pc_408cd3_crit_edge, label %dec_label_pc_408cc3, !insn.addr !285

dec_label_pc_408cba.dec_label_pc_408cd3_crit_edge: ; preds = %dec_label_pc_408cba
  %.pre26 = add i32 %esp.5.reload, -4, !insn.addr !286
  %.pre28 = inttoptr i32 %.pre26 to i32*, !insn.addr !286
  store i32* %.pre28, i32** %.pre-phi29.reg2mem
  br label %dec_label_pc_408cd3

dec_label_pc_408cc3:                              ; preds = %dec_label_pc_408cba
  %125 = ptrtoint i32* %123 to i32, !insn.addr !287
  %126 = add i32 %esp.5.reload, -4
  %127 = inttoptr i32 %126 to i32*
  store i32 %125, i32* %127, align 4, !insn.addr !288
  %128 = call i32 @ldap_msgfree(%ldapmsg* bitcast (i32* @71 to %ldapmsg*)), !insn.addr !289
  store i32* %127, i32** %.pre-phi29.reg2mem, !insn.addr !290
  br label %dec_label_pc_408cd3, !insn.addr !290

dec_label_pc_408cd3:                              ; preds = %dec_label_pc_408cba.dec_label_pc_408cd3_crit_edge, %dec_label_pc_408cc3
  %.pre-phi29.reload = load i32*, i32** %.pre-phi29.reg2mem
  store i32 %.pre-phi25.reload, i32* %.pre-phi29.reload, align 4, !insn.addr !286
  %129 = call i32 @ldap_unbind(%ldap* bitcast (i32* @71 to %ldap*)), !insn.addr !291
  call void @__security_check_cookie(i32 ptrtoint (i32* @71 to i32)), !insn.addr !292
  ret void, !insn.addr !293
}'''

#diff(NormalizeLLVM(String1), NormalizeLLVM(String2), K= 20, WindowSize= 5, P= 5)

vulnFunc = ""
noLines = 0
with open('vulnFunc.ll') as f:
    for line in f:
        vulnFunc += ''.join(line)
        noLines +=1

mainFile = open('vulnFunc.ll')
vulnFunc = mainFile.readlines()
noLines = len(vulnFunc)
vulnFunc = ''.join(vulnFunc)
mainFile.close()

#print(vulnFunc)



otherFile = open('aymon.ll')
otherContent = otherFile.readlines()
SlidingWindow = noLines
otherFile.close()
Sliders_to_be_checked =[]
results = []
normalizedVuln = NormalizeLLVM(vulnFunc)
for i in tqdm(range(0,len(otherContent) - SlidingWindow + 1, 25)):
  testString = otherContent[i: i+ SlidingWindow]
  MOSSAcc,_,_ = diff(normalizedVuln, NormalizeLLVM(''.join(testString)), K= 20, WindowSize= 10, P= 10)
  Sliders_to_be_checked.append(testString)
  results.append(MOSSAcc)
  if(MOSSAcc > 0.6):
      print(testString)


print(sorted(zip(Sliders_to_be_checked, results), key=lambda a: a[1], reverse=True)[0:10])
#print(Sliders_to_be_checked)


# with open('aymon.ll') as f:
#     insertedSlider = ""
    
#     numLines = 0
#     for line in f:
#         if(numLines > noLines * 2):
#             break
#         insertedSlider += ''.join(line)
#         numLines += 1


