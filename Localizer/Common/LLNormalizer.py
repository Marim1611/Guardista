#import code_tokenize as ctok


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

String2 = '''
dec_label_pc_457dbb:
  %.reg2mem72 = alloca i32, !insn.addr !5679
  %storemerge1.reg2mem = alloca i32, !insn.addr !5679
  %esi.2.reg2mem = alloca i32, !insn.addr !5679
  %.reg2mem70 = alloca i32, !insn.addr !5679
  %.reg2mem68 = alloca i32, !insn.addr !5679
  %ebx.0.reg2mem = alloca i32, !insn.addr !5679
  %esi.1.reg2mem = alloca i32, !insn.addr !5679
  %esp.4.reg2mem = alloca i32, !insn.addr !5679
  %stack_var_-88.1.reg2mem = alloca i32, !insn.addr !5679
  %edi.4.reg2mem = alloca i32, !insn.addr !5679
  %esp.3.reg2mem = alloca i32, !insn.addr !5679
  %cr_-44.1.reg2mem = alloca i32, !insn.addr !5679
  %storemerge2.reg2mem = alloca i32, !insn.addr !5679
  %storemerge.reg2mem = alloca i32, !insn.addr !5679
  %esp.2.reg2mem = alloca i32, !insn.addr !5679
  %stack_var_-52.0.reg2mem = alloca i32, !insn.addr !5679
  %cr_-44.0.in.reg2mem = alloca i32, !insn.addr !5679
  %edi.1.reg2mem = alloca i32, !insn.addr !5679
  %ecx.3.reg2mem = alloca i32, !insn.addr !5679
  %edx.1.reg2mem = alloca i32, !insn.addr !5679
  %ecx.25.reg2mem = alloca i32, !insn.addr !5679
  %.reg2mem = alloca i32, !insn.addr !5679
  %ecx.1.reg2mem = alloca i32, !insn.addr !5679
  %esi.0.reg2mem = alloca i32, !insn.addr !5679
  %esp.0.reg2mem = alloca i32, !insn.addr !5679
  %stack_var_-88.0.reg2mem = alloca i32, !insn.addr !5679
  %stack_var_-40.0.reg2mem = alloca i32, !insn.addr !5679
  %0 = call i1 @__decompiler_undefined_function_6()
  %1 = ptrtoint i8* %buffer to i32
  %2 = call i8 @__decompiler_undefined_function_7()
  %cr_-48 = alloca i16, align 2
  %written_-100 = alloca i32, align 4
  %mb_buffer_-32 = alloca [5 x i8], align 1
  %stack_var_-24 = alloca i8, align 1
  %str_-120 = alloca i8*, align 4
  %state_-136 = alloca %_Mbstatet.470, align 8
  %stack_var_-16 = alloca i32, align 4
  %stack_var_-56 = alloca i32, align 4
  %wc_-76 = alloca [2 x i16], align 2
  %result_-92 = alloca %"`anonymous-namespace'::write_result.469", align 8
  %result_-96 = alloca %"`anonymous-namespace'::write_result", align 8
  %3 = call i32 @__decompiler_undefined_function_0()
  %4 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-160 = alloca i32, align 4
  %5 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-144 = alloca i32, align 4
  %stack_var_-4 = alloca i32, align 4
  %6 = and i32 %1, 63, !insn.addr !5680
  %narrow = mul nuw nsw i32 %6, 56
  %7 = sdiv i32 %1, 64, !insn.addr !5681
  %8 = mul i32 %7, 4, !insn.addr !5682
  %9 = add i32 %8, ptrtoint (i32* @__pioinfo to i32), !insn.addr !5682
  %10 = inttoptr i32 %9 to i32*, !insn.addr !5682
  %11 = load i32, i32* %10, align 4, !insn.addr !5682
  %12 = add nuw nsw i32 %narrow, 24, !insn.addr !5683
  %13 = add i32 %12, %11, !insn.addr !5683
  %14 = inttoptr i32 %13 to i32*, !insn.addr !5683
  %15 = load i32, i32* %14, align 4, !insn.addr !5683
  %16 = add i32 %5, %buffer_size, !insn.addr !5684
  %17 = call i32 @GetConsoleCP(), !insn.addr !5685
  store i32 0, i32* %stack_var_-160, align 4, !insn.addr !5686
  %18 = call i32 @function_403d78(i32 0), !insn.addr !5687
  %19 = ptrtoint %"`anonymous-namespace'::write_result"* %result_-96 to i32, !insn.addr !5688
  store %"`anonymous-namespace'::write_result" { i32 0, i32 undef, i32 undef }, %"`anonymous-namespace'::write_result"* %result_-96, align 8, !insn.addr !5689
  %20 = select i1 %0, i32 -4, i32 4, !insn.addr !5689
  %21 = add i32 %20, %19, !insn.addr !5689
  %22 = add i32 %3, 8, !insn.addr !5690
  %23 = inttoptr i32 %22 to i32*, !insn.addr !5690
  %24 = load i32, i32* %23, align 4, !insn.addr !5690
  %25 = inttoptr i32 %21 to i32*, !insn.addr !5691
  store i32 0, i32* %25, align 4, !insn.addr !5691
  %26 = add i32 %21, %20, !insn.addr !5691
  %27 = inttoptr i32 %26 to i32*, !insn.addr !5692
  store i32 0, i32* %27, align 8, !insn.addr !5692
  %28 = icmp ugt i32 %16, %buffer_size, !insn.addr !5693
  %29 = icmp eq i1 %28, false, !insn.addr !5694
  br i1 %29, label %dec_label_pc_45813f, label %dec_label_pc_457e36, !insn.addr !5694

dec_label_pc_457e36:                              ; preds = %dec_label_pc_457dbb
  %30 = ptrtoint i32* %stack_var_-4 to i32, !insn.addr !5695
  %31 = ptrtoint i32* %stack_var_-160 to i32, !insn.addr !5686
  %32 = getelementptr inbounds %"`anonymous-namespace'::write_result.469", %"`anonymous-namespace'::write_result.469"* %result_-92, i32 0, i32 0, !insn.addr !5696
  %33 = load i32, i32* %32, align 8, !insn.addr !5696
  %34 = icmp eq i32 %24, 65001, !insn.addr !5697
  %35 = icmp eq i1 %34, false, !insn.addr !5698
  %36 = add nuw nsw i32 %narrow, 46
  %37 = add i32 %30, -12
  %38 = ptrtoint i32* %stack_var_-16 to i32
  %39 = bitcast i32* %stack_var_-16 to i8*
  %40 = ptrtoint %Mbstatet.470* %state-136 to i32
  %41 = ptrtoint i8** %str_-120 to i32
  %42 = ptrtoint i32* %stack_var_-144 to i32
  %43 = ptrtoint i32* %stack_var_-56 to i32
  %44 = ptrtoint [2 x i16]* %wc_-76 to i32
  %45 = add nuw nsw i32 %narrow, 45
  %46 = ptrtoint i8* %stack_var_-24 to i32
  %47 = ptrtoint [5 x i8]* %mb_buffer_-32 to i32
  %48 = ptrtoint i32* %written_-100 to i32
  %49 = ptrtoint i16* %cr_-48 to i32
  %50 = bitcast %"`anonymous-namespace'::write_result.469"* %result_-92 to i32**
  store i32 %buffer_size, i32* %stack_var_-40.0.reg2mem, !insn.addr !5696
  store i32 %31, i32* %esp.0.reg2mem, !insn.addr !5696
  store i32 %33, i32* %esi.0.reg2mem, !insn.addr !5696
  br label %dec_label_pc_457e39, !insn.addr !5696

dec_label_pc_457e39:                              ; preds = %dec_label_pc_4580a6, %dec_label_pc_457e36
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  %esp.0.reload = load i32, i32* %esp.0.reg2mem
  %stack_var_-88.0.reload = load i32, i32* %stack_var_-88.0.reg2mem
  %stack_var_-40.0.reload = load i32, i32* %stack_var_-40.0.reg2mem
  %51 = inttoptr i32 %stack_var_-40.0.reload to i8*
  %52 = load i8, i8* %51, align 1, !insn.addr !5699
  store [2 x i16] [i16 0, i16 undef], [2 x i16]* %wc_-76, align 2, !insn.addr !5700
  %53 = load i32, i32* %10, align 4, !insn.addr !5701
  br i1 %35, label %dec_label_pc_457f8e, label %dec_label_pc_457e61, !insn.addr !5698

dec_label_pc_457e61:                              ; preds = %dec_label_pc_457e39
  %54 = add i32 %53, %36
  store i32 0, i32* %ecx.1.reg2mem, !insn.addr !5702
  br label %dec_label_pc_457e6e, !insn.addr !5702

dec_label_pc_457e6e:                              ; preds = %dec_label_pc_457e73, %dec_label_pc_457e61
  %ecx.1.reload = load i32, i32* %ecx.1.reg2mem
  %55 = add i32 %ecx.1.reload, %54, !insn.addr !5703
  %56 = inttoptr i32 %55 to i8*, !insn.addr !5703
  %57 = load i8, i8* %56, align 1, !insn.addr !5703
  %58 = icmp eq i8 %57, 0, !insn.addr !5703
  br i1 %58, label %dec_label_pc_457e79, label %dec_label_pc_457e73, !insn.addr !5704

dec_label_pc_457e73:                              ; preds = %dec_label_pc_457e6e
  %59 = add nuw nsw i32 %ecx.1.reload, 1, !insn.addr !5705
  %60 = icmp ult i32 %59, 5, !insn.addr !5706
  store i32 %59, i32* %ecx.1.reg2mem, !insn.addr !5706
  br i1 %60, label %dec_label_pc_457e6e, label %dec_label_pc_457e79.thread, !insn.addr !5706

dec_label_pc_457e79.thread:                       ; preds = %dec_label_pc_457e73
  %61 = sub i32 %16, %stack_var_-40.0.reload, !insn.addr !5707
  store i32 %61, i32* %.reg2mem
  store i32 5, i32* %ecx.25.reg2mem
  br label %dec_label_pc_457e8c

dec_label_pc_457e79:                              ; preds = %dec_label_pc_457e6e
  %62 = sub i32 %16, %stack_var_-40.0.reload, !insn.addr !5707
  %63 = icmp eq i32 %ecx.1.reload, 0
  store i32 %62, i32* %.reg2mem, !insn.addr !5708
  store i32 %ecx.1.reload, i32* %ecx.25.reg2mem, !insn.addr !5708
  br i1 %63, label %dec_label_pc_457f2e, label %dec_label_pc_457e8c, !insn.addr !5708

dec_label_pc_457e8c:                              ; preds = %dec_label_pc_457e79.thread, %dec_label_pc_457e79
  %ecx.25.reload = load i32, i32* %ecx.25.reg2mem
  %.reload = load i32, i32* %.reg2mem
  %64 = inttoptr i32 %54 to i8*, !insn.addr !5709
  %65 = load i8, i8* %64, align 1, !insn.addr !5709
  %66 = zext i8 %65 to i32, !insn.addr !5709
  %67 = add i32 %66, ptrtoint ([256 x i8]* @_lookuptrailbytes to i32), !insn.addr !5710
  %68 = inttoptr i32 %67 to i8*, !insn.addr !5710
  %69 = load i8, i8* %68, align 1, !insn.addr !5710
  %70 = sext i8 %69 to i32, !insn.addr !5710
  %71 = add nsw i32 %70, 1, !insn.addr !5711
  store i32 %71, i32* %stack_var_-56, align 4, !insn.addr !5712
  %72 = sub i32 %71, %ecx.25.reload, !insn.addr !5713
  %73 = icmp sgt i32 %72, %.reload, !insn.addr !5714
  store i32 0, i32* %edx.1.reg2mem, !insn.addr !5714
  br i1 %73, label %dec_label_pc_4580b7, label %dec_label_pc_457eb5, !insn.addr !5714

dec_label_pc_457eb5:                              ; preds = %dec_label_pc_457e8c, %dec_label_pc_457eb5
  %edx.1.reload = load i32, i32* %edx.1.reg2mem
  %74 = add i32 %edx.1.reload, %54, !insn.addr !5715
  %75 = inttoptr i32 %74 to i8*, !insn.addr !5715
  %76 = load i8, i8* %75, align 1, !insn.addr !5715
  %77 = add i32 %37, %edx.1.reload, !insn.addr !5716
  %78 = inttoptr i32 %77 to i8*, !insn.addr !5716
  store i8 %76, i8* %78, align 1, !insn.addr !5716
  %79 = add nuw nsw i32 %edx.1.reload, 1, !insn.addr !5717
  %80 = icmp ult i32 %79, %ecx.25.reload, !insn.addr !5718
  store i32 %79, i32* %edx.1.reg2mem, !insn.addr !5718
  br i1 %80, label %dec_label_pc_457eb5, label %dec_label_pc_457ec4, !insn.addr !5718

dec_label_pc_457ec4:                              ; preds = %dec_label_pc_457eb5
  %81 = icmp slt i32 %72, 1
  store i32 %ecx.25.reload, i32* %ecx.3.reg2mem, !insn.addr !5719
  br i1 %81, label %dec_label_pc_457ee0, label %dec_label_pc_457ecb, !insn.addr !5719

dec_label_pc_457ecb:                              ; preds = %dec_label_pc_457ec4
  %82 = add i32 %esp.0.reload, -4, !insn.addr !5720
  %83 = inttoptr i32 %82 to i32*, !insn.addr !5720
  store i32 %72, i32* %83, align 4, !insn.addr !5720
  %84 = add i32 %ecx.25.reload, %38, !insn.addr !5721
  %85 = add i32 %esp.0.reload, -8, !insn.addr !5722
  %86 = inttoptr i32 %85 to i32*, !insn.addr !5722
  store i32 %stack_var_-40.0.reload, i32* %86, align 4, !insn.addr !5722
  %87 = add i32 %esp.0.reload, -12, !insn.addr !5723
  %88 = inttoptr i32 %87 to i32*, !insn.addr !5723
  store i32 %84, i32* %88, align 4, !insn.addr !5723
  call void @memcpy(i8* bitcast (i32* @80 to i8*), i8* bitcast (i32* @80 to i8*), i32 ptrtoint (i32* @80 to i32)), !insn.addr !5724
  %sext = mul i32 %ecx.25.reload, 65536
  %89 = sdiv i32 %sext, 65536, !insn.addr !5725
  store i32 %89, i32* %ecx.3.reg2mem, !insn.addr !5726
  br label %dec_label_pc_457ee0, !insn.addr !5726

dec_label_pc_457ee0:                              ; preds = %dec_label_pc_457ecb, %dec_label_pc_457ec4
  %ecx.3.reload = load i32, i32* %ecx.3.reg2mem
  %90 = icmp slt i32 %ecx.3.reload, 1
  br i1 %90, label %dec_label_pc_457f05, label %dec_label_pc_457ee4, !insn.addr !5727

dec_label_pc_457ee4:                              ; preds = %dec_label_pc_457ee0
  %sext3 = mul i32 %ecx.25.reload, 65536
  %91 = sdiv i32 %sext3, 65536, !insn.addr !5728
  store i32 0, i32* %edi.1.reg2mem, !insn.addr !5729
  br label %dec_label_pc_457eec, !insn.addr !5729

dec_label_pc_457eec:                              ; preds = %dec_label_pc_457eec, %dec_label_pc_457ee4
  %edi.1.reload = load i32, i32* %edi.1.reg2mem
  %92 = add nuw nsw i32 %edi.1.reload, 1, !insn.addr !5730
  %93 = load i32, i32* %10, align 4, !insn.addr !5731
  %94 = add nuw nsw i32 %edi.1.reload, %36, !insn.addr !5732
  %95 = add i32 %94, %93, !insn.addr !5732
  %96 = inttoptr i32 %95 to i8*, !insn.addr !5732
  store i8 0, i8* %96, align 1, !insn.addr !5732
  %97 = icmp ult i32 %92, %91, !insn.addr !5733
  store i32 %92, i32* %edi.1.reg2mem, !insn.addr !5733
  br i1 %97, label %dec_label_pc_457eec, label %dec_label_pc_457f05, !insn.addr !5733

dec_label_pc_457f05:                              ; preds = %dec_label_pc_457eec, %dec_label_pc_457ee0
  store %Mbstatet.470 { i32 0, i16 undef, i16 undef }, %_Mbstatet.470* %state-136, align 8, !insn.addr !5734
  store i8* %39, i8** %str_-120, align 4, !insn.addr !5735
  %98 = load i32, i32* %stack_var_-56, align 4, !insn.addr !5736
  %99 = icmp eq i32 %98, 4, !insn.addr !5736
  %100 = add i32 %esp.0.reload, -4, !insn.addr !5737
  %101 = inttoptr i32 %100 to i32*, !insn.addr !5737
  store i32 %40, i32* %101, align 4, !insn.addr !5737
  %102 = select i1 %99, i32 2, i32 1, !insn.addr !5738
  %103 = add i32 %esp.0.reload, -8, !insn.addr !5739
  %104 = inttoptr i32 %103 to i32*, !insn.addr !5739
  store i32 %102, i32* %104, align 4, !insn.addr !5739
  store i32 %102, i32* %cr_-44.0.in.reg2mem, !insn.addr !5740
  store i32 %72, i32* %stack_var_-52.0.reg2mem, !insn.addr !5740
  store i32 %103, i32* %esp.2.reg2mem, !insn.addr !5740
  store i32 %41, i32* %storemerge.reg2mem, !insn.addr !5740
  br label %dec_label_pc_457f6d, !insn.addr !5740

dec_label_pc_457f2e:                              ; preds = %dec_label_pc_457e79
  %105 = load i8, i8* %51, align 1, !insn.addr !5741
  %106 = zext i8 %105 to i32, !insn.addr !5741
  %107 = add i32 %106, ptrtoint ([256 x i8]* @_lookuptrailbytes to i32), !insn.addr !5742
  %108 = inttoptr i32 %107 to i8*, !insn.addr !5742
  %109 = load i8, i8* %108, align 1, !insn.addr !5742
  %110 = sext i8 %109 to i32, !insn.addr !5742
  %111 = icmp sgt i32 %62, %110, !insn.addr !5743
  br i1 %111, label %dec_label_pc_457f44, label %dec_label_pc_4580ec, !insn.addr !5743

dec_label_pc_457f44:                              ; preds = %dec_label_pc_457f2e
  %112 = add nsw i32 %110, 1, !insn.addr !5744
  %113 = icmp eq i32 %112, 4, !insn.addr !5745
  store i32 0, i32* %stack_var_-144, align 4, !insn.addr !5746
  store i32 %stack_var_-40.0.reload, i32* %stack_var_-56, align 4, !insn.addr !5747
  %114 = select i1 %113, i32 2, i32 1, !insn.addr !5748
  %115 = add i32 %esp.0.reload, -4, !insn.addr !5749
  %116 = inttoptr i32 %115 to i32*, !insn.addr !5749
  store i32 %42, i32* %116, align 4, !insn.addr !5749
  %117 = add i32 %esp.0.reload, -8, !insn.addr !5750
  %118 = inttoptr i32 %117 to i32*, !insn.addr !5750
  store i32 %114, i32* %118, align 4, !insn.addr !5750
  store i32 %114, i32* %cr_-44.0.in.reg2mem, !insn.addr !5751
  store i32 %112, i32* %stack_var_-52.0.reg2mem, !insn.addr !5751
  store i32 %117, i32* %esp.2.reg2mem, !insn.addr !5751
  store i32 %43, i32* %storemerge.reg2mem, !insn.addr !5751
  br label %dec_label_pc_457f6d, !insn.addr !5751

dec_label_pc_457f6d:                              ; preds = %dec_label_pc_457f44, %dec_label_pc_457f05
  %storemerge.reload = load i32, i32* %storemerge.reg2mem
  %esp.2.reload = load i32, i32* %esp.2.reg2mem
  %stack_var_-52.0.reload = load i32, i32* %stack_var_-52.0.reg2mem
  %cr_-44.0.in.reload = load i32, i32* %cr_-44.0.in.reg2mem
  %119 = add i32 %esp.2.reload, -4, !insn.addr !5752
  %120 = inttoptr i32 %119 to i32*, !insn.addr !5752
  store i32 %storemerge.reload, i32* %120, align 4, !insn.addr !5752
  %121 = add i32 %esp.2.reload, -8, !insn.addr !5753
  %122 = inttoptr i32 %121 to i32*, !insn.addr !5753
  store i32 %44, i32* %122, align 4, !insn.addr !5753
  %123 = call i32 @function_40430e(i32 %cr_-44.0.in.reload), !insn.addr !5754
  %124 = icmp eq i32 %123, -1, !insn.addr !5755
  br i1 %124, label %dec_label_pc_45813f, label %dec_label_pc_457f83, !insn.addr !5756

dec_label_pc_457f83:                              ; preds = %dec_label_pc_457f6d
  %125 = add i32 %esp.2.reload, 8, !insn.addr !5757
  %126 = add i32 %stack_var_-40.0.reload, -1, !insn.addr !5758
  %127 = add i32 %126, %stack_var_-52.0.reload, !insn.addr !5759
  store i32 %cr_-44.0.in.reload, i32* %cr_-44.1.reg2mem, !insn.addr !5760
  store i32 %125, i32* %esp.3.reg2mem, !insn.addr !5760
  store i32 %127, i32* %edi.4.reg2mem, !insn.addr !5760
  br label %dec_label_pc_458010, !insn.addr !5760

dec_label_pc_457f8e:                              ; preds = %dec_label_pc_457e39
  %128 = add i32 %53, %45, !insn.addr !5761
  %129 = inttoptr i32 %128 to i8*, !insn.addr !5761
  %130 = load i8, i8* %129, align 1, !insn.addr !5761
  %131 = and i8 %130, 4, !insn.addr !5762
  %132 = icmp eq i8 %131, 0, !insn.addr !5762
  br i1 %132, label %dec_label_pc_457fb8, label %dec_label_pc_457f9a, !insn.addr !5763

dec_label_pc_457f9a:                              ; preds = %dec_label_pc_457f8e
  %133 = add i32 %53, %36, !insn.addr !5764
  %134 = inttoptr i32 %133 to i8*, !insn.addr !5764
  %135 = load i8, i8* %134, align 1, !insn.addr !5764
  %136 = and i8 %130, -5
  store i8 %135, i8* %stack_var_-24, align 1, !insn.addr !5765
  %137 = add i32 %esp.0.reload, -4, !insn.addr !5766
  %138 = inttoptr i32 %137 to i32*, !insn.addr !5766
  store i32 2, i32* %138, align 4, !insn.addr !5766
  store i8 %136, i8* %129, align 1, !insn.addr !5767
  %139 = add i32 %esp.0.reload, -8, !insn.addr !5768
  %140 = inttoptr i32 %139 to i32*, !insn.addr !5768
  store i32 %46, i32* %140, align 4, !insn.addr !5768
  store i32 %139, i32* %storemerge2.reg2mem, !insn.addr !5769
  br label %dec_label_pc_457ffb, !insn.addr !5769

dec_label_pc_457fb8:                              ; preds = %dec_label_pc_457f8e
  %141 = load i8, i8* %51, align 1, !insn.addr !5770
  %142 = zext i8 %141 to i32, !insn.addr !5770
  %143 = call i16* @__pctype_func(), !insn.addr !5771
  %144 = ptrtoint i16* %143 to i32, !insn.addr !5771
  %145 = mul i32 %142, 2, !insn.addr !5772
  %146 = add i32 %145, %144, !insn.addr !5772
  %147 = inttoptr i32 %146 to i16*, !insn.addr !5772
  %148 = load i16, i16* %147, align 2, !insn.addr !5772
  %149 = icmp slt i16 %148, 0, !insn.addr !5773
  br i1 %149, label %dec_label_pc_457fcc, label %dec_label_pc_457ff8, !insn.addr !5773

dec_label_pc_457fcc:                              ; preds = %dec_label_pc_457fb8
  %150 = add i32 %stack_var_-40.0.reload, 1, !insn.addr !5774
  store i32 %150, i32* %stack_var_-56, align 4, !insn.addr !5775
  %151 = icmp ult i32 %150, %16, !insn.addr !5776
  %152 = icmp eq i1 %151, false, !insn.addr !5777
  br i1 %152, label %dec_label_pc_458110, label %dec_label_pc_457fdb, !insn.addr !5777

dec_label_pc_457fdb:                              ; preds = %dec_label_pc_457fcc
  %153 = add i32 %esp.0.reload, -4, !insn.addr !5778
  %154 = inttoptr i32 %153 to i32*, !insn.addr !5778
  store i32 2, i32* %154, align 4, !insn.addr !5778
  %155 = add i32 %esp.0.reload, -8, !insn.addr !5779
  %156 = inttoptr i32 %155 to i32*, !insn.addr !5779
  store i32 %stack_var_-40.0.reload, i32* %156, align 4, !insn.addr !5779
  %157 = add i32 %esp.0.reload, -12, !insn.addr !5780
  %158 = inttoptr i32 %157 to i32*, !insn.addr !5780
  store i32 %44, i32* %158, align 4, !insn.addr !5780
  %159 = load i32, i32* %stack_var_-56, align 4, !insn.addr !5781
  %160 = inttoptr i32 %159 to i16*, !insn.addr !5781
  %161 = call i32 @mbtowc(i16* %160, i8* bitcast (i32* @80 to i8*), i32 ptrtoint (i32* @80 to i32)), !insn.addr !5781
  %162 = icmp eq i32 %161, -1, !insn.addr !5782
  br i1 %162, label %dec_label_pc_45813f, label %dec_label_pc_457ff3, !insn.addr !5783

dec_label_pc_457ff3:                              ; preds = %dec_label_pc_457fdb
  %163 = load i32, i32* %stack_var_-56, align 4, !insn.addr !5784
  store i32 1, i32* %cr_-44.1.reg2mem, !insn.addr !5785
  store i32 %esp.0.reload, i32* %esp.3.reg2mem, !insn.addr !5785
  store i32 %163, i32* %edi.4.reg2mem, !insn.addr !5785
  br label %dec_label_pc_458010, !insn.addr !5785

dec_label_pc_457ff8:                              ; preds = %dec_label_pc_457fb8
  %164 = add i32 %esp.0.reload, -4, !insn.addr !5786
  %165 = inttoptr i32 %164 to i32*, !insn.addr !5786
  store i32 1, i32* %165, align 4, !insn.addr !5786
  %166 = add i32 %esp.0.reload, -8, !insn.addr !5787
  %167 = inttoptr i32 %166 to i32*, !insn.addr !5787
  store i32 %stack_var_-40.0.reload, i32* %167, align 4, !insn.addr !5787
  store i32 %166, i32* %storemerge2.reg2mem, !insn.addr !5787
  br label %dec_label_pc_457ffb, !insn.addr !5787

dec_label_pc_457ffb:                              ; preds = %dec_label_pc_457ff8, %dec_label_pc_457f9a
  %storemerge2.reload = load i32, i32* %storemerge2.reg2mem
  %168 = add i32 %storemerge2.reload, -4, !insn.addr !5788
  %169 = inttoptr i32 %168 to i32*, !insn.addr !5788
  store i32 %44, i32* %169, align 4, !insn.addr !5788
  %170 = call i32 @mbtowc(i16* bitcast (i32* @80 to i16*), i8* bitcast (i32* @80 to i8*), i32 ptrtoint (i32* @80 to i32)), !insn.addr !5789
  %171 = add i32 %storemerge2.reload, 8, !insn.addr !5790
  %172 = icmp eq i32 %170, -1, !insn.addr !5791
  store i32 1, i32* %cr_-44.1.reg2mem, !insn.addr !5792
  store i32 %171, i32* %esp.3.reg2mem, !insn.addr !5792
  store i32 %stack_var_-40.0.reload, i32* %edi.4.reg2mem, !insn.addr !5792
  br i1 %172, label %dec_label_pc_45813f, label %dec_label_pc_458010, !insn.addr !5792

dec_label_pc_458010:                              ; preds = %dec_label_pc_457ffb, %dec_label_pc_457ff3, %dec_label_pc_457f83
  %edi.4.reload = load i32, i32* %edi.4.reg2mem
  %esp.3.reload = load i32, i32* %esp.3.reg2mem
  %cr_-44.1.reload = load i32, i32* %cr_-44.1.reg2mem
  %173 = add i32 %esp.3.reload, -4, !insn.addr !5793
  %174 = inttoptr i32 %173 to i32*, !insn.addr !5793
  store i32 0, i32* %174, align 4, !insn.addr !5793
  %175 = add i32 %esp.3.reload, -8, !insn.addr !5794
  %176 = inttoptr i32 %175 to i32*, !insn.addr !5794
  store i32 0, i32* %176, align 4, !insn.addr !5794
  %177 = add i32 %esp.3.reload, -12, !insn.addr !5795
  %178 = inttoptr i32 %177 to i32*, !insn.addr !5795
  store i32 5, i32* %178, align 4, !insn.addr !5795
  %179 = add i32 %esp.3.reload, -16, !insn.addr !5796
  %180 = inttoptr i32 %179 to i32*, !insn.addr !5796
  store i32 %47, i32* %180, align 4, !insn.addr !5796
  %181 = add i32 %esp.3.reload, -20, !insn.addr !5797
  %182 = inttoptr i32 %181 to i32*, !insn.addr !5797
  store i32 %cr_-44.1.reload, i32* %182, align 4, !insn.addr !5797
  %183 = add i32 %esp.3.reload, -24, !insn.addr !5798
  %184 = inttoptr i32 %183 to i32*, !insn.addr !5798
  store i32 %44, i32* %184, align 4, !insn.addr !5798
  %185 = add i32 %esp.3.reload, -28, !insn.addr !5799
  %186 = inttoptr i32 %185 to i32*, !insn.addr !5799
  store i32 0, i32* %186, align 4, !insn.addr !5799
  %187 = add i32 %esp.3.reload, -32, !insn.addr !5800
  %188 = inttoptr i32 %187 to i32*, !insn.addr !5800
  store i32 %17, i32* %188, align 4, !insn.addr !5800
  %189 = call i32 @function_404601(), !insn.addr !5801
  store i32 %189, i32* %stack_var_-56, align 4, !insn.addr !5802
  %190 = icmp eq i32 %189, 0, !insn.addr !5803
  br i1 %190, label %dec_label_pc_45813f, label %dec_label_pc_45803a, !insn.addr !5804

dec_label_pc_45803a:                              ; preds = %dec_label_pc_458010
  store i32 0, i32* %174, align 4, !insn.addr !5805
  store i32 %48, i32* %176, align 4, !insn.addr !5806
  store i32 %189, i32* %178, align 4, !insn.addr !5807
  store i32 %47, i32* %180, align 4, !insn.addr !5808
  store i32 %15, i32* %182, align 4, !insn.addr !5809
  %191 = load i32, i32* %stack_var_-56, align 4, !insn.addr !5810
  %192 = inttoptr i32 %191 to i32*, !insn.addr !5810
  %193 = call i1 @WriteFile(i32* %192, i32* nonnull @80, i32 ptrtoint (i32* @80 to i32), i32* nonnull @80, %_OVERLAPPED* bitcast (i32* @80 to %_OVERLAPPED*)), !insn.addr !5810
  %194 = icmp eq i1 %193, false, !insn.addr !5811
  br i1 %194, label %dec_label_pc_458133, label %dec_label_pc_458055, !insn.addr !5812

dec_label_pc_458055:                              ; preds = %dec_label_pc_45803a
  %195 = add i32 %edi.4.reload, 1, !insn.addr !5813
  %196 = sub i32 %stack_var_-88.0.reload, %buffer_size, !insn.addr !5814
  %197 = load i32, i32* %stack_var_-56, align 4, !insn.addr !5815
  %198 = add i32 %195, %196, !insn.addr !5816
  %199 = insertvalue %"`anonymous-namespace'::write_result.469" undef, i32 %198, 0, !insn.addr !5817
  store %"`anonymous-namespace'::write_result.469" %199, %"`anonymous-namespace'::write_result.469"* %result_-92, align 8, !insn.addr !5817
  %200 = load i32, i32* %written_-100, align 4, !insn.addr !5818
  %201 = icmp ult i32 %200, %197, !insn.addr !5818
  br i1 %201, label %dec_label_pc_45813f, label %dec_label_pc_45806c, !insn.addr !5819

dec_label_pc_45806c:                              ; preds = %dec_label_pc_458055
  %202 = icmp eq i8 %52, 10, !insn.addr !5820
  %203 = icmp eq i1 %202, false, !insn.addr !5821
  store i32 %stack_var_-88.0.reload, i32* %stack_var_-88.1.reg2mem, !insn.addr !5821
  store i32 %181, i32* %esp.4.reg2mem, !insn.addr !5821
  store i32 %198, i32* %esi.1.reg2mem, !insn.addr !5821
  br i1 %203, label %dec_label_pc_4580a6, label %dec_label_pc_458072, !insn.addr !5821

dec_label_pc_458072:                              ; preds = %dec_label_pc_45806c
  store i32 0, i32* %184, align 4, !insn.addr !5822
  store i16 13, i16* %cr_-48, align 2, !insn.addr !5823
  store i32 %48, i32* %186, align 4, !insn.addr !5824
  store i32 1, i32* %188, align 4, !insn.addr !5825
  %204 = add i32 %esp.3.reload, -36, !insn.addr !5826
  %205 = inttoptr i32 %204 to i32*, !insn.addr !5826
  store i32 %49, i32* %205, align 4, !insn.addr !5826
  %206 = add i32 %esp.3.reload, -40, !insn.addr !5827
  %207 = inttoptr i32 %206 to i32*, !insn.addr !5827
  store i32 %15, i32* %207, align 4, !insn.addr !5827
  %208 = load i32*, i32** %50, align 8, !insn.addr !5828
  %209 = call i1 @WriteFile(i32* %208, i32* nonnull @80, i32 ptrtoint (i32* @80 to i32), i32* nonnull @80, %_OVERLAPPED* bitcast (i32* @80 to %_OVERLAPPED*)), !insn.addr !5828
  %210 = icmp eq i1 %209, false, !insn.addr !5829
  br i1 %210, label %dec_label_pc_458133, label %dec_label_pc_458095, !insn.addr !5830

dec_label_pc_458095:                              ; preds = %dec_label_pc_458072
  %211 = load i32, i32* %written_-100, align 4, !insn.addr !5831
  %212 = icmp eq i32 %211, 0, !insn.addr !5831
  br i1 %212, label %dec_label_pc_45813f, label %dec_label_pc_45809f, !insn.addr !5832

dec_label_pc_45809f:                              ; preds = %dec_label_pc_458095
  %213 = add i32 %stack_var_-88.0.reload, 1, !insn.addr !5833
  %214 = add i32 %198, 1, !insn.addr !5834
  %215 = insertvalue %"`anonymous-namespace'::write_result.469" undef, i32 %214, 0, !insn.addr !5835
  store %"`anonymous-namespace'::write_result.469" %215, %"`anonymous-namespace'::write_result.469"* %result_-92, align 8, !insn.addr !5835
  store i32 %213, i32* %stack_var_-88.1.reg2mem, !insn.addr !5835
  store i32 %206, i32* %esp.4.reg2mem, !insn.addr !5835
  store i32 %214, i32* %esi.1.reg2mem, !insn.addr !5835
  br label %dec_label_pc_4580a6, !insn.addr !5835

dec_label_pc_4580a6:                              ; preds = %dec_label_pc_45809f, %dec_label_pc_45806c
  %esi.1.reload = load i32, i32* %esi.1.reg2mem
  %esp.4.reload = load i32, i32* %esp.4.reg2mem
  %stack_var_-88.1.reload = load i32, i32* %stack_var_-88.1.reg2mem
  %216 = icmp ult i32 %195, %16, !insn.addr !5836
  %217 = icmp eq i1 %216, false, !insn.addr !5837
  store i32 %195, i32* %stack_var_-40.0.reg2mem, !insn.addr !5837
  store i32 %stack_var_-88.1.reload, i32* %stack_var_-88.0.reg2mem, !insn.addr !5837
  store i32 %esp.4.reload, i32* %esp.0.reg2mem, !insn.addr !5837
  store i32 %esi.1.reload, i32* %esi.0.reg2mem, !insn.addr !5837
  br i1 %217, label %dec_label_pc_45813f, label %dec_label_pc_457e39, !insn.addr !5837

dec_label_pc_4580b7:                              ; preds = %dec_label_pc_457e8c
  %218 = icmp slt i32 %.reload, 1
  store i32 %.reload, i32* %.reg2mem70, !insn.addr !5838
  store i32 %esi.0.reload, i32* %esi.2.reg2mem, !insn.addr !5838
  br i1 %218, label %dec_label_pc_4580e1, label %dec_label_pc_4580be.preheader, !insn.addr !5838

dec_label_pc_4580be.preheader:                    ; preds = %dec_label_pc_4580b7
  %219 = add nuw i32 %36, %ecx.25.reload
  store i32 0, i32* %ebx.0.reg2mem
  br label %dec_label_pc_4580be

dec_label_pc_4580be:                              ; preds = %dec_label_pc_4580be, %dec_label_pc_4580be.preheader
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  %220 = load i32, i32* %10, align 4, !insn.addr !5839
  %221 = add i32 %ebx.0.reload, %stack_var_-40.0.reload, !insn.addr !5840
  %222 = inttoptr i32 %221 to i8*, !insn.addr !5840
  %223 = load i8, i8* %222, align 1, !insn.addr !5840
  %224 = add nuw nsw i32 %ebx.0.reload, 1, !insn.addr !5841
  %225 = add i32 %219, %ebx.0.reload, !insn.addr !5842
  %226 = add i32 %225, %220, !insn.addr !5842
  %227 = inttoptr i32 %226 to i8*, !insn.addr !5842
  store i8 %223, i8* %227, align 1, !insn.addr !5842
  %exitcond33 = icmp eq i32 %224, %.reload
  store i32 %224, i32* %ebx.0.reg2mem, !insn.addr !5843
  store i32 %.reload, i32* %.reg2mem68, !insn.addr !5843
  br i1 %exitcond33, label %dec_label_pc_4580de, label %dec_label_pc_4580be, !insn.addr !5843

dec_label_pc_4580de:                              ; preds = %dec_label_pc_4580be, %dec_label_pc_4580f3.preheader, %dec_label_pc_4580f3.dec_label_pc_4580f3_crit_edge
  %.reload69 = load i32, i32* %.reg2mem68
  %228 = load i32, i32* %32, align 8, !insn.addr !5844
  store i32 %.reload69, i32* %.reg2mem70, !insn.addr !5844
  store i32 %228, i32* %esi.2.reg2mem, !insn.addr !5844
  br label %dec_label_pc_4580e1, !insn.addr !5844

dec_label_pc_4580e1:                              ; preds = %dec_label_pc_4580ec, %dec_label_pc_4580de, %dec_label_pc_4580b7
  %esi.2.reload = load i32, i32* %esi.2.reg2mem
  %.reload71 = load i32, i32* %.reg2mem70
  %229 = add i32 %esi.2.reload, %.reload71, !insn.addr !5845
  store i32 %229, i32* %storemerge1.reg2mem, !insn.addr !5845
  br label %dec_label_pc_4580e3, !insn.addr !5845

dec_label_pc_4580e3:                              ; preds = %dec_label_pc_458110, %dec_label_pc_4580e1
  %storemerge1.reload = load i32, i32* %storemerge1.reg2mem
  %230 = insertvalue %"`anonymous-namespace'::write_result.469" undef, i32 %storemerge1.reload, 0, !insn.addr !5846
  store %"`anonymous-namespace'::write_result.469" %230, %"`anonymous-namespace'::write_result.469"* %result_-92, align 8, !insn.addr !5846
  br label %dec_label_pc_45813f, !insn.addr !5847

dec_label_pc_4580ec:                              ; preds = %dec_label_pc_457f2e
  %231 = icmp slt i32 %62, 1
  store i32 %62, i32* %.reg2mem70, !insn.addr !5848
  store i32 %esi.0.reload, i32* %esi.2.reg2mem, !insn.addr !5848
  br i1 %231, label %dec_label_pc_4580e1, label %dec_label_pc_4580f3.preheader, !insn.addr !5848

dec_label_pc_4580f3.preheader:                    ; preds = %dec_label_pc_4580ec
  %232 = inttoptr i32 %54 to i8*, !insn.addr !5849
  store i8 %105, i8* %232, align 1, !insn.addr !5849
  %exitcond51 = icmp eq i32 %62, 1
  store i32 1, i32* %.reg2mem68, !insn.addr !5850
  store i32 1, i32* %.reg2mem72, !insn.addr !5850
  br i1 %exitcond51, label %dec_label_pc_4580de, label %dec_label_pc_4580f3.dec_label_pc_4580f3_crit_edge, !insn.addr !5850

dec_label_pc_4580f3.dec_label_pc_4580f3_crit_edge: ; preds = %dec_label_pc_4580f3.preheader, %dec_label_pc_4580f3.dec_label_pc_4580f3_crit_edge
  %.reload73 = load i32, i32* %.reg2mem72
  %.pre = load i32, i32* %10, align 4
  %233 = add i32 %.reload73, %stack_var_-40.0.reload, !insn.addr !5851
  %234 = inttoptr i32 %233 to i8*, !insn.addr !5851
  %235 = load i8, i8* %234, align 1, !insn.addr !5851
  %236 = add nuw nsw i32 %.reload73, 1, !insn.addr !5852
  %237 = add i32 %.pre, %36, !insn.addr !5849
  %238 = add i32 %237, %.reload73, !insn.addr !5849
  %239 = inttoptr i32 %238 to i8*, !insn.addr !5849
  store i8 %235, i8* %239, align 1, !insn.addr !5849
  %exitcond = icmp eq i32 %236, %62
  store i32 %62, i32* %.reg2mem68, !insn.addr !5850
  store i32 %236, i32* %.reg2mem72, !insn.addr !5850
  br i1 %exitcond, label %dec_label_pc_4580de, label %dec_label_pc_4580f3.dec_label_pc_4580f3_crit_edge, !insn.addr !5850

dec_label_pc_458110:                              ; preds = %dec_label_pc_457fcc
  %240 = load i32, i32* %10, align 4, !insn.addr !5853
  %241 = add i32 %240, %36, !insn.addr !5854
  %242 = inttoptr i32 %241 to i8*, !insn.addr !5854
  store i8 %141, i8* %242, align 1, !insn.addr !5854
  %243 = load i32, i32* %10, align 4, !insn.addr !5855
  %244 = add i32 %243, %45, !insn.addr !5856
  %245 = inttoptr i32 %244 to i8*, !insn.addr !5856
  %246 = load i8, i8* %245, align 1, !insn.addr !5856
  %247 = or i8 %246, 4, !insn.addr !5856
  store i8 %247, i8* %245, align 1, !insn.addr !5856
  %248 = add i32 %esi.0.reload, 1, !insn.addr !5857
  store i32 %248, i32* %storemerge1.reg2mem, !insn.addr !5858
  br label %dec_label_pc_4580e3, !insn.addr !5858

dec_label_pc_458133:                              ; preds = %dec_label_pc_458072, %dec_label_pc_45803a
  %249 = call i32 @GetLastError(), !insn.addr !5859
  %250 = insertvalue %"`anonymous-namespace'::write_result" undef, i32 %249, 0, !insn.addr !5860
  store %"`anonymous-namespace'::write_result" %250, %"`anonymous-namespace'::write_result"* %result_-96, align 8, !insn.addr !5860
  br label %dec_label_pc_45813f, !insn.addr !5860

dec_label_pc_45813f:                              ; preds = %dec_label_pc_457f6d, %dec_label_pc_457fdb, %dec_label_pc_457ffb, %dec_label_pc_458010, %dec_label_pc_458055, %dec_label_pc_458095, %dec_label_pc_4580a6, %dec_label_pc_457dbb, %dec_label_pc_458133, %dec_label_pc_4580e3
  %zf.0 = icmp eq i8 %2, 0
  br i1 %zf.0, label %dec_label_pc_45814b, label %dec_label_pc_458141, !insn.addr !5861

dec_label_pc_458141:                              ; preds = %dec_label_pc_45813f
  %251 = add i32 %4, 848, !insn.addr !5862
  %252 = inttoptr i32 %251 to i32*, !insn.addr !5862
  %253 = load i32, i32* %252, align 4, !insn.addr !5862
  %254 = and i32 %253, -3, !insn.addr !5862
  store i32 %254, i32* %252, align 4, !insn.addr !5862
  br label %dec_label_pc_45814b, !insn.addr !5862

dec_label_pc_45814b:                              ; preds = %dec_label_pc_458141, %dec_label_pc_45813f
  %255 = getelementptr inbounds %"`anonymous-namespace'::write_result", %"`anonymous-namespace'::write_result"* %result_-96, i32 0, i32 0, !insn.addr !5863
  %256 = load i32, i32* %255, align 8, !insn.addr !5863
  %257 = inttoptr i32 %fh to i32*, !insn.addr !5863
  store i32 %256, i32* %257, align 4, !insn.addr !5863
  %258 = add i32 %20, %fh, !insn.addr !5863
  %259 = load i32, i32* %25, align 4, !insn.addr !5864
  %260 = inttoptr i32 %258 to i32*, !insn.addr !5864
  store i32 %259, i32* %260, align 4, !insn.addr !5864
  %261 = add i32 %258, %20, !insn.addr !5864
  %262 = load i32, i32* %27, align 8, !insn.addr !5865
  %263 = inttoptr i32 %261 to i32*, !insn.addr !5865
  store i32 %262, i32* %263, align 4, !insn.addr !5865
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !5866
  ret %"`anonymous-namespace'::write_result.733" { i32 ptrtoint (i32* @80 to i32) }, !insn.addr !5867
'''






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


#LLVM_DATA_TYPES = ['void', 'i32', 'i16', 'i64', 'i128', 'half', 'bfloat', 'float', 'fp128', 'x86_fp80', 'ptr', 'ppc_fp128',\
#                       'x86_amx', 'x86_mmx']

regex_reserved = []
for i in LLVM_OPERATORS:
    regex_reserved.append('\b'+i+'\b')


def NormalizeLLVM(String1):
    tempVariables = re.findall('%\d+', String1)
    String1 = re.sub('%\d+', "TMP", String1)
    #print(tempVariables)
    #print(String1)

    #I put a special sign '$$' before Any token I want to reserve, then will convert them later to their original token
    reservedWordsReserver = re.findall('('+'|'.join(regex_reserved) + ')', String1)
    String1 = re.sub('('+'|'.join(regex_reserved) + ')', r'$$\1', String1)
    #print(reservedWordsReserver)

    functionCalls = re.findall("(@(?<!$$)\w+\(.*\))",String1)
    String1 = re.sub("(@(?<!$$)\w+\(.*\))", "FUNC", String1)
    #print(functionCalls)
    #print(String1)

    

    bigIntegers = re.findall("i6[5-9]", String1)
    bigIntegers = bigIntegers + re.findall("i[7-9][0-9]+", String1)
    bigIntegers = bigIntegers + re.findall("i[0-9][0-9][0-9]+", String1)
    String1 = re.sub("i6[5-9]", "BIGINT", String1)
    String1 = re.sub("i[7-9][0-9]+", "BIGINT", String1)
    String1 = re.sub("i[0-9][0-9][0-9]+", "BIGINT", String1)
    #print(f"big Integer Matches:\n {bigIntegers}")
    #print(String1)


    integerTypes = re.findall("i\d+", String1)
    String1 = re.sub("i\d+", "INT", String1)
    #print(integerTypes)
    #print(String1)

    basicBlockLabels = re.findall("(dec_label_pc\w+).*:", String1)
    #print(basicBlockLabels)

    BB_IDs_list = dict()
    for i in range(len(basicBlockLabels)):
        BB_IDs_list[basicBlockLabels[i]] = f"BB{i}"
        String1 = re.sub("(dec_label_pc\w+):", f"BB{i}", String1, count=1)
    basicBlockReferences = re.findall("%(dec_label_pc\w+)", String1)

    #print(basicBlockReferences)
    convertedBasicBlockReferences = []
    for i in basicBlockReferences:
        try:
          convertedBasicBlockReferences.append("REF_" + BB_IDs_list[i])
          #convertedBasicBlockReferences.append("REF_BB" + BB_IDs_list[i])
        except:
            print("ERRRORR")
            convertedBasicBlockReferences.append("REF_UNK")
    #print(convertedBasicBlockReferences)

    for i in range(len(basicBlockReferences)):
        String1 = re.sub("%dec_label_pc\w+", convertedBasicBlockReferences[i], String1, count=1)
    #String1 = re.sub("(dec_label_pc_\w+):", "DECBB", String1)
    #print(String1)


    insnAddr = re.findall("!insn.addr\s+(!\d+)", String1)
    String1 = re.sub("(?<=!insn.addr)\s+(!\d+)", " INS", String1)
    #print(insnAddr)
    #print(String1)


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

def tokenizeLLVM (String_After_Normalizing):
    StringTemp = re.sub('\s+', ' ', String_After_Normalizing)
    StringTemp = re.sub(r'\n', ' ', StringTemp)
    output = re.split(r'\b', StringTemp)
    
    final_output = []
    for tok in output:
        if tok != ' ':
            final_output.append(re.sub(' ', '', tok))
    return final_output




#CALL THIS ONLY
def Normalize_Tokenize_LLVM(llvmString):
    out1 = NormalizeLLVM(llvmString)
    out2 = tokenizeLLVM (out1)
    return out2





#out1 = NormalizeLLVM(String2)
#out2 = tokenizeLLVM(out1)
