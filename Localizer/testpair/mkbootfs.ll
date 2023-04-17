source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }
%dirent = type { i32, i32, i16, i8, [256 x i8] }
%__dirstream = type { i32 }
%stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@global_var_603ff8 = local_unnamed_addr global i64 0
@global_var_603e08 = local_unnamed_addr global i64 0
@global_var_402284 = constant [8 x i8] c"error: \00"
@global_var_4022ab = constant [31 x i8] c"_archive_dir('%s','%s',%d,%d)\0A\00"
@global_var_4022ca = constant [27 x i8] c"cannot open directory '%s'\00"
@global_var_4022e5 = constant [46 x i8] c"failed to allocate dir names array (size %d)\0A\00"
@global_var_402313 = constant [5 x i8] c"root\00"
@global_var_402318 = constant [48 x i8] c"failed to reallocate dir names array (size %d)\0A\00"
@global_var_402348 = constant [28 x i8] c"failed to strdup name \22%s\22\0A\00"
@global_var_40228c = constant [3 x i8] c"-f\00"
@global_var_40228f = constant [28 x i8] c"no directories to process?!\00"
@global_var_604178 = local_unnamed_addr global i64 0
@global_var_402813 = constant [27 x i8] c"failed to open canned file\00"
@global_var_40282e = constant [3 x i8] c" \0A\00"
@global_var_402364 = constant [27 x i8] c"_archive('%s','%s',%d,%d)\0A\00"
@global_var_40237f = constant [21 x i8] c"could not stat '%s'\0A\00"
@global_var_402394 = constant [26 x i8] c"cannot open '%s' for read\00"
@global_var_4023ae = constant [25 x i8] c"cannot allocate %d bytes\00"
@global_var_4023c7 = constant [21 x i8] c"cannot read %d bytes\00"
@global_var_4023dc = constant [25 x i8] c"cannot read symlink '%s'\00"
@global_var_4023f5 = constant [25 x i8] c"Unknown '%s' (mode %d)?\0A\00"
@global_var_604130 = external local_unnamed_addr global i64
@global_var_40240e = constant [61 x i8] c"%06x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%s%c\00"
@global_var_40244b = constant [5 x i8] c"ACK!\00"
@global_var_402b00 = constant i64 288
@global_var_402831 = constant [11 x i8] c"TRAILER!!!\00"
@global_var_603df8 = local_unnamed_addr global i64 4198320
@global_var_603e00 = local_unnamed_addr global i64 4198288
@global_var_604168 = local_unnamed_addr global i8 0
@global_var_604160 = local_unnamed_addr global %_IO_FILE* null
@0 = internal constant [2 x i8] c"\0A\00"
@1 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i64 0, i64 0)
@global_var_604170 = local_unnamed_addr global i32 0
@global_var_402830 = external constant i8*
@2 = internal constant [2 x i8] c"r\00"
@3 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i64 0, i64 0)
@global_var_604174 = local_unnamed_addr global i32 0
@global_var_604175 = global i32 0
@global_var_604140 = local_unnamed_addr global %_IO_FILE* null
@global_var_402840 = constant i32* inttoptr (i64 4294967296504 to i32*)
@global_var_40282f = constant [2 x i8] c"\0A\00"
@global_var_402809 = constant [2 x i8] c"r\00"

define i64 @die(i8* %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) local_unnamed_addr {
dec_label_pc_400fe0:
  %0 = call i64 @__decompiler_undefined_function_0()
  %1 = call i128 @__decompiler_undefined_function_1()
  %2 = call i128 @__decompiler_undefined_function_1()
  %3 = call i128 @__decompiler_undefined_function_1()
  %4 = call i128 @__decompiler_undefined_function_1()
  %5 = call i128 @__decompiler_undefined_function_1()
  %6 = call i128 @__decompiler_undefined_function_1()
  %7 = call i128 @__decompiler_undefined_function_1()
  %8 = call i128 @__decompiler_undefined_function_1()
  %stack_var_-40 = alloca i64, align 8
  %9 = trunc i64 %0 to i8, !insn.addr !0
  %10 = icmp eq i8 %9, 0, !insn.addr !0
  %11 = call i64 @__asm_movaps(i128 %1), !insn.addr !1
  %12 = call i64 @__asm_movaps(i128 %2), !insn.addr !2
  %13 = call i64 @__asm_movaps(i128 %3), !insn.addr !3
  %14 = call i64 @__asm_movaps(i128 %4), !insn.addr !4
  %15 = call i64 @__asm_movaps(i128 %5), !insn.addr !5
  %16 = call i64 @__asm_movaps(i128 %6), !insn.addr !6
  %17 = call i64 @__asm_movaps(i128 %7), !insn.addr !7
  %18 = call i64 @__asm_movaps(i128 %8), !insn.addr !8
  br i1 %10, label %dec_label_pc_4010b3, label %dec_label_pc_401055, !insn.addr !9

dec_label_pc_401055:                              ; preds = %dec_label_pc_400fe0
  %19 = sext i64 %18 to i128, !insn.addr !8
  %20 = sext i64 %17 to i128, !insn.addr !7
  %21 = sext i64 %16 to i128, !insn.addr !6
  %22 = sext i64 %15 to i128, !insn.addr !5
  %23 = sext i64 %14 to i128, !insn.addr !4
  %24 = sext i64 %13 to i128, !insn.addr !3
  %25 = sext i64 %12 to i128, !insn.addr !2
  %26 = sext i64 %11 to i128, !insn.addr !1
  %27 = call i128 @__asm_movaps.1(i128 %19), !insn.addr !10
  %28 = call i64 @__asm_movaps(i128 %27), !insn.addr !11
  %29 = call i128 @__asm_movaps.1(i128 %20), !insn.addr !12
  %30 = call i64 @__asm_movaps(i128 %29), !insn.addr !13
  %31 = call i128 @__asm_movaps.1(i128 %21), !insn.addr !14
  %32 = call i64 @__asm_movaps(i128 %31), !insn.addr !15
  %33 = call i128 @__asm_movaps.1(i128 %22), !insn.addr !16
  %34 = call i64 @__asm_movaps(i128 %33), !insn.addr !17
  %35 = call i128 @__asm_movaps.1(i128 %23), !insn.addr !18
  %36 = call i64 @__asm_movaps(i128 %35), !insn.addr !19
  %37 = call i128 @__asm_movaps.1(i128 %24), !insn.addr !20
  %38 = call i64 @__asm_movaps(i128 %37), !insn.addr !21
  %39 = call i128 @__asm_movaps.1(i128 %25), !insn.addr !22
  %40 = call i64 @__asm_movaps(i128 %39), !insn.addr !23
  %41 = call i128 @__asm_movaps.1(i128 %26), !insn.addr !24
  %42 = call i64 @__asm_movaps(i128 %41), !insn.addr !25
  br label %dec_label_pc_4010b3, !insn.addr !25

dec_label_pc_4010b3:                              ; preds = %dec_label_pc_401055, %dec_label_pc_400fe0
  store i64 8, i64* %stack_var_-40, align 8, !insn.addr !26
  %43 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !27
  %44 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_402284, i64 0, i64 0)), !insn.addr !28
  %45 = ptrtoint i64* %stack_var_-40 to i64, !insn.addr !29
  %46 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !30
  %47 = call i32 @vfprintf(%_IO_FILE* %46, i8* %arg1, i64 %45), !insn.addr !31
  %48 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !32
  %49 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_40282f, i64 0, i64 0)), !insn.addr !33
  call void @exit(i32 1), !insn.addr !34
  unreachable, !insn.addr !34
}

define i64 @archive(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_4011a0:
  %stack_var_-8216 = alloca i64, align 8
  %stack_var_-16408 = alloca i64, align 8
  %0 = ptrtoint i64* %stack_var_-8216 to i64, !insn.addr !35
  %1 = ptrtoint i64* %stack_var_-16408 to i64, !insn.addr !36
  %2 = bitcast i64* %stack_var_-8216 to i8*, !insn.addr !37
  %3 = inttoptr i64 %arg1 to i8*, !insn.addr !37
  %4 = call i8* @strcpy(i8* nonnull %2, i8* %3), !insn.addr !37
  %5 = bitcast i64* %stack_var_-16408 to i8*, !insn.addr !38
  %6 = inttoptr i64 %arg2 to i8*, !insn.addr !38
  %7 = call i8* @strcpy(i8* nonnull %5, i8* %6), !insn.addr !38
  %8 = call i32 @strlen(i8* nonnull %2), !insn.addr !39
  %9 = call i32 @strlen(i8* nonnull %5), !insn.addr !40
  %10 = zext i32 %8 to i64, !insn.addr !41
  %11 = call i64 @_archive_dir(i64 %0, i64 %1, i64 %10, i32 %9), !insn.addr !42
  ret i64 %11, !insn.addr !43
}

define i64 @_archive_dir(i64 %arg1, i64 %arg2, i64 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_401250:
  %.reg2mem62 = alloca i64*, !insn.addr !44
  %indvars.iv.reg2mem = alloca i64, !insn.addr !44
  %stack_var_-72.0.ph.lcssa.reg2mem = alloca i64, !insn.addr !44
  %stack_var_-64.0.ph.lcssa.reg2mem = alloca i32, !insn.addr !44
  %stack_var_-60.0.ph16.reg2mem = alloca i32, !insn.addr !44
  %stack_var_-64.0.ph17.reg2mem = alloca i32, !insn.addr !44
  %stack_var_-72.0.ph18.reg2mem = alloca i64, !insn.addr !44
  %.reg2mem60 = alloca %dirent*, !insn.addr !44
  %stack_var_-72.1.reg2mem = alloca i64, !insn.addr !44
  %stack_var_-60.1.reg2mem = alloca i32, !insn.addr !44
  %.reg2mem = alloca %dirent*, !insn.addr !44
  %r9.0.reg2mem = alloca i64, !insn.addr !44
  %r8.0.reg2mem = alloca i64, !insn.addr !44
  %rdx.0.reg2mem = alloca i64, !insn.addr !44
  %rcx.0.reg2mem = alloca i64, !insn.addr !44
  %.pre-phi.reg2mem = alloca i8*, !insn.addr !44
  %0 = sext i32 %arg4 to i64
  %sext = mul i64 %arg3, 4294967296
  %1 = sdiv i64 %sext, 4294967296, !insn.addr !45
  %2 = load i32, i32* @global_var_604170, align 4, !insn.addr !46
  %3 = icmp eq i32 %2, 0, !insn.addr !46
  br i1 %3, label %dec_label_pc_401250.dec_label_pc_4012a0_crit_edge, label %dec_label_pc_401274, !insn.addr !47

dec_label_pc_401250.dec_label_pc_4012a0_crit_edge: ; preds = %dec_label_pc_401250
  %.pre = inttoptr i64 %arg1 to i8*, !insn.addr !48
  store i8* %.pre, i8** %.pre-phi.reg2mem
  store i64 %0, i64* %rcx.0.reg2mem
  store i64 %arg3, i64* %rdx.0.reg2mem
  br label %dec_label_pc_4012a0

dec_label_pc_401274:                              ; preds = %dec_label_pc_401250
  %4 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !49
  %5 = and i64 %1, 4294967295, !insn.addr !50
  %6 = zext i32 %arg4 to i64, !insn.addr !51
  %7 = inttoptr i64 %arg1 to i8*
  %8 = inttoptr i64 %arg2 to i8*, !insn.addr !52
  %9 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @global_var_4022ab, i64 0, i64 0), i8* %7, i8* %8, i64 %5, i64 %6), !insn.addr !52
  store i8* %7, i8** %.pre-phi.reg2mem, !insn.addr !53
  store i64 %arg2, i64* %rcx.0.reg2mem, !insn.addr !53
  store i64 %arg1, i64* %rdx.0.reg2mem, !insn.addr !53
  store i64 %5, i64* %r8.0.reg2mem, !insn.addr !53
  store i64 %6, i64* %r9.0.reg2mem, !insn.addr !53
  br label %dec_label_pc_4012a0, !insn.addr !53

dec_label_pc_4012a0:                              ; preds = %dec_label_pc_401250.dec_label_pc_4012a0_crit_edge, %dec_label_pc_401274
  %.pre-phi.reload = load i8*, i8** %.pre-phi.reg2mem
  %10 = call %__dirstream* @opendir(i8* %.pre-phi.reload), !insn.addr !48
  %11 = icmp eq %__dirstream* %10, null, !insn.addr !54
  %12 = icmp eq i1 %11, false, !insn.addr !55
  br i1 %12, label %dec_label_pc_4012cd, label %dec_label_pc_4012b8, !insn.addr !55

dec_label_pc_4012b8:                              ; preds = %dec_label_pc_4012a0
  %r9.0.reload = load i64, i64* %r9.0.reg2mem
  %r8.0.reload = load i64, i64* %r8.0.reg2mem
  %rdx.0.reload = load i64, i64* %rdx.0.reg2mem
  %rcx.0.reload = load i64, i64* %rcx.0.reg2mem
  %13 = call i64 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_4022ca, i64 0, i64 0), i64 %arg1, i64 %rdx.0.reload, i64 %rcx.0.reload, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !56
  unreachable, !insn.addr !56

dec_label_pc_4012cd:                              ; preds = %dec_label_pc_4012a0
  %14 = call i64* @malloc(i32 256), !insn.addr !57
  %15 = icmp eq i64* %14, null, !insn.addr !58
  %16 = icmp eq i1 %15, false, !insn.addr !59
  br i1 %16, label %dec_label_pc_401328.preheader, label %dec_label_pc_4012fa, !insn.addr !59

dec_label_pc_401328.preheader:                    ; preds = %dec_label_pc_4012cd
  %17 = call %dirent* @readdir(%__dirstream* %10), !insn.addr !60
  %18 = icmp eq %dirent* %17, null, !insn.addr !61
  br i1 %18, label %dec_label_pc_401451.thread, label %dec_label_pc_40133f.lr.ph.preheader, !insn.addr !62

dec_label_pc_40133f.lr.ph.preheader:              ; preds = %dec_label_pc_401328.preheader
  %19 = ptrtoint i64* %14 to i64, !insn.addr !57
  store %dirent* %17, %dirent** %.reg2mem60
  store i64 %19, i64* %stack_var_-72.0.ph18.reg2mem
  store i32 0, i32* %stack_var_-64.0.ph17.reg2mem
  store i32 32, i32* %stack_var_-60.0.ph16.reg2mem
  br label %dec_label_pc_40133f.lr.ph

dec_label_pc_401451.thread:                       ; preds = %dec_label_pc_401328.preheader
  call void @qsort(i64* %14, i32 0, i32 8, i32 (i64*, i64*)* inttoptr (i64 4200832 to i32 (i64*, i64*)*)), !insn.addr !63
  store i64* %14, i64** %.reg2mem62
  br label %dec_label_pc_4015b9

dec_label_pc_4012fa:                              ; preds = %dec_label_pc_4012cd
  %20 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !64
  %21 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @global_var_4022e5, i64 0, i64 0), i64 32), !insn.addr !65
  call void @exit(i32 1), !insn.addr !66
  unreachable, !insn.addr !66

dec_label_pc_40133f:                              ; preds = %dec_label_pc_40133f.lr.ph, %dec_label_pc_401328.backedge
  %.reload = load %dirent*, %dirent** %.reg2mem
  %22 = ptrtoint %dirent* %.reload to i64, !insn.addr !60
  %23 = add i64 %22, 19, !insn.addr !67
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8, i8* %24, align 1, !insn.addr !67
  %26 = icmp eq i8 %25, 46, !insn.addr !68
  %27 = icmp eq i1 %26, false, !insn.addr !69
  br i1 %27, label %dec_label_pc_401355, label %dec_label_pc_401328.backedge, !insn.addr !69

dec_label_pc_401328.backedge:                     ; preds = %dec_label_pc_40133f, %dec_label_pc_401355
  %28 = call %dirent* @readdir(%__dirstream* %10), !insn.addr !60
  %29 = icmp eq %dirent* %28, null, !insn.addr !61
  store %dirent* %28, %dirent** %.reg2mem, !insn.addr !62
  store i32 %stack_var_-64.0.ph17.reload, i32* %stack_var_-64.0.ph.lcssa.reg2mem, !insn.addr !62
  store i64 %stack_var_-72.0.ph18.reload, i64* %stack_var_-72.0.ph.lcssa.reg2mem, !insn.addr !62
  br i1 %29, label %dec_label_pc_401451, label %dec_label_pc_40133f, !insn.addr !62

dec_label_pc_401355:                              ; preds = %dec_label_pc_40133f
  %30 = call i32 @strcmp(i8* %24, i8* inttoptr (i32 ptrtoint ([5 x i8]* @global_var_402313 to i32) to i8*)), !insn.addr !70
  %31 = icmp eq i32 %30, 0, !insn.addr !71
  %32 = icmp eq i1 %31, false, !insn.addr !72
  br i1 %32, label %dec_label_pc_40137a, label %dec_label_pc_401328.backedge, !insn.addr !72

dec_label_pc_40137a:                              ; preds = %dec_label_pc_401355
  %33 = icmp slt i32 %stack_var_-64.0.ph17.reload, %stack_var_-60.0.ph16.reload, !insn.addr !73
  store i32 %stack_var_-60.0.ph16.reload, i32* %stack_var_-60.1.reg2mem, !insn.addr !73
  store i64 %stack_var_-72.0.ph18.reload, i64* %stack_var_-72.1.reg2mem, !insn.addr !73
  br i1 %33, label %dec_label_pc_4013e3, label %dec_label_pc_401386, !insn.addr !73

dec_label_pc_401386:                              ; preds = %dec_label_pc_40137a
  %34 = mul i32 %stack_var_-60.0.ph16.reload, 2, !insn.addr !74
  %35 = mul i32 %stack_var_-60.0.ph16.reload, 16, !insn.addr !75
  %36 = inttoptr i64 %stack_var_-72.0.ph18.reload to i64*, !insn.addr !76
  %37 = call i64* @realloc(i64* %36, i32 %35), !insn.addr !76
  %38 = ptrtoint i64* %37 to i64, !insn.addr !76
  %39 = icmp eq i64* %37, null, !insn.addr !77
  %40 = icmp eq i1 %39, false, !insn.addr !78
  store i32 %34, i32* %stack_var_-60.1.reg2mem, !insn.addr !78
  store i64 %38, i64* %stack_var_-72.1.reg2mem, !insn.addr !78
  br i1 %40, label %dec_label_pc_4013e3, label %dec_label_pc_4013b5, !insn.addr !78

dec_label_pc_4013b5:                              ; preds = %dec_label_pc_401386
  %41 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !79
  %42 = zext i32 %34 to i64, !insn.addr !80
  %43 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @global_var_402318, i64 0, i64 0), i64 %42), !insn.addr !81
  call void @exit(i32 1), !insn.addr !82
  unreachable, !insn.addr !82

dec_label_pc_4013e3:                              ; preds = %dec_label_pc_401386, %dec_label_pc_40137a
  %stack_var_-72.1.reload = load i64, i64* %stack_var_-72.1.reg2mem
  %44 = call i8* @strdup(i8* %24), !insn.addr !83
  %45 = ptrtoint i8* %44 to i64, !insn.addr !83
  %46 = sext i32 %stack_var_-64.0.ph17.reload to i64, !insn.addr !84
  %47 = mul i64 %46, 8, !insn.addr !85
  %48 = add i64 %stack_var_-72.1.reload, %47, !insn.addr !85
  %49 = inttoptr i64 %48 to i64*, !insn.addr !85
  store i64 %45, i64* %49, align 8, !insn.addr !85
  %50 = icmp eq i8* %44, null, !insn.addr !86
  %51 = icmp eq i1 %50, false, !insn.addr !87
  br i1 %51, label %dec_label_pc_401443, label %dec_label_pc_401412, !insn.addr !87

dec_label_pc_401412:                              ; preds = %dec_label_pc_4013e3
  %52 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !88
  %53 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_var_402348, i64 0, i64 0), i8* %24), !insn.addr !89
  call void @exit(i32 1), !insn.addr !90
  unreachable, !insn.addr !90

dec_label_pc_401443:                              ; preds = %dec_label_pc_4013e3
  %stack_var_-60.1.reload = load i32, i32* %stack_var_-60.1.reg2mem
  %54 = add i32 %stack_var_-64.0.ph17.reload, 1, !insn.addr !91
  %55 = call %dirent* @readdir(%__dirstream* %10), !insn.addr !60
  %56 = icmp eq %dirent* %55, null, !insn.addr !61
  store %dirent* %55, %dirent** %.reg2mem60, !insn.addr !62
  store i64 %stack_var_-72.1.reload, i64* %stack_var_-72.0.ph18.reg2mem, !insn.addr !62
  store i32 %54, i32* %stack_var_-64.0.ph17.reg2mem, !insn.addr !62
  store i32 %stack_var_-60.1.reload, i32* %stack_var_-60.0.ph16.reg2mem, !insn.addr !62
  store i32 %54, i32* %stack_var_-64.0.ph.lcssa.reg2mem, !insn.addr !62
  store i64 %stack_var_-72.1.reload, i64* %stack_var_-72.0.ph.lcssa.reg2mem, !insn.addr !62
  br i1 %56, label %dec_label_pc_401451, label %dec_label_pc_40133f.lr.ph, !insn.addr !62

dec_label_pc_40133f.lr.ph:                        ; preds = %dec_label_pc_40133f.lr.ph.preheader, %dec_label_pc_401443
  %stack_var_-60.0.ph16.reload = load i32, i32* %stack_var_-60.0.ph16.reg2mem
  %stack_var_-64.0.ph17.reload = load i32, i32* %stack_var_-64.0.ph17.reg2mem
  %stack_var_-72.0.ph18.reload = load i64, i64* %stack_var_-72.0.ph18.reg2mem
  %.reload61 = load %dirent*, %dirent** %.reg2mem60
  store %dirent* %.reload61, %dirent** %.reg2mem
  br label %dec_label_pc_40133f

dec_label_pc_401451:                              ; preds = %dec_label_pc_401443, %dec_label_pc_401328.backedge
  %stack_var_-72.0.ph.lcssa.reload = load i64, i64* %stack_var_-72.0.ph.lcssa.reg2mem
  %stack_var_-64.0.ph.lcssa.reload = load i32, i32* %stack_var_-64.0.ph.lcssa.reg2mem
  %57 = inttoptr i64 %stack_var_-72.0.ph.lcssa.reload to i64*, !insn.addr !63
  call void @qsort(i64* %57, i32 %stack_var_-64.0.ph.lcssa.reload, i32 8, i32 (i64*, i64*)* inttoptr (i64 4200832 to i32 (i64*, i64*)*)), !insn.addr !63
  %58 = icmp sgt i32 %stack_var_-64.0.ph.lcssa.reload, 0, !insn.addr !92
  store i64* %57, i64** %.reg2mem62, !insn.addr !92
  br i1 %58, label %dec_label_pc_401485.lr.ph, label %dec_label_pc_4015b9, !insn.addr !92

dec_label_pc_401485.lr.ph:                        ; preds = %dec_label_pc_401451
  %59 = add i64 %1, %arg1
  %60 = inttoptr i64 %59 to i8*
  %61 = add i64 %59, 1
  %62 = inttoptr i64 %61 to i64*
  %63 = icmp slt i32 %arg4, 1
  %64 = add i64 %0, %arg2
  %65 = inttoptr i64 %64 to i8*
  %66 = add i64 %64, 1
  %67 = inttoptr i64 %66 to i64*
  %68 = trunc i64 %1 to i32
  %69 = inttoptr i64 %arg2 to i64*
  %wide.trip.count = zext i32 %stack_var_-64.0.ph.lcssa.reload to i64
  store i64 0, i64* %indvars.iv.reg2mem
  br label %dec_label_pc_401485

dec_label_pc_401485:                              ; preds = %dec_label_pc_401582, %dec_label_pc_401485.lr.ph
  %indvars.iv.reload = load i64, i64* %indvars.iv.reg2mem
  %70 = mul i64 %indvars.iv.reload, 8, !insn.addr !93
  %71 = add i64 %70, %stack_var_-72.0.ph.lcssa.reload, !insn.addr !93
  %72 = inttoptr i64 %71 to i64*, !insn.addr !93
  %73 = load i64, i64* %72, align 8, !insn.addr !93
  %74 = inttoptr i64 %73 to i8*, !insn.addr !94
  %75 = call i32 @strlen(i8* %74), !insn.addr !94
  store i8 47, i8* %60, align 1, !insn.addr !95
  %76 = load i64, i64* %72, align 8, !insn.addr !96
  %77 = add i32 %75, 1
  %78 = inttoptr i64 %76 to i64*, !insn.addr !97
  %79 = call i64* @memcpy(i64* %62, i64* %78, i32 %77), !insn.addr !97
  br i1 %63, label %dec_label_pc_401545, label %dec_label_pc_4014dd, !insn.addr !98

dec_label_pc_4014dd:                              ; preds = %dec_label_pc_401485
  store i8 47, i8* %65, align 1, !insn.addr !99
  %80 = load i64, i64* %72, align 8, !insn.addr !100
  %81 = inttoptr i64 %80 to i64*, !insn.addr !101
  %82 = call i64* @memcpy(i64* %67, i64* %81, i32 %77), !insn.addr !101
  %83 = add i32 %77, %68, !insn.addr !102
  %84 = add i32 %77, %arg4, !insn.addr !103
  %85 = zext i32 %83 to i64, !insn.addr !104
  %86 = zext i32 %84 to i64, !insn.addr !105
  %87 = call i64 @_archive(i64 %arg1, i64 %arg2, i64 %85, i64 %86), !insn.addr !106
  br label %dec_label_pc_401582, !insn.addr !107

dec_label_pc_401545:                              ; preds = %dec_label_pc_401485
  %88 = load i64, i64* %72, align 8, !insn.addr !108
  %89 = inttoptr i64 %88 to i64*, !insn.addr !109
  %90 = call i64* @memcpy(i64* %69, i64* %89, i32 %77), !insn.addr !109
  %91 = add i32 %77, %68, !insn.addr !110
  %92 = zext i32 %75 to i64, !insn.addr !111
  %93 = zext i32 %91 to i64, !insn.addr !112
  %94 = call i64 @_archive(i64 %arg1, i64 %arg2, i64 %93, i64 %92), !insn.addr !113
  br label %dec_label_pc_401582, !insn.addr !113

dec_label_pc_401582:                              ; preds = %dec_label_pc_401545, %dec_label_pc_4014dd
  store i8 0, i8* %60, align 1, !insn.addr !114
  store i8 0, i8* %65, align 1, !insn.addr !115
  %95 = load i64, i64* %72, align 8, !insn.addr !116
  %96 = inttoptr i64 %95 to i64*, !insn.addr !117
  call void @free(i64* %96), !insn.addr !117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  store i64 %indvars.iv.next, i64* %indvars.iv.reg2mem, !insn.addr !92
  store i64* %57, i64** %.reg2mem62, !insn.addr !92
  br i1 %exitcond, label %dec_label_pc_4015b9, label %dec_label_pc_401485, !insn.addr !92

dec_label_pc_4015b9:                              ; preds = %dec_label_pc_401582, %dec_label_pc_401451.thread, %dec_label_pc_401451
  %.reload63 = load i64*, i64** %.reg2mem62
  call void @free(i64* %.reload63), !insn.addr !118
  %97 = call i32 @closedir(%__dirstream* %10), !insn.addr !119
  %98 = sext i32 %97 to i64, !insn.addr !119
  ret i64 %98, !insn.addr !120
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_4015e0:
  %stack_var_-32.0.reg2mem = alloca i8*, !insn.addr !121
  %stack_var_-24.12.reg2mem = alloca i64, !insn.addr !121
  %.in.reg2mem = alloca i32, !insn.addr !121
  %stack_var_-16.045.reg2mem = alloca i32, !insn.addr !121
  %stack_var_-24.036.reg2mem = alloca i64, !insn.addr !121
  %stack_var_-16.0.reg2mem = alloca i32, !insn.addr !121
  %stack_var_-24.0.reg2mem = alloca i64, !insn.addr !121
  %rsi.0.reg2mem = alloca i64, !insn.addr !121
  %rcx.0.reg2mem = alloca i64, !insn.addr !121
  %0 = call i64 @__decompiler_undefined_function_0()
  %1 = call i64 @__decompiler_undefined_function_0()
  %2 = call i64 @__decompiler_undefined_function_0()
  %3 = ptrtoint i8** %argv to i64
  %4 = trunc i64 %argc to i32, !insn.addr !122
  %5 = add i32 %4, -1, !insn.addr !123
  %6 = add i64 %3, 8, !insn.addr !124
  %7 = icmp slt i32 %5, 2, !insn.addr !125
  store i64 %6, i64* %rsi.0.reg2mem, !insn.addr !125
  store i64 %6, i64* %stack_var_-24.0.reg2mem, !insn.addr !125
  store i32 %5, i32* %stack_var_-16.0.reg2mem, !insn.addr !125
  br i1 %7, label %dec_label_pc_401653, label %dec_label_pc_401615, !insn.addr !125

dec_label_pc_401615:                              ; preds = %dec_label_pc_4015e0
  %8 = inttoptr i64 %6 to i64*, !insn.addr !126
  %9 = load i64, i64* %8, align 8, !insn.addr !126
  %10 = inttoptr i64 %9 to i8*, !insn.addr !127
  %11 = call i32 @strcmp(i8* %10, i8* inttoptr (i32 ptrtoint ([3 x i8]* @global_var_40228c to i32) to i8*)), !insn.addr !127
  %12 = icmp eq i32 %11, 0, !insn.addr !128
  %13 = icmp eq i1 %12, false, !insn.addr !129
  store i64 %6, i64* %stack_var_-24.036.reg2mem, !insn.addr !129
  store i32 %5, i32* %stack_var_-16.045.reg2mem, !insn.addr !129
  br i1 %13, label %dec_label_pc_401687.lr.ph, label %dec_label_pc_401631, !insn.addr !129

dec_label_pc_401631:                              ; preds = %dec_label_pc_401615
  %14 = add i64 %3, 16, !insn.addr !130
  %15 = inttoptr i64 %14 to i64*, !insn.addr !130
  %16 = load i64, i64* %15, align 8, !insn.addr !130
  %17 = call i64 @read_canned_config(i64 %16), !insn.addr !131
  %18 = add i32 %4, -3, !insn.addr !132
  %19 = zext i32 %18 to i64, !insn.addr !132
  %20 = add i64 %3, 24, !insn.addr !133
  store i64 %19, i64* %rcx.0.reg2mem, !insn.addr !134
  store i64 zext (i32 ptrtoint ([3 x i8]* @global_var_40228c to i32) to i64), i64* %rsi.0.reg2mem, !insn.addr !134
  store i64 %20, i64* %stack_var_-24.0.reg2mem, !insn.addr !134
  store i32 %18, i32* %stack_var_-16.0.reg2mem, !insn.addr !134
  br label %dec_label_pc_401653, !insn.addr !134

dec_label_pc_401653:                              ; preds = %dec_label_pc_401631, %dec_label_pc_4015e0
  %stack_var_-16.0.reload = load i32, i32* %stack_var_-16.0.reg2mem
  %21 = icmp eq i32 %stack_var_-16.0.reload, 0, !insn.addr !135
  %22 = icmp eq i1 %21, false, !insn.addr !136
  br i1 %22, label %dec_label_pc_401673.preheader, label %dec_label_pc_40165d, !insn.addr !136

dec_label_pc_401673.preheader:                    ; preds = %dec_label_pc_401653
  %stack_var_-24.0.reload = load i64, i64* %stack_var_-24.0.reg2mem
  %23 = icmp slt i32 %stack_var_-16.0.reload, 1, !insn.addr !137
  store i64 %stack_var_-24.0.reload, i64* %stack_var_-24.036.reg2mem, !insn.addr !137
  store i32 %stack_var_-16.0.reload, i32* %stack_var_-16.045.reg2mem, !insn.addr !137
  br i1 %23, label %dec_label_pc_4016ed, label %dec_label_pc_401687.lr.ph, !insn.addr !137

dec_label_pc_401687.lr.ph:                        ; preds = %dec_label_pc_401615, %dec_label_pc_401673.preheader
  %stack_var_-16.045.reload = load i32, i32* %stack_var_-16.045.reg2mem
  %stack_var_-24.036.reload = load i64, i64* %stack_var_-24.036.reg2mem
  store i32 %stack_var_-16.045.reload, i32* %.in.reg2mem
  store i64 %stack_var_-24.036.reload, i64* %stack_var_-24.12.reg2mem
  br label %dec_label_pc_401687

dec_label_pc_40165d:                              ; preds = %dec_label_pc_401653
  %rsi.0.reload = load i64, i64* %rsi.0.reg2mem
  %rcx.0.reload = load i64, i64* %rcx.0.reg2mem
  %24 = call i64 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @global_var_40228f, i64 0, i64 0), i64 %rsi.0.reload, i64 %2, i64 %rcx.0.reload, i64 %1, i64 %0), !insn.addr !138
  unreachable, !insn.addr !138

dec_label_pc_401687:                              ; preds = %dec_label_pc_401687.lr.ph, %dec_label_pc_4016cc
  %stack_var_-24.12.reload = load i64, i64* %stack_var_-24.12.reg2mem
  %.in.reload = load i32, i32* %.in.reg2mem
  %25 = inttoptr i64 %stack_var_-24.12.reload to i64*, !insn.addr !139
  %26 = load i64, i64* %25, align 8, !insn.addr !139
  %27 = inttoptr i64 %26 to i8*, !insn.addr !140
  %28 = call i8* @strchr(i8* %27, i32 61), !insn.addr !140
  %29 = icmp eq i8* %28, null, !insn.addr !141
  store i8* bitcast (i8** @global_var_402830 to i8*), i8** %stack_var_-32.0.reg2mem, !insn.addr !142
  br i1 %29, label %dec_label_pc_4016cc, label %dec_label_pc_4016a7, !insn.addr !142

dec_label_pc_4016a7:                              ; preds = %dec_label_pc_401687
  %30 = ptrtoint i8* %28 to i64, !insn.addr !143
  %31 = add i64 %30, 1, !insn.addr !144
  %32 = inttoptr i64 %31 to i8*, !insn.addr !145
  store i8 0, i8* %28, align 1, !insn.addr !146
  store i8* %32, i8** %stack_var_-32.0.reg2mem, !insn.addr !147
  br label %dec_label_pc_4016cc, !insn.addr !147

dec_label_pc_4016cc:                              ; preds = %dec_label_pc_401687, %dec_label_pc_4016a7
  %33 = add i32 %.in.reload, -1
  %stack_var_-32.0.reload = load i8*, i8** %stack_var_-32.0.reg2mem
  %34 = load i64, i64* %25, align 8, !insn.addr !148
  %35 = ptrtoint i8* %stack_var_-32.0.reload to i64, !insn.addr !149
  %36 = call i64 @archive(i64 %34, i64 %35), !insn.addr !150
  %37 = add i64 %stack_var_-24.12.reload, 8, !insn.addr !151
  %38 = icmp slt i32 %33, 1, !insn.addr !137
  store i32 %33, i32* %.in.reg2mem, !insn.addr !137
  store i64 %37, i64* %stack_var_-24.12.reg2mem, !insn.addr !137
  br i1 %38, label %dec_label_pc_4016ed, label %dec_label_pc_401687, !insn.addr !137

dec_label_pc_4016ed:                              ; preds = %dec_label_pc_4016cc, %dec_label_pc_401673.preheader
  %39 = call i64 @_eject_trailer(), !insn.addr !152
  ret i64 0, !insn.addr !153
}

define i64 @read_canned_config(i64 %arg1) local_unnamed_addr {
dec_label_pc_401700:
  %.reg2mem20 = alloca i64, !insn.addr !154
  %stack_var_-24.0.off04.lcssa18.reg2mem = alloca i64, !insn.addr !154
  %stack_var_-24.0.off04.lcssa19.reg2mem = alloca i64, !insn.addr !154
  %stack_var_-20.0.lcssa.reg2mem = alloca i32, !insn.addr !154
  %stack_var_-24.0.off04.lcssa.reg2mem = alloca i64, !insn.addr !154
  %stack_var_-24.0.off0.lcssa.reg2mem = alloca i32, !insn.addr !154
  %stack_var_-20.1.reg2mem = alloca i32, !insn.addr !154
  %.reg2mem = alloca i64, !insn.addr !154
  %stack_var_-24.0.off06.reg2mem = alloca i32, !insn.addr !154
  %stack_var_-24.0.off047.reg2mem = alloca i64, !insn.addr !154
  %stack_var_-20.08.reg2mem = alloca i32, !insn.addr !154
  %0 = call i64 @__decompiler_undefined_function_0()
  %1 = call i64 @__decompiler_undefined_function_0()
  %2 = call i64 @__decompiler_undefined_function_0()
  %3 = call i64 @__decompiler_undefined_function_0()
  %stack_var_-4232 = alloca i32, align 4
  %4 = call i64* @malloc(i32 192), !insn.addr !155
  %5 = ptrtoint i64* %4 to i64, !insn.addr !155
  store i64 %5, i64* @global_var_604178, align 8, !insn.addr !156
  %6 = inttoptr i64 %arg1 to i8*, !insn.addr !157
  %7 = call %_IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_402809, i64 0, i64 0)), !insn.addr !157
  %8 = icmp eq %_IO_FILE* %7, null, !insn.addr !158
  %9 = icmp eq i1 %8, false, !insn.addr !159
  br i1 %9, label %dec_label_pc_401770.preheader, label %dec_label_pc_40175a, !insn.addr !159

dec_label_pc_401770.preheader:                    ; preds = %dec_label_pc_401700
  %10 = bitcast i32* %stack_var_-4232 to i8*, !insn.addr !160
  %11 = call i8* @fgets(i8* nonnull %10, i32 4196, %_IO_FILE* %7), !insn.addr !160
  %12 = icmp eq i8* %11, null, !insn.addr !161
  store i32 8, i32* %stack_var_-20.08.reg2mem, !insn.addr !162
  store i64 0, i64* %stack_var_-24.0.off047.reg2mem, !insn.addr !162
  store i32 0, i32* %stack_var_-24.0.off06.reg2mem, !insn.addr !162
  store i64 0, i64* %stack_var_-24.0.off04.lcssa19.reg2mem, !insn.addr !162
  br i1 %12, label %dec_label_pc_40190e.dec_label_pc_401943_crit_edge, label %dec_label_pc_401792, !insn.addr !162

dec_label_pc_40175a:                              ; preds = %dec_label_pc_401700
  %13 = call i64 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_402813, i64 0, i64 0), i64 ptrtoint ([2 x i8]* @global_var_402809 to i64), i64 %2, i64 %3, i64 %1, i64 %0), !insn.addr !163
  unreachable, !insn.addr !163

dec_label_pc_401792:                              ; preds = %dec_label_pc_401770.preheader, %dec_label_pc_4018ab
  %stack_var_-24.0.off06.reload = load i32, i32* %stack_var_-24.0.off06.reg2mem
  %stack_var_-24.0.off047.reload = load i64, i64* %stack_var_-24.0.off047.reg2mem
  %stack_var_-20.08.reload = load i32, i32* %stack_var_-20.08.reg2mem
  %14 = load i32, i32* %stack_var_-4232, align 4, !insn.addr !164
  %15 = trunc i32 %14 to i8, !insn.addr !164
  %16 = icmp eq i8 %15, 0, !insn.addr !164
  %17 = icmp eq i1 %16, false, !insn.addr !165
  store i32 %stack_var_-24.0.off06.reload, i32* %stack_var_-24.0.off0.lcssa.reg2mem, !insn.addr !165
  store i64 %stack_var_-24.0.off047.reload, i64* %stack_var_-24.0.off04.lcssa.reg2mem, !insn.addr !165
  store i32 %stack_var_-20.08.reload, i32* %stack_var_-20.0.lcssa.reg2mem, !insn.addr !165
  br i1 %17, label %dec_label_pc_4017a4, label %dec_label_pc_40190e, !insn.addr !165

dec_label_pc_4017a4:                              ; preds = %dec_label_pc_401792
  %18 = icmp sgt i32 %stack_var_-20.08.reload, %stack_var_-24.0.off06.reload, !insn.addr !166
  br i1 %18, label %dec_label_pc_4017a4.dec_label_pc_4017d9_crit_edge, label %dec_label_pc_4017b0, !insn.addr !166

dec_label_pc_4017a4.dec_label_pc_4017d9_crit_edge: ; preds = %dec_label_pc_4017a4
  %.pre = load i64, i64* @global_var_604178, align 8
  store i64 %.pre, i64* %.reg2mem
  store i32 %stack_var_-20.08.reload, i32* %stack_var_-20.1.reg2mem
  br label %dec_label_pc_4017d9

dec_label_pc_4017b0:                              ; preds = %dec_label_pc_4017a4
  %19 = mul i32 %stack_var_-20.08.reload, 2, !insn.addr !167
  %20 = load i64, i64* @global_var_604178, align 8, !insn.addr !168
  %21 = mul i32 %stack_var_-20.08.reload, 48, !insn.addr !169
  %22 = inttoptr i64 %20 to i64*, !insn.addr !170
  %23 = call i64* @realloc(i64* %22, i32 %21), !insn.addr !170
  %24 = ptrtoint i64* %23 to i64, !insn.addr !170
  store i64 %24, i64* @global_var_604178, align 8, !insn.addr !171
  store i64 %24, i64* %.reg2mem, !insn.addr !171
  store i32 %19, i32* %stack_var_-20.1.reg2mem, !insn.addr !171
  br label %dec_label_pc_4017d9, !insn.addr !171

dec_label_pc_4017d9:                              ; preds = %dec_label_pc_4017a4.dec_label_pc_4017d9_crit_edge, %dec_label_pc_4017b0
  %stack_var_-20.1.reload = load i32, i32* %stack_var_-20.1.reg2mem
  %.reload = load i64, i64* %.reg2mem, !insn.addr !172
  %25 = add i64 %.reload, %stack_var_-24.0.off047.reload, !insn.addr !173
  %26 = call i16** @__ctype_b_loc(), !insn.addr !174
  %27 = load i16*, i16** %26, align 8, !insn.addr !175
  %28 = ptrtoint i16* %27 to i64, !insn.addr !175
  %29 = load i32, i32* %stack_var_-4232, align 4, !insn.addr !176
  %sext = mul i32 %29, 16777216
  %30 = sdiv i32 %sext, 16777216, !insn.addr !177
  %31 = sext i32 %30 to i64, !insn.addr !177
  %32 = mul i64 %31, 2, !insn.addr !178
  %33 = add i64 %32, %28, !insn.addr !178
  %34 = inttoptr i64 %33 to i16*, !insn.addr !178
  %35 = load i16, i16* %34, align 2, !insn.addr !178
  %36 = and i16 %35, 8192
  %37 = icmp eq i16 %36, 0, !insn.addr !179
  br i1 %37, label %dec_label_pc_40185e, label %dec_label_pc_401818, !insn.addr !180

dec_label_pc_401818:                              ; preds = %dec_label_pc_4017d9
  %38 = call i8* @strdup(i8* bitcast (i8** @global_var_402830 to i8*)), !insn.addr !181
  %39 = ptrtoint i8* %38 to i64, !insn.addr !181
  %40 = inttoptr i64 %25 to i64*, !insn.addr !182
  store i64 %39, i64* %40, align 8, !insn.addr !182
  %41 = call i8* @strtok(i8* nonnull %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40282e, i64 0, i64 0)), !insn.addr !183
  %42 = call i32 @atoi(i8* %41), !insn.addr !184
  %43 = add i64 %25, 8, !insn.addr !185
  %44 = inttoptr i64 %43 to i32*, !insn.addr !185
  store i32 %42, i32* %44, align 4, !insn.addr !185
  br label %dec_label_pc_4018ab, !insn.addr !186

dec_label_pc_40185e:                              ; preds = %dec_label_pc_4017d9
  %45 = call i8* @strtok(i8* nonnull %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40282e, i64 0, i64 0)), !insn.addr !187
  %46 = call i8* @strdup(i8* %45), !insn.addr !188
  %47 = ptrtoint i8* %46 to i64, !insn.addr !188
  %48 = inttoptr i64 %25 to i64*, !insn.addr !189
  store i64 %47, i64* %48, align 8, !insn.addr !189
  %49 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40282e, i64 0, i64 0)), !insn.addr !190
  %50 = call i32 @atoi(i8* %49), !insn.addr !191
  %51 = add i64 %25, 8, !insn.addr !192
  %52 = inttoptr i64 %51 to i32*, !insn.addr !192
  store i32 %50, i32* %52, align 4, !insn.addr !192
  br label %dec_label_pc_4018ab, !insn.addr !192

dec_label_pc_4018ab:                              ; preds = %dec_label_pc_40185e, %dec_label_pc_401818
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40282e, i64 0, i64 0)), !insn.addr !193
  %54 = call i32 @atoi(i8* %53), !insn.addr !194
  %55 = add i64 %25, 12, !insn.addr !195
  %56 = inttoptr i64 %55 to i32*, !insn.addr !195
  store i32 %54, i32* %56, align 4, !insn.addr !195
  %57 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_40282e, i64 0, i64 0)), !insn.addr !196
  %58 = call i32 @strtol(i8* %57, i8** null, i32 8), !insn.addr !197
  %59 = add i64 %25, 16, !insn.addr !198
  %60 = inttoptr i64 %59 to i32*, !insn.addr !198
  store i32 %58, i32* %60, align 4, !insn.addr !198
  %61 = add i32 %stack_var_-24.0.off06.reload, 1, !insn.addr !199
  %extract.t5 = sext i32 %61 to i64
  %phitmp = mul nsw i64 %extract.t5, 24
  %62 = call i8* @fgets(i8* nonnull %10, i32 4196, %_IO_FILE* %7), !insn.addr !160
  %63 = icmp eq i8* %62, null, !insn.addr !161
  store i32 %stack_var_-20.1.reload, i32* %stack_var_-20.08.reg2mem, !insn.addr !162
  store i64 %phitmp, i64* %stack_var_-24.0.off047.reg2mem, !insn.addr !162
  store i32 %61, i32* %stack_var_-24.0.off06.reg2mem, !insn.addr !162
  store i32 %61, i32* %stack_var_-24.0.off0.lcssa.reg2mem, !insn.addr !162
  store i64 %phitmp, i64* %stack_var_-24.0.off04.lcssa.reg2mem, !insn.addr !162
  store i32 %stack_var_-20.1.reload, i32* %stack_var_-20.0.lcssa.reg2mem, !insn.addr !162
  br i1 %63, label %dec_label_pc_40190e, label %dec_label_pc_401792, !insn.addr !162

dec_label_pc_40190e:                              ; preds = %dec_label_pc_4018ab, %dec_label_pc_401792
  %stack_var_-20.0.lcssa.reload = load i32, i32* %stack_var_-20.0.lcssa.reg2mem
  %stack_var_-24.0.off04.lcssa.reload = load i64, i64* %stack_var_-24.0.off04.lcssa.reg2mem
  %stack_var_-24.0.off0.lcssa.reload = load i32, i32* %stack_var_-24.0.off0.lcssa.reg2mem
  %64 = icmp sgt i32 %stack_var_-20.0.lcssa.reload, %stack_var_-24.0.off0.lcssa.reload, !insn.addr !200
  store i64 %stack_var_-24.0.off04.lcssa.reload, i64* %stack_var_-24.0.off04.lcssa19.reg2mem, !insn.addr !200
  br i1 %64, label %dec_label_pc_40190e.dec_label_pc_401943_crit_edge, label %dec_label_pc_40191a, !insn.addr !200

dec_label_pc_40190e.dec_label_pc_401943_crit_edge: ; preds = %dec_label_pc_401770.preheader, %dec_label_pc_40190e
  %stack_var_-24.0.off04.lcssa19.reload = load i64, i64* %stack_var_-24.0.off04.lcssa19.reg2mem
  %.pre17 = load i64, i64* @global_var_604178, align 8
  store i64 %stack_var_-24.0.off04.lcssa19.reload, i64* %stack_var_-24.0.off04.lcssa18.reg2mem
  store i64 %.pre17, i64* %.reg2mem20
  br label %dec_label_pc_401943

dec_label_pc_40191a:                              ; preds = %dec_label_pc_40190e
  %65 = load i64, i64* @global_var_604178, align 8, !insn.addr !201
  %66 = mul i32 %stack_var_-20.0.lcssa.reload, 24
  %67 = add i32 %66, 24, !insn.addr !202
  %68 = inttoptr i64 %65 to i64*, !insn.addr !203
  %69 = call i64* @realloc(i64* %68, i32 %67), !insn.addr !203
  %70 = ptrtoint i64* %69 to i64, !insn.addr !203
  store i64 %70, i64* @global_var_604178, align 8, !insn.addr !204
  store i64 %stack_var_-24.0.off04.lcssa.reload, i64* %stack_var_-24.0.off04.lcssa18.reg2mem, !insn.addr !204
  store i64 %70, i64* %.reg2mem20, !insn.addr !204
  br label %dec_label_pc_401943, !insn.addr !204

dec_label_pc_401943:                              ; preds = %dec_label_pc_40190e.dec_label_pc_401943_crit_edge, %dec_label_pc_40191a
  %.reload21 = load i64, i64* %.reg2mem20, !insn.addr !205
  %stack_var_-24.0.off04.lcssa18.reload = load i64, i64* %stack_var_-24.0.off04.lcssa18.reg2mem
  %71 = add i64 %.reload21, %stack_var_-24.0.off04.lcssa18.reload, !insn.addr !206
  %72 = inttoptr i64 %71 to i64*, !insn.addr !207
  store i64 0, i64* %72, align 8, !insn.addr !207
  %73 = call i32 @fclose(%_IO_FILE* %7), !insn.addr !208
  %74 = sext i32 %73 to i64, !insn.addr !208
  ret i64 %74, !insn.addr !209
}

define i64 @_archive(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_4019b0:
  %rax.0.reg2mem = alloca i64, !insn.addr !210
  %r9.0.reg2mem = alloca i64, !insn.addr !210
  %r8.0.reg2mem = alloca i64, !insn.addr !210
  %rdx.0.reg2mem = alloca i64, !insn.addr !210
  %rcx.0.reg2mem = alloca i64, !insn.addr !210
  %stack_var_-1224 = alloca i64, align 8
  %0 = call i32 @__decompiler_undefined_function_4()
  %1 = call i32 @__decompiler_undefined_function_4()
  %stack_var_-176 = alloca i64, align 8
  %sext = mul i64 %arg3, 4294967296
  %2 = sdiv i64 %sext, 4294967296, !insn.addr !211
  %sext4 = mul i64 %arg4, 4294967296
  %3 = sdiv i64 %sext4, 4294967296, !insn.addr !212
  %4 = load i32, i32* @global_var_604170, align 4, !insn.addr !213
  %5 = icmp eq i32 %4, 0, !insn.addr !213
  store i64 %arg4, i64* %rcx.0.reg2mem, !insn.addr !214
  store i64 %arg3, i64* %rdx.0.reg2mem, !insn.addr !214
  br i1 %5, label %dec_label_pc_401a06, label %dec_label_pc_4019d7, !insn.addr !214

dec_label_pc_4019d7:                              ; preds = %dec_label_pc_4019b0
  %6 = load %_IO_FILE*, %_IO_FILE** @global_var_604160, align 8, !insn.addr !215
  %7 = and i64 %2, 4294967295, !insn.addr !216
  %8 = and i64 %3, 4294967295, !insn.addr !217
  %9 = inttoptr i64 %arg1 to i8*, !insn.addr !218
  %10 = inttoptr i64 %arg2 to i8*, !insn.addr !218
  %11 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_402364, i64 0, i64 0), i8* %9, i8* %10, i64 %7, i64 %8), !insn.addr !218
  store i64 %arg2, i64* %rcx.0.reg2mem, !insn.addr !219
  store i64 %arg1, i64* %rdx.0.reg2mem, !insn.addr !219
  store i64 %7, i64* %r8.0.reg2mem, !insn.addr !219
  store i64 %8, i64* %r9.0.reg2mem, !insn.addr !219
  br label %dec_label_pc_401a06, !insn.addr !219

dec_label_pc_401a06:                              ; preds = %dec_label_pc_4019d7, %dec_label_pc_4019b0
  %r9.0.reload = load i64, i64* %r9.0.reg2mem
  %r8.0.reload = load i64, i64* %r8.0.reg2mem
  %rdx.0.reload = load i64, i64* %rdx.0.reg2mem
  %rcx.0.reload = load i64, i64* %rcx.0.reg2mem
  %12 = call i64 @lstat(i64 %arg1, i64* nonnull %stack_var_-176), !insn.addr !220
  %13 = trunc i64 %12 to i32, !insn.addr !221
  %14 = icmp eq i32 %13, 0, !insn.addr !221
  br i1 %14, label %dec_label_pc_401a34, label %dec_label_pc_401a1f, !insn.addr !222

dec_label_pc_401a1f:                              ; preds = %dec_label_pc_401a06
  %15 = call i64 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_40237f, i64 0, i64 0), i64 %arg1, i64 %rdx.0.reload, i64 %rcx.0.reload, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !223
  unreachable, !insn.addr !223

dec_label_pc_401a34:                              ; preds = %dec_label_pc_401a06
  %16 = and i32 %1, 61440, !insn.addr !224
  %17 = icmp eq i32 %16, 32768, !insn.addr !225
  %18 = icmp eq i1 %17, false, !insn.addr !226
  br i1 %18, label %dec_label_pc_401b39, label %dec_label_pc_401a4a, !insn.addr !226

dec_label_pc_401a4a:                              ; preds = %dec_label_pc_401a34
  %19 = inttoptr i64 %arg1 to i8*, !insn.addr !227
  %20 = call i32 (i8*, i32, ...) @open(i8* %19, i32 0), !insn.addr !227
  %21 = icmp slt i32 %20, 0, !insn.addr !228
  %22 = icmp eq i1 %21, false, !insn.addr !229
  br i1 %22, label %dec_label_pc_401a7f, label %dec_label_pc_401a6a, !insn.addr !229

dec_label_pc_401a6a:                              ; preds = %dec_label_pc_401a4a
  %23 = call i64 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @global_var_402394, i64 0, i64 0), i64 %arg1, i64 %rdx.0.reload, i64 %rcx.0.reload, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !230
  unreachable, !insn.addr !230

dec_label_pc_401a7f:                              ; preds = %dec_label_pc_401a4a
  %24 = call i64* @malloc(i32 %0), !insn.addr !231
  %25 = icmp eq i64* %24, null, !insn.addr !232
  %26 = icmp eq i1 %25, false, !insn.addr !233
  br i1 %26, label %dec_label_pc_401ab2, label %dec_label_pc_401a9d, !insn.addr !233

dec_label_pc_401a9d:                              ; preds = %dec_label_pc_401a7f
  %27 = sext i32 %0 to i64, !insn.addr !234
  %28 = call i64 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_var_4023ae, i64 0, i64 0), i64 %27, i64 %rdx.0.reload, i64 %rcx.0.reload, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !235
  unreachable, !insn.addr !235

dec_label_pc_401ab2:                              ; preds = %dec_label_pc_401a7f
  %29 = call i32 @read(i32 %20, i64* %24, i32 %0), !insn.addr !236
  %30 = icmp eq i32 %29, %0, !insn.addr !237
  br i1 %30, label %dec_label_pc_401ae7, label %dec_label_pc_401ad2, !insn.addr !238

dec_label_pc_401ad2:                              ; preds = %dec_label_pc_401ab2
  %31 = sext i32 %0 to i64, !insn.addr !239
  %32 = call i64 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_4023c7, i64 0, i64 0), i64 %31, i64 %31, i64 %rcx.0.reload, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !240
  unreachable, !insn.addr !240

dec_label_pc_401ae7:                              ; preds = %dec_label_pc_401ab2
  %33 = ptrtoint i64* %24 to i64, !insn.addr !231
  %34 = trunc i64 %3 to i32, !insn.addr !241
  %35 = call i64 @_eject(i64* nonnull %stack_var_-176, i64 %arg2, i32 %34, i64 %33, i32 %0), !insn.addr !242
  call void @free(i64* %24), !insn.addr !243
  %36 = call i32 @close(i32 %20), !insn.addr !244
  %37 = sext i32 %36 to i64, !insn.addr !244
  store i64 %37, i64* %rax.0.reg2mem, !insn.addr !245
  br label %dec_label_pc_401c23, !insn.addr !245

dec_label_pc_401b39:                              ; preds = %dec_label_pc_401a34
  %38 = icmp eq i32 %16, 16384, !insn.addr !246
  %39 = icmp eq i1 %38, false, !insn.addr !247
  br i1 %39, label %dec_label_pc_401b81, label %dec_label_pc_401b4f, !insn.addr !247

dec_label_pc_401b4f:                              ; preds = %dec_label_pc_401b39
  %40 = trunc i64 %3 to i32, !insn.addr !248
  %41 = call i64 @_eject(i64* nonnull %stack_var_-176, i64 %arg2, i32 %40, i64 0, i32 0), !insn.addr !249
  %42 = and i64 %2, 4294967295, !insn.addr !250
  %43 = call i64 @_archive_dir(i64 %arg1, i64 %arg2, i64 %42, i32 %40), !insn.addr !251
  store i64 %43, i64* %rax.0.reg2mem, !insn.addr !252
  br label %dec_label_pc_401c23, !insn.addr !252

dec_label_pc_401b81:                              ; preds = %dec_label_pc_401b39
  %44 = icmp eq i32 %16, 40960, !insn.addr !253
  %45 = icmp eq i1 %44, false, !insn.addr !254
  br i1 %45, label %dec_label_pc_401bfe, label %dec_label_pc_401b97, !insn.addr !254

dec_label_pc_401b97:                              ; preds = %dec_label_pc_401b81
  %46 = inttoptr i64 %arg1 to i8*, !insn.addr !255
  %47 = bitcast i64* %stack_var_-1224 to i8*, !insn.addr !255
  %48 = call i32 @readlink(i8* %46, i8* nonnull %47, i32 1024), !insn.addr !255
  %49 = icmp slt i32 %48, 0, !insn.addr !256
  %50 = icmp eq i1 %49, false, !insn.addr !257
  br i1 %50, label %dec_label_pc_401bd8, label %dec_label_pc_401bc3, !insn.addr !257

dec_label_pc_401bc3:                              ; preds = %dec_label_pc_401b97
  %51 = zext i32 %48 to i64, !insn.addr !258
  %52 = call i64 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_var_4023dc, i64 0, i64 0), i64 %arg1, i64 1024, i64 %51, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !259
  unreachable, !insn.addr !259

dec_label_pc_401bd8:                              ; preds = %dec_label_pc_401b97
  %53 = ptrtoint i64* %stack_var_-1224 to i64, !insn.addr !260
  %54 = trunc i64 %3 to i32, !insn.addr !261
  %55 = call i64 @_eject(i64* nonnull %stack_var_-176, i64 %arg2, i32 %54, i64 %53, i32 %48), !insn.addr !262
  store i64 %55, i64* %rax.0.reg2mem, !insn.addr !263
  br label %dec_label_pc_401c23, !insn.addr !263

dec_label_pc_401bfe:                              ; preds = %dec_label_pc_401b81
  %56 = zext i32 %1 to i64, !insn.addr !264
  %57 = call i64 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_var_4023f5, i64 0, i64 0), i64 %arg1, i64 %56, i64 %rcx.0.reload, i64 %r8.0.reload, i64 %r9.0.reload), !insn.addr !265
  unreachable, !insn.addr !265

dec_label_pc_401c23:                              ; preds = %dec_label_pc_401b4f, %dec_label_pc_401bd8, %dec_label_pc_401ae7
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !266
}

define i64 @_eject(i64* %arg1, i64 %arg2, i32 %arg3, i64 %arg4, i32 %arg5) local_unnamed_addr {
dec_label_pc_401c30:
  %rax.0.reg2mem = alloca i64, !insn.addr !267
  %0 = load i32, i32* @global_var_604174, align 4, !insn.addr !268
  %1 = urem i32 %0, 4, !insn.addr !269
  %2 = icmp eq i32 %1, 0, !insn.addr !270
  br i1 %2, label %dec_label_pc_401c81, label %dec_label_pc_401c61, !insn.addr !271

dec_label_pc_401c61:                              ; preds = %dec_label_pc_401c30, %dec_label_pc_401c61
  store i32 ptrtoint (i32* @global_var_604175 to i32), i32* @global_var_604174, align 4, !insn.addr !272
  %3 = call i32 @putchar(i32 0), !insn.addr !273
  %4 = load i32, i32* @global_var_604174, align 4, !insn.addr !268
  %5 = urem i32 %4, 4, !insn.addr !269
  %6 = icmp eq i32 %5, 0, !insn.addr !270
  br i1 %6, label %dec_label_pc_401c81, label %dec_label_pc_401c61, !insn.addr !271

dec_label_pc_401c81:                              ; preds = %dec_label_pc_401c61, %dec_label_pc_401c30
  %7 = sext i32 %arg3 to i64
  %8 = ptrtoint i64* %arg1 to i64
  %9 = call i64 @fix_stat(i64 %arg2, i64 %8, i64 %7), !insn.addr !274
  %10 = load i32, i32* inttoptr (i64 6308144 to i32*), align 16, !insn.addr !275
  %11 = add i32 %10, 1, !insn.addr !276
  store i32 %11, i32* bitcast (i64* @global_var_604130 to i32*), align 8, !insn.addr !277
  %12 = add i64 %8, 24, !insn.addr !278
  %13 = inttoptr i64 %12 to i32*, !insn.addr !278
  %14 = load i32, i32* %13, align 4, !insn.addr !278
  %15 = add i32 %arg3, 1, !insn.addr !279
  %16 = inttoptr i64 %arg2 to i8*, !insn.addr !280
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @global_var_40240e, i64 0, i64 0), i32 460545, i32 %10, i32 %14, i32 0, i32 0, i32 1, i32 0, i32 %arg5, i32 0, i32 0, i32 0, i32 0, i32 %15, i32 0, i8* %16, i8 0), !insn.addr !280
  %18 = add i32 %arg3, 111, !insn.addr !281
  %19 = load i32, i32* @global_var_604174, align 4, !insn.addr !282
  %20 = add i32 %18, %19, !insn.addr !282
  store i32 %20, i32* @global_var_604174, align 4, !insn.addr !283
  %21 = call i32 @strlen(i8* %16), !insn.addr !284
  %22 = sext i32 %21 to i64, !insn.addr !284
  %23 = zext i32 %arg3 to i64, !insn.addr !285
  %24 = icmp eq i64 %22, %23, !insn.addr !286
  br i1 %24, label %dec_label_pc_401d8b.preheader, label %dec_label_pc_401d75, !insn.addr !287

dec_label_pc_401d8b.preheader:                    ; preds = %dec_label_pc_401c81
  %25 = load i32, i32* @global_var_604174, align 4, !insn.addr !288
  %26 = urem i32 %25, 4, !insn.addr !289
  %27 = icmp eq i32 %26, 0, !insn.addr !290
  br i1 %27, label %dec_label_pc_401dbe, label %dec_label_pc_401d9e, !insn.addr !291

dec_label_pc_401d75:                              ; preds = %dec_label_pc_401c81
  %28 = zext i32 %10 to i64, !insn.addr !292
  %29 = call i64 @die(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_var_40244b, i64 0, i64 0), i64 460545, i64 %28, i64 %23, i64 0, i64 0), !insn.addr !293
  unreachable, !insn.addr !293

dec_label_pc_401d9e:                              ; preds = %dec_label_pc_401d8b.preheader, %dec_label_pc_401d9e
  store i32 ptrtoint (i32* @global_var_604175 to i32), i32* @global_var_604174, align 4, !insn.addr !294
  %30 = call i32 @putchar(i32 0), !insn.addr !295
  %31 = load i32, i32* @global_var_604174, align 4, !insn.addr !288
  %32 = urem i32 %31, 4, !insn.addr !289
  %33 = icmp eq i32 %32, 0, !insn.addr !290
  br i1 %33, label %dec_label_pc_401dbe, label %dec_label_pc_401d9e, !insn.addr !291

dec_label_pc_401dbe:                              ; preds = %dec_label_pc_401d9e, %dec_label_pc_401d8b.preheader
  %34 = icmp eq i32 %arg5, 0, !insn.addr !296
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !297
  br i1 %34, label %dec_label_pc_401dfd, label %dec_label_pc_401dc8, !insn.addr !297

dec_label_pc_401dc8:                              ; preds = %dec_label_pc_401dbe
  %35 = load %_IO_FILE*, %_IO_FILE** @global_var_604140, align 8, !insn.addr !298
  %36 = inttoptr i64 %arg4 to i64*, !insn.addr !299
  %37 = call i32 @fwrite(i64* %36, i32 %arg5, i32 1, %_IO_FILE* %35), !insn.addr !299
  %38 = sext i32 %37 to i64, !insn.addr !299
  %39 = load i32, i32* @global_var_604174, align 4, !insn.addr !300
  %40 = add i32 %39, %arg5, !insn.addr !300
  store i32 %40, i32* @global_var_604174, align 4, !insn.addr !301
  store i64 %38, i64* %rax.0.reg2mem, !insn.addr !302
  br label %dec_label_pc_401dfd, !insn.addr !302

dec_label_pc_401dfd:                              ; preds = %dec_label_pc_401dc8, %dec_label_pc_401dbe
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !303
}

define i64 @fix_stat(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_401e10:
  %stack_var_-40.0.lcssa.reg2mem = alloca i64, !insn.addr !304
  %stack_var_-40.03.reg2mem = alloca i64, !insn.addr !304
  %storemerge4.reg2mem = alloca i64, !insn.addr !304
  %.reg2mem = alloca i64, !insn.addr !304
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-52 = alloca i32, align 4
  %0 = load i64, i64* @global_var_604178, align 8, !insn.addr !305
  %1 = icmp eq i64 %0, 0, !insn.addr !305
  br i1 %1, label %dec_label_pc_401f14, label %dec_label_pc_401e43.preheader, !insn.addr !306

dec_label_pc_401e43.preheader:                    ; preds = %dec_label_pc_401e10
  %2 = inttoptr i64 %0 to i64*, !insn.addr !307
  %3 = load i64, i64* %2, align 8, !insn.addr !307
  %4 = icmp eq i64 %3, 0, !insn.addr !307
  store i64 0, i64* %stack_var_-40.0.lcssa.reg2mem, !insn.addr !308
  br i1 %4, label %dec_label_pc_401ed6, label %dec_label_pc_401e51.lr.ph, !insn.addr !308

dec_label_pc_401e51.lr.ph:                        ; preds = %dec_label_pc_401e43.preheader
  %5 = inttoptr i64 %arg1 to i8*, !insn.addr !309
  store i64 %3, i64* %.reg2mem
  store i64 %0, i64* %storemerge4.reg2mem
  store i64 0, i64* %stack_var_-40.03.reg2mem
  br label %dec_label_pc_401e51

dec_label_pc_401e51:                              ; preds = %dec_label_pc_401e51.lr.ph, %dec_label_pc_401ec5
  %storemerge4.reload = load i64, i64* %storemerge4.reg2mem
  %.reload = load i64, i64* %.reg2mem
  %6 = inttoptr i64 %.reload to i8*, !insn.addr !310
  %7 = load i8, i8* %6, align 1, !insn.addr !310
  %8 = call i32 @strcmp(i8* %6, i8* %5), !insn.addr !309
  %9 = icmp eq i32 %8, 0, !insn.addr !311
  %10 = icmp eq i1 %9, false, !insn.addr !312
  br i1 %10, label %dec_label_pc_401ec5, label %dec_label_pc_401e82, !insn.addr !312

dec_label_pc_401e82:                              ; preds = %dec_label_pc_401e51
  %11 = add i64 %storemerge4.reload, 8, !insn.addr !313
  %12 = inttoptr i64 %11 to i32*, !insn.addr !313
  %13 = load i32, i32* %12, align 4, !insn.addr !313
  %14 = add i64 %arg2, 28, !insn.addr !314
  %15 = inttoptr i64 %14 to i32*, !insn.addr !314
  store i32 %13, i32* %15, align 4, !insn.addr !314
  %16 = add i64 %storemerge4.reload, 12, !insn.addr !315
  %17 = inttoptr i64 %16 to i32*, !insn.addr !315
  %18 = load i32, i32* %17, align 4, !insn.addr !315
  %19 = add i64 %arg2, 32, !insn.addr !316
  %20 = inttoptr i64 %19 to i32*, !insn.addr !316
  store i32 %18, i32* %20, align 4, !insn.addr !316
  %21 = add i64 %storemerge4.reload, 16, !insn.addr !317
  %22 = inttoptr i64 %21 to i32*, !insn.addr !317
  %23 = load i32, i32* %22, align 4, !insn.addr !317
  %24 = add i64 %arg2, 24, !insn.addr !318
  %25 = inttoptr i64 %24 to i32*, !insn.addr !318
  %26 = load i32, i32* %25, align 4, !insn.addr !318
  %27 = and i32 %26, -4096, !insn.addr !319
  %28 = or i32 %27, %23, !insn.addr !320
  store i32 %28, i32* %25, align 4, !insn.addr !321
  br label %dec_label_pc_401f6b, !insn.addr !322

dec_label_pc_401ec5:                              ; preds = %dec_label_pc_401e51
  %stack_var_-40.03.reload = load i64, i64* %stack_var_-40.03.reg2mem
  %29 = icmp eq i8 %7, 0, !insn.addr !310
  %30 = icmp eq i1 %29, false, !insn.addr !323
  %spec.select = select i1 %30, i64 %stack_var_-40.03.reload, i64 %storemerge4.reload
  %31 = add i64 %storemerge4.reload, 24, !insn.addr !324
  %32 = inttoptr i64 %31 to i64*, !insn.addr !307
  %33 = load i64, i64* %32, align 8, !insn.addr !307
  %34 = icmp eq i64 %33, 0, !insn.addr !307
  store i64 %33, i64* %.reg2mem, !insn.addr !308
  store i64 %31, i64* %storemerge4.reg2mem, !insn.addr !308
  store i64 %spec.select, i64* %stack_var_-40.03.reg2mem, !insn.addr !308
  store i64 %spec.select, i64* %stack_var_-40.0.lcssa.reg2mem, !insn.addr !308
  br i1 %34, label %dec_label_pc_401ed6, label %dec_label_pc_401e51, !insn.addr !308

dec_label_pc_401ed6:                              ; preds = %dec_label_pc_401ec5, %dec_label_pc_401e43.preheader
  %stack_var_-40.0.lcssa.reload = load i64, i64* %stack_var_-40.0.lcssa.reg2mem
  %35 = add i64 %stack_var_-40.0.lcssa.reload, 8, !insn.addr !325
  %36 = inttoptr i64 %35 to i32*, !insn.addr !325
  %37 = load i32, i32* %36, align 4, !insn.addr !325
  %38 = add i64 %arg2, 28, !insn.addr !326
  %39 = inttoptr i64 %38 to i32*, !insn.addr !326
  store i32 %37, i32* %39, align 4, !insn.addr !326
  %40 = add i64 %stack_var_-40.0.lcssa.reload, 12, !insn.addr !327
  %41 = inttoptr i64 %40 to i32*, !insn.addr !327
  %42 = load i32, i32* %41, align 4, !insn.addr !327
  %43 = add i64 %arg2, 32, !insn.addr !328
  %44 = inttoptr i64 %43 to i32*, !insn.addr !328
  store i32 %42, i32* %44, align 4, !insn.addr !328
  %45 = add i64 %stack_var_-40.0.lcssa.reload, 16, !insn.addr !329
  %46 = inttoptr i64 %45 to i32*, !insn.addr !329
  %47 = load i32, i32* %46, align 4, !insn.addr !329
  %48 = add i64 %arg2, 24, !insn.addr !330
  %49 = inttoptr i64 %48 to i32*, !insn.addr !330
  %50 = load i32, i32* %49, align 4, !insn.addr !330
  %51 = and i32 %50, -4096, !insn.addr !331
  %52 = or i32 %51, %47, !insn.addr !332
  store i32 %52, i32* %49, align 4, !insn.addr !333
  br label %dec_label_pc_401f6b, !insn.addr !334

dec_label_pc_401f14:                              ; preds = %dec_label_pc_401e10
  %53 = add i64 %arg2, 24, !insn.addr !335
  %54 = inttoptr i64 %53 to i32*, !insn.addr !335
  %55 = load i32, i32* %54, align 4, !insn.addr !335
  store i32 %55, i32* %stack_var_-52, align 4, !insn.addr !336
  %56 = load i32, i32* %54, align 4, !insn.addr !337
  %57 = and i32 %56, 61440, !insn.addr !338
  %58 = icmp eq i32 %57, 16384, !insn.addr !339
  %59 = zext i1 %58 to i64, !insn.addr !340
  %60 = add i64 %arg2, 28, !insn.addr !341
  %61 = add i64 %arg2, 32, !insn.addr !342
  %62 = sext i32 %55 to i64, !insn.addr !343
  %63 = call i64 @fs_config(i64 %arg1, i64 %59, i64 %60, i64 %61, i32* nonnull %stack_var_-52, i64* nonnull %stack_var_-32, i64 %62), !insn.addr !343
  %64 = load i32, i32* %stack_var_-52, align 4, !insn.addr !344
  store i32 %64, i32* %54, align 4, !insn.addr !345
  br label %dec_label_pc_401f6b, !insn.addr !345

dec_label_pc_401f6b:                              ; preds = %dec_label_pc_401f14, %dec_label_pc_401ed6, %dec_label_pc_401e82
  ret i64 %arg2, !insn.addr !346
}

define i64 @fs_config(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i32* %arg5, i64* %arg6, i64 %arg7) local_unnamed_addr {
dec_label_pc_401f80:
  %.lcssa.reg2mem = alloca i64, !insn.addr !347
  %stack_var_-64.0.lcssa.reg2mem = alloca i32*, !insn.addr !347
  %stack_var_-64.05.reg2mem = alloca i32*, !insn.addr !347
  %.reg2mem43 = alloca i64, !insn.addr !347
  %.reg2mem41 = alloca i64*, !insn.addr !347
  %.reg2mem = alloca i64, !insn.addr !347
  %r8 = alloca i64, align 8
  %0 = call i64 @__decompiler_undefined_function_0()
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 47, !insn.addr !348
  %3 = zext i1 %2 to i64
  %spec.select = add i64 %3, %arg1
  %4 = trunc i64 %arg2 to i32, !insn.addr !349
  %5 = icmp eq i32 %4, 0, !insn.addr !350
  %6 = icmp eq i1 %5, false, !insn.addr !351
  %7 = select i1 %6, i32* bitcast (i32** @global_var_402840 to i32*), i32* bitcast (i64* @global_var_402b00 to i32*), !insn.addr !352
  %8 = inttoptr i64 %spec.select to i8*, !insn.addr !353
  %9 = call i32 @strlen(i8* %8), !insn.addr !353
  %10 = ptrtoint i32* %7 to i64, !insn.addr !354
  %11 = add i64 %10, 24, !insn.addr !355
  %12 = inttoptr i64 %11 to i64*, !insn.addr !355
  %13 = load i64, i64* %12, align 8, !insn.addr !355
  %14 = icmp eq i64 %13, 0, !insn.addr !355
  store i64 %13, i64* %.reg2mem, !insn.addr !356
  store i64* %12, i64** %.reg2mem41, !insn.addr !356
  store i64 %10, i64* %.reg2mem43, !insn.addr !356
  store i32* %7, i32** %stack_var_-64.05.reg2mem, !insn.addr !356
  store i32* %7, i32** %stack_var_-64.0.lcssa.reg2mem, !insn.addr !356
  store i64 %10, i64* %.lcssa.reg2mem, !insn.addr !356
  br i1 %14, label %dec_label_pc_4020e9, label %dec_label_pc_401ffa, !insn.addr !356

dec_label_pc_401ffa:                              ; preds = %dec_label_pc_401f80, %dec_label_pc_4020d8
  %stack_var_-64.05.reload = load i32*, i32** %stack_var_-64.05.reg2mem
  %.reload44 = load i64, i64* %.reg2mem43
  %.reload42 = load i64*, i64** %.reg2mem41
  %.reload = load i64, i64* %.reg2mem
  %15 = inttoptr i64 %.reload to i8*, !insn.addr !357
  %16 = call i32 @strlen(i8* %15), !insn.addr !357
  br i1 %5, label %dec_label_pc_40204f, label %dec_label_pc_402016, !insn.addr !358

dec_label_pc_402016:                              ; preds = %dec_label_pc_401ffa
  %17 = icmp slt i32 %9, %16, !insn.addr !359
  br i1 %17, label %dec_label_pc_4020d8, label %dec_label_pc_402027, !insn.addr !359

dec_label_pc_402027:                              ; preds = %dec_label_pc_402016
  %18 = load i64, i64* %.reload42, align 8, !insn.addr !360
  %19 = inttoptr i64 %18 to i8*, !insn.addr !361
  %20 = call i32 @strncmp(i8* %19, i8* %8, i32 %16), !insn.addr !361
  %21 = icmp eq i32 %20, 0, !insn.addr !362
  %22 = icmp eq i1 %21, false, !insn.addr !363
  store i32* %stack_var_-64.05.reload, i32** %stack_var_-64.0.lcssa.reg2mem, !insn.addr !363
  store i64 %.reload44, i64* %.lcssa.reg2mem, !insn.addr !363
  br i1 %22, label %dec_label_pc_4020d8, label %dec_label_pc_4020e9, !insn.addr !363

dec_label_pc_40204f:                              ; preds = %dec_label_pc_401ffa
  %23 = load i64, i64* %.reload42, align 8, !insn.addr !364
  %24 = add i32 %16, -1, !insn.addr !365
  %25 = sext i32 %24 to i64, !insn.addr !366
  %26 = add i64 %23, %25, !insn.addr !367
  %27 = inttoptr i64 %26 to i8*, !insn.addr !367
  %28 = load i8, i8* %27, align 1, !insn.addr !367
  %29 = icmp eq i8 %28, 42, !insn.addr !368
  %30 = icmp eq i1 %29, false, !insn.addr !369
  br i1 %30, label %dec_label_pc_40209a, label %dec_label_pc_40206d, !insn.addr !369

dec_label_pc_40206d:                              ; preds = %dec_label_pc_40204f
  %31 = inttoptr i64 %23 to i8*, !insn.addr !370
  %32 = call i32 @strncmp(i8* %31, i8* %8, i32 %24), !insn.addr !370
  %33 = icmp eq i32 %32, 0, !insn.addr !371
  %34 = icmp eq i1 %33, false, !insn.addr !372
  store i32* %stack_var_-64.05.reload, i32** %stack_var_-64.0.lcssa.reg2mem, !insn.addr !372
  store i64 %.reload44, i64* %.lcssa.reg2mem, !insn.addr !372
  br i1 %34, label %dec_label_pc_4020d8, label %dec_label_pc_4020e9, !insn.addr !372

dec_label_pc_40209a:                              ; preds = %dec_label_pc_40204f
  %35 = icmp eq i32 %9, %16, !insn.addr !373
  %36 = icmp eq i1 %35, false, !insn.addr !374
  br i1 %36, label %dec_label_pc_4020d8, label %dec_label_pc_4020a6, !insn.addr !374

dec_label_pc_4020a6:                              ; preds = %dec_label_pc_40209a
  %37 = inttoptr i64 %23 to i8*, !insn.addr !375
  %38 = call i32 @strncmp(i8* %37, i8* %8, i32 %16), !insn.addr !375
  %39 = icmp eq i32 %38, 0, !insn.addr !376
  %40 = icmp eq i1 %39, false, !insn.addr !377
  store i32* %stack_var_-64.05.reload, i32** %stack_var_-64.0.lcssa.reg2mem, !insn.addr !377
  store i64 %.reload44, i64* %.lcssa.reg2mem, !insn.addr !377
  br i1 %40, label %dec_label_pc_4020d8, label %dec_label_pc_4020e9, !insn.addr !377

dec_label_pc_4020d8:                              ; preds = %dec_label_pc_40206d, %dec_label_pc_4020a6, %dec_label_pc_40209a, %dec_label_pc_402027, %dec_label_pc_402016
  %41 = add i64 %.reload44, 32, !insn.addr !378
  %42 = inttoptr i64 %41 to i32*
  %43 = add i64 %.reload44, 56, !insn.addr !355
  %44 = inttoptr i64 %43 to i64*, !insn.addr !355
  %45 = load i64, i64* %44, align 8, !insn.addr !355
  %46 = icmp eq i64 %45, 0, !insn.addr !355
  store i64 %45, i64* %.reg2mem, !insn.addr !356
  store i64* %44, i64** %.reg2mem41, !insn.addr !356
  store i64 %41, i64* %.reg2mem43, !insn.addr !356
  store i32* %42, i32** %stack_var_-64.05.reg2mem, !insn.addr !356
  store i32* %42, i32** %stack_var_-64.0.lcssa.reg2mem, !insn.addr !356
  store i64 %41, i64* %.lcssa.reg2mem, !insn.addr !356
  br i1 %46, label %dec_label_pc_4020e9, label %dec_label_pc_401ffa, !insn.addr !356

dec_label_pc_4020e9:                              ; preds = %dec_label_pc_4020a6, %dec_label_pc_40206d, %dec_label_pc_402027, %dec_label_pc_4020d8, %dec_label_pc_401f80
  %.lcssa.reload = load i64, i64* %.lcssa.reg2mem
  %stack_var_-64.0.lcssa.reload = load i32*, i32** %stack_var_-64.0.lcssa.reg2mem
  %47 = add i64 %.lcssa.reload, 4, !insn.addr !379
  %48 = inttoptr i64 %47 to i32*, !insn.addr !379
  %49 = load i32, i32* %48, align 4, !insn.addr !379
  %50 = inttoptr i64 %arg3 to i32*, !insn.addr !380
  store i32 %49, i32* %50, align 4, !insn.addr !380
  %51 = add i64 %.lcssa.reload, 8, !insn.addr !381
  %52 = inttoptr i64 %51 to i32*, !insn.addr !381
  %53 = load i32, i32* %52, align 4, !insn.addr !381
  %54 = inttoptr i64 %arg4 to i32*, !insn.addr !382
  store i32 %53, i32* %54, align 4, !insn.addr !382
  %55 = bitcast i64* %r8 to i32*
  %56 = load i32, i32* %55, align 8, !insn.addr !383
  %57 = and i32 %56, -4096, !insn.addr !384
  %58 = load i32, i32* %stack_var_-64.0.lcssa.reload, align 4, !insn.addr !385
  %59 = or i32 %57, %58, !insn.addr !385
  store i32 %59, i32* %arg5, align 4, !insn.addr !386
  %60 = add i64 %.lcssa.reload, 16, !insn.addr !387
  %61 = inttoptr i64 %60 to i64*, !insn.addr !387
  %62 = load i64, i64* %61, align 8, !insn.addr !387
  store i64 %62, i64* %arg6, align 8, !insn.addr !388
  ret i64 %62, !insn.addr !389
}

define i64 @_eject_trailer() local_unnamed_addr {
dec_label_pc_402130:
  %stack_var_-152 = alloca i64, align 8
  %0 = call i64* @memset(i64* nonnull %stack_var_-152, i32 0, i32 144), !insn.addr !390
  %1 = call i64 @_eject(i64* nonnull %stack_var_-152, i64 ptrtoint ([11 x i8]* @global_var_402831 to i64), i32 10, i64 0, i32 0), !insn.addr !391
  %2 = load i32, i32* @global_var_604174, align 4, !insn.addr !392
  %3 = urem i32 %2, 256, !insn.addr !393
  %4 = icmp eq i32 %3, 0, !insn.addr !394
  br i1 %4, label %dec_label_pc_4021cc, label %dec_label_pc_4021a9, !insn.addr !395

dec_label_pc_4021a9:                              ; preds = %dec_label_pc_402130, %dec_label_pc_4021a9
  store i32 ptrtoint (i32* @global_var_604175 to i32), i32* @global_var_604174, align 4, !insn.addr !396
  %5 = call i32 @putchar(i32 0), !insn.addr !397
  %6 = load i32, i32* @global_var_604174, align 4, !insn.addr !392
  %7 = urem i32 %6, 256, !insn.addr !393
  %8 = icmp eq i32 %7, 0, !insn.addr !394
  br i1 %8, label %dec_label_pc_4021cc, label %dec_label_pc_4021a9, !insn.addr !395

dec_label_pc_4021cc:                              ; preds = %dec_label_pc_4021a9, %dec_label_pc_402130
  ret i64 0, !insn.addr !398
}

define i64 @lstat(i64 %arg1, i64* %arg2) local_unnamed_addr {
dec_label_pc_402260:
  %0 = inttoptr i64 %arg1 to i8*, !insn.addr !399
  %1 = bitcast i64* %arg2 to %stat*, !insn.addr !399
  %2 = call i32 @__lxstat(i32 1, i8* %0, %stat* %1), !insn.addr !399
  %3 = sext i32 %2 to i64, !insn.addr !399
  ret i64 %3, !insn.addr !399
}

declare void @free(i64*) local_unnamed_addr

declare i32 @putchar(i32) local_unnamed_addr

declare i32 @strncmp(i8*, i8*, i32) local_unnamed_addr

declare i8* @strcpy(i8*, i8*) local_unnamed_addr

declare void @qsort(i64*, i32, i32, i32 (i64*, i64*)*) local_unnamed_addr

declare i32 @readlink(i8*, i8*, i32) local_unnamed_addr

declare i32 @fclose(%_IO_FILE*) local_unnamed_addr

declare %__dirstream* @opendir(i8*) local_unnamed_addr

declare i32 @strlen(i8*) local_unnamed_addr

declare i32 @__lxstat(i32, i8*, %stat*) local_unnamed_addr

declare i8* @strchr(i8*, i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i64* @memset(i64*, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @closedir(%__dirstream*) local_unnamed_addr

declare i32 @read(i32, i64*, i32) local_unnamed_addr

declare i8* @fgets(i8*, i32, %_IO_FILE*) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @fprintf(%_IO_FILE*, i8*, ...) local_unnamed_addr

declare i32 @strtol(i8*, i8**, i32) local_unnamed_addr

declare i64* @memcpy(i64*, i64*, i32) local_unnamed_addr

declare %dirent* @readdir(%__dirstream*) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare i64* @realloc(i64*, i32) local_unnamed_addr

declare i32 @open(i8*, i32, ...) local_unnamed_addr

declare %_IO_FILE* @fopen(i8*, i8*) local_unnamed_addr

declare i8* @strtok(i8*, i8*) local_unnamed_addr

declare i32 @vfprintf(%_IO_FILE*, i8*, i64) local_unnamed_addr

declare i32 @atoi(i8*) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @fwrite(i64*, i32, i32, %_IO_FILE*) local_unnamed_addr

declare i8* @strdup(i8*) local_unnamed_addr

declare i16** @__ctype_b_loc() local_unnamed_addr

declare i64 @__asm_movaps(i128) local_unnamed_addr

declare i128 @__asm_movaps.1(i128) local_unnamed_addr

declare i64 @__decompiler_undefined_function_0() local_unnamed_addr

declare i128 @__decompiler_undefined_function_1() local_unnamed_addr

declare i32 @__decompiler_undefined_function_4() local_unnamed_addr

!0 = !{i64 4198379}
!1 = !{i64 4198381}
!2 = !{i64 4198388}
!3 = !{i64 4198395}
!4 = !{i64 4198402}
!5 = !{i64 4198409}
!6 = !{i64 4198416}
!7 = !{i64 4198423}
!8 = !{i64 4198430}
!9 = !{i64 4198479}
!10 = !{i64 4198485}
!11 = !{i64 4198492}
!12 = !{i64 4198499}
!13 = !{i64 4198506}
!14 = !{i64 4198513}
!15 = !{i64 4198520}
!16 = !{i64 4198524}
!17 = !{i64 4198531}
!18 = !{i64 4198535}
!19 = !{i64 4198542}
!20 = !{i64 4198546}
!21 = !{i64 4198553}
!22 = !{i64 4198557}
!23 = !{i64 4198564}
!24 = !{i64 4198568}
!25 = !{i64 4198575}
!26 = !{i64 4198691}
!27 = !{i64 4198698}
!28 = !{i64 4198718}
!29 = !{i64 4198723}
!30 = !{i64 4198727}
!31 = !{i64 4198745}
!32 = !{i64 4198750}
!33 = !{i64 4198776}
!34 = !{i64 4198803}
!35 = !{i64 4198856}
!36 = !{i64 4198863}
!37 = !{i64 4198870}
!38 = !{i64 4198893}
!39 = !{i64 4198912}
!40 = !{i64 4198932}
!41 = !{i64 4198966}
!42 = !{i64 4198975}
!43 = !{i64 4198988}
!44 = !{i64 4198992}
!45 = !{i64 4199008}
!46 = !{i64 4199014}
!47 = !{i64 4199022}
!48 = !{i64 4199076}
!49 = !{i64 4199028}
!50 = !{i64 4199044}
!51 = !{i64 4199048}
!52 = !{i64 4199064}
!53 = !{i64 4199069}
!54 = !{i64 4199085}
!55 = !{i64 4199090}
!56 = !{i64 4199112}
!57 = !{i64 4199142}
!58 = !{i64 4199151}
!59 = !{i64 4199156}
!60 = !{i64 4199212}
!61 = !{i64 4199221}
!62 = !{i64 4199225}
!63 = !{i64 4199533}
!64 = !{i64 4199162}
!65 = !{i64 4199185}
!66 = !{i64 4199198}
!67 = !{i64 4199235}
!68 = !{i64 4199239}
!69 = !{i64 4199242}
!70 = !{i64 4199271}
!71 = !{i64 4199276}
!72 = !{i64 4199279}
!73 = !{i64 4199296}
!74 = !{i64 4199305}
!75 = !{i64 4199319}
!76 = !{i64 4199329}
!77 = !{i64 4199338}
!78 = !{i64 4199343}
!79 = !{i64 4199349}
!80 = !{i64 4199357}
!81 = !{i64 4199372}
!82 = !{i64 4199385}
!83 = !{i64 4199406}
!84 = !{i64 4199415}
!85 = !{i64 4199419}
!86 = !{i64 4199431}
!87 = !{i64 4199436}
!88 = !{i64 4199442}
!89 = !{i64 4199473}
!90 = !{i64 4199486}
!91 = !{i64 4199494}
!92 = !{i64 4199551}
!93 = !{i64 4199565}
!94 = !{i64 4199569}
!95 = !{i64 4199587}
!96 = !{i64 4199614}
!97 = !{i64 4199630}
!98 = !{i64 4199639}
!99 = !{i64 4199653}
!100 = !{i64 4199680}
!101 = !{i64 4199696}
!102 = !{i64 4199717}
!103 = !{i64 4199729}
!104 = !{i64 4199733}
!105 = !{i64 4199736}
!106 = !{i64 4199739}
!107 = !{i64 4199744}
!108 = !{i64 4199761}
!109 = !{i64 4199774}
!110 = !{i64 4199795}
!111 = !{i64 4199799}
!112 = !{i64 4199802}
!113 = !{i64 4199805}
!114 = !{i64 4199818}
!115 = !{i64 4199830}
!116 = !{i64 4199842}
!117 = !{i64 4199846}
!118 = !{i64 4199872}
!119 = !{i64 4199881}
!120 = !{i64 4199894}
!121 = !{i64 4199904}
!122 = !{i64 4199919}
!123 = !{i64 4199929}
!124 = !{i64 4199939}
!125 = !{i64 4199951}
!126 = !{i64 4199961}
!127 = !{i64 4199971}
!128 = !{i64 4199976}
!129 = !{i64 4199979}
!130 = !{i64 4199989}
!131 = !{i64 4199993}
!132 = !{i64 4200001}
!133 = !{i64 4200011}
!134 = !{i64 4200015}
!135 = !{i64 4200019}
!136 = !{i64 4200023}
!137 = !{i64 4200065}
!138 = !{i64 4200041}
!139 = !{i64 4200075}
!140 = !{i64 4200083}
!141 = !{i64 4200092}
!142 = !{i64 4200097}
!143 = !{i64 4200103}
!144 = !{i64 4200110}
!145 = !{i64 4200114}
!146 = !{i64 4200118}
!147 = !{i64 4200121}
!148 = !{i64 4200144}
!149 = !{i64 4200147}
!150 = !{i64 4200151}
!151 = !{i64 4200160}
!152 = !{i64 4200173}
!153 = !{i64 4200185}
!154 = !{i64 4200192}
!155 = !{i64 4200229}
!156 = !{i64 4200234}
!157 = !{i64 4200256}
!158 = !{i64 4200268}
!159 = !{i64 4200276}
!160 = !{i64 4200323}
!161 = !{i64 4200328}
!162 = !{i64 4200332}
!163 = !{i64 4200294}
!164 = !{i64 4200338}
!165 = !{i64 4200345}
!166 = !{i64 4200362}
!167 = !{i64 4200371}
!168 = !{i64 4200377}
!169 = !{i64 4200389}
!170 = !{i64 4200396}
!171 = !{i64 4200401}
!172 = !{i64 4200409}
!173 = !{i64 4200425}
!174 = !{i64 4200435}
!175 = !{i64 4200440}
!176 = !{i64 4200443}
!177 = !{i64 4200450}
!178 = !{i64 4200453}
!179 = !{i64 4200463}
!180 = !{i64 4200466}
!181 = !{i64 4200482}
!182 = !{i64 4200501}
!183 = !{i64 4200514}
!184 = !{i64 4200522}
!185 = !{i64 4200534}
!186 = !{i64 4200537}
!187 = !{i64 4200559}
!188 = !{i64 4200567}
!189 = !{i64 4200583}
!190 = !{i64 4200596}
!191 = !{i64 4200604}
!192 = !{i64 4200616}
!193 = !{i64 4200633}
!194 = !{i64 4200641}
!195 = !{i64 4200657}
!196 = !{i64 4200670}
!197 = !{i64 4200687}
!198 = !{i64 4200701}
!199 = !{i64 4200707}
!200 = !{i64 4200724}
!201 = !{i64 4200739}
!202 = !{i64 4200751}
!203 = !{i64 4200758}
!204 = !{i64 4200763}
!205 = !{i64 4200771}
!206 = !{i64 4200787}
!207 = !{i64 4200790}
!208 = !{i64 4200804}
!209 = !{i64 4200823}
!210 = !{i64 4200880}
!211 = !{i64 4200899}
!212 = !{i64 4200902}
!213 = !{i64 4200905}
!214 = !{i64 4200913}
!215 = !{i64 4200919}
!216 = !{i64 4200935}
!217 = !{i64 4200939}
!218 = !{i64 4200955}
!219 = !{i64 4200960}
!220 = !{i64 4200977}
!221 = !{i64 4200982}
!222 = !{i64 4200985}
!223 = !{i64 4201007}
!224 = !{i64 4201018}
!225 = !{i64 4201023}
!226 = !{i64 4201028}
!227 = !{i64 4201042}
!228 = !{i64 4201053}
!229 = !{i64 4201060}
!230 = !{i64 4201082}
!231 = !{i64 4201091}
!232 = !{i64 4201103}
!233 = !{i64 4201111}
!234 = !{i64 4201117}
!235 = !{i64 4201133}
!236 = !{i64 4201155}
!237 = !{i64 4201160}
!238 = !{i64 4201164}
!239 = !{i64 4201151}
!240 = !{i64 4201186}
!241 = !{i64 4201195}
!242 = !{i64 4201234}
!243 = !{i64 4201246}
!244 = !{i64 4201257}
!245 = !{i64 4201268}
!246 = !{i64 4201284}
!247 = !{i64 4201289}
!248 = !{i64 4201306}
!249 = !{i64 4201316}
!250 = !{i64 4201329}
!251 = !{i64 4201335}
!252 = !{i64 4201340}
!253 = !{i64 4201356}
!254 = !{i64 4201361}
!255 = !{i64 4201385}
!256 = !{i64 4201398}
!257 = !{i64 4201405}
!258 = !{i64 4201390}
!259 = !{i64 4201427}
!260 = !{i64 4201432}
!261 = !{i64 4201443}
!262 = !{i64 4201460}
!263 = !{i64 4201497}
!264 = !{i64 4201474}
!265 = !{i64 4201492}
!266 = !{i64 4201515}
!267 = !{i64 4201520}
!268 = !{i64 4201550}
!269 = !{i64 4201557}
!270 = !{i64 4201560}
!271 = !{i64 4201563}
!272 = !{i64 4201581}
!273 = !{i64 4201588}
!274 = !{i64 4201609}
!275 = !{i64 4201616}
!276 = !{i64 4201625}
!277 = !{i64 4201628}
!278 = !{i64 4201639}
!279 = !{i64 4201650}
!280 = !{i64 4201791}
!281 = !{i64 4201802}
!282 = !{i64 4201805}
!283 = !{i64 4201812}
!284 = !{i64 4201826}
!285 = !{i64 4201831}
!286 = !{i64 4201836}
!287 = !{i64 4201839}
!288 = !{i64 4201867}
!289 = !{i64 4201874}
!290 = !{i64 4201877}
!291 = !{i64 4201880}
!292 = !{i64 4201684}
!293 = !{i64 4201857}
!294 = !{i64 4201898}
!295 = !{i64 4201905}
!296 = !{i64 4201918}
!297 = !{i64 4201922}
!298 = !{i64 4201944}
!299 = !{i64 4201952}
!300 = !{i64 4201961}
!301 = !{i64 4201969}
!302 = !{i64 4201977}
!303 = !{i64 4201989}
!304 = !{i64 4202000}
!305 = !{i64 4202016}
!306 = !{i64 4202025}
!307 = !{i64 4202055}
!308 = !{i64 4202059}
!309 = !{i64 4202100}
!310 = !{i64 4202072}
!311 = !{i64 4202105}
!312 = !{i64 4202108}
!313 = !{i64 4202118}
!314 = !{i64 4202125}
!315 = !{i64 4202132}
!316 = !{i64 4202139}
!317 = !{i64 4202146}
!318 = !{i64 4202153}
!319 = !{i64 4202156}
!320 = !{i64 4202162}
!321 = !{i64 4202168}
!322 = !{i64 4202171}
!323 = !{i64 4202075}
!324 = !{i64 4202185}
!325 = !{i64 4202202}
!326 = !{i64 4202209}
!327 = !{i64 4202216}
!328 = !{i64 4202223}
!329 = !{i64 4202230}
!330 = !{i64 4202237}
!331 = !{i64 4202240}
!332 = !{i64 4202246}
!333 = !{i64 4202252}
!334 = !{i64 4202255}
!335 = !{i64 4202264}
!336 = !{i64 4202267}
!337 = !{i64 4202278}
!338 = !{i64 4202281}
!339 = !{i64 4202287}
!340 = !{i64 4202299}
!341 = !{i64 4202306}
!342 = !{i64 4202314}
!343 = !{i64 4202332}
!344 = !{i64 4202337}
!345 = !{i64 4202344}
!346 = !{i64 4202352}
!347 = !{i64 4202368}
!348 = !{i64 4202406}
!349 = !{i64 4202427}
!350 = !{i64 4202430}
!351 = !{i64 4202453}
!352 = !{i64 4202457}
!353 = !{i64 4202465}
!354 = !{i64 4202475}
!355 = !{i64 4202479}
!356 = !{i64 4202484}
!357 = !{i64 4202498}
!358 = !{i64 4202512}
!359 = !{i64 4202524}
!360 = !{i64 4202539}
!361 = !{i64 4202551}
!362 = !{i64 4202556}
!363 = !{i64 4202559}
!364 = !{i64 4202579}
!365 = !{i64 4202586}
!366 = !{i64 4202589}
!367 = !{i64 4202592}
!368 = !{i64 4202596}
!369 = !{i64 4202599}
!370 = !{i64 4202626}
!371 = !{i64 4202631}
!372 = !{i64 4202634}
!373 = !{i64 4202653}
!374 = !{i64 4202656}
!375 = !{i64 4202678}
!376 = !{i64 4202683}
!377 = !{i64 4202686}
!378 = !{i64 4202716}
!379 = !{i64 4202733}
!380 = !{i64 4202740}
!381 = !{i64 4202746}
!382 = !{i64 4202753}
!383 = !{i64 4202759}
!384 = !{i64 4202761}
!385 = !{i64 4202771}
!386 = !{i64 4202777}
!387 = !{i64 4202783}
!388 = !{i64 4202791}
!389 = !{i64 4202799}
!390 = !{i64 4202854}
!391 = !{i64 4202895}
!392 = !{i64 4202900}
!393 = !{i64 4202907}
!394 = !{i64 4202912}
!395 = !{i64 4202915}
!396 = !{i64 4202933}
!397 = !{i64 4202940}
!398 = !{i64 4202964}
!399 = !{i64 4203115}
