define void @"CWE23_Relative_Path_Traversal__char_environment_fopen_18::bad"() local_unnamed_addr {
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