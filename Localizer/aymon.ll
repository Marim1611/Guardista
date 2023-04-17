declare i32 @memcpy_s_3(i8*, i32, i8*, i32) local_unnamed_addr

define i32 @"common_flush_and_write_nolock<char>"(i32 %c, i32 %stream) local_unnamed_addr {
dec_label_pc_45c85c:
  %storemerge1.reg2mem = alloca i32, !insn.addr !8359
  %.reg2mem = alloca i32, !insn.addr !8359
  %.pre-phi3.reg2mem = alloca i32*, !insn.addr !8359
  %0 = call i32 @_fileno(i32 %stream), !insn.addr !8360
  %1 = add i32 %stream, 12, !insn.addr !8361
  %2 = inttoptr i32 %1 to i32*, !insn.addr !8361
  %3 = load i32, i32* %2, align 4, !insn.addr !8361
  %4 = and i32 %3, 6
  %5 = icmp eq i32 %4, 0, !insn.addr !8362
  %6 = icmp eq i1 %5, false, !insn.addr !8363
  br i1 %6, label %dec_label_pc_45c898, label %dec_label_pc_45c879, !insn.addr !8363

dec_label_pc_45c879:                              ; preds = %dec_label_pc_45c85c
  %7 = call i32* @_errno(), !insn.addr !8364
  store i32 9, i32* %7, align 4, !insn.addr !8365
  br label %dec_label_pc_45c887, !insn.addr !8365

dec_label_pc_45c887:                              ; preds = %dec_label_pc_45c879, %dec_label_pc_45c8a6, %dec_label_pc_45c8be
  %8 = load i32, i32* %2, align 4, !insn.addr !8366
  %9 = or i32 %8, 16, !insn.addr !8366
  store i32 %9, i32* %2, align 4, !insn.addr !8366
  store i32 -1, i32* %storemerge1.reg2mem, !insn.addr !8367
  br label %dec_label_pc_45c96e, !insn.addr !8367

dec_label_pc_45c898:                              ; preds = %dec_label_pc_45c85c
  %10 = and i32 %3, 4096
  %11 = icmp eq i32 %10, 0, !insn.addr !8368
  br i1 %11, label %dec_label_pc_45c8b3, label %dec_label_pc_45c8a6, !insn.addr !8369

dec_label_pc_45c8a6:                              ; preds = %dec_label_pc_45c898
  %12 = call i32* @_errno(), !insn.addr !8370
  store i32 34, i32* %12, align 4, !insn.addr !8371
  br label %dec_label_pc_45c887, !insn.addr !8372

dec_label_pc_45c8b3:                              ; preds = %dec_label_pc_45c898
  %13 = and i32 %3, 1
  %14 = icmp eq i32 %13, 0, !insn.addr !8373
  br i1 %14, label %dec_label_pc_45c8b3.dec_label_pc_45c8e6_crit_edge, label %dec_label_pc_45c8be, !insn.addr !8374

dec_label_pc_45c8b3.dec_label_pc_45c8e6_crit_edge: ; preds = %dec_label_pc_45c8b3
  %.pre = add i32 %stream, 8, !insn.addr !8375
  %.pre2 = inttoptr i32 %.pre to i32*, !insn.addr !8375
  store i32* %.pre2, i32** %.pre-phi3.reg2mem
  store i32 %3, i32* %.reg2mem
  br label %dec_label_pc_45c8e6

dec_label_pc_45c8be:                              ; preds = %dec_label_pc_45c8b3
  %15 = call i1 @stream_is_at_end_of_file_nolock(i32 %stream), !insn.addr !8376
  %16 = add i32 %stream, 8
  %17 = inttoptr i32 %16 to i32*
  store i32 0, i32* %17, align 4, !insn.addr !8377
  %18 = icmp eq i1 %15, false, !insn.addr !8378
  br i1 %18, label %dec_label_pc_45c887, label %dec_label_pc_45c8d5, !insn.addr !8379

dec_label_pc_45c8d5:                              ; preds = %dec_label_pc_45c8be
  %19 = add i32 %stream, 4, !insn.addr !8380
  %20 = inttoptr i32 %19 to i32*, !insn.addr !8380
  %21 = load i32, i32* %20, align 4, !insn.addr !8380
  %22 = inttoptr i32 %stream to i32*, !insn.addr !8381
  store i32 %21, i32* %22, align 4, !insn.addr !8381
  %23 = load i32, i32* %2, align 4, !insn.addr !8382
  %24 = and i32 %23, -2, !insn.addr !8382
  store i32 %24, i32* %2, align 4, !insn.addr !8382
  store i32* %17, i32** %.pre-phi3.reg2mem, !insn.addr !8382
  store i32 %24, i32* %.reg2mem, !insn.addr !8382
  br label %dec_label_pc_45c8e6, !insn.addr !8382

dec_label_pc_45c8e6:                              ; preds = %dec_label_pc_45c8b3.dec_label_pc_45c8e6_crit_edge, %dec_label_pc_45c8d5
  %.reload = load i32, i32* %.reg2mem, !insn.addr !8383
  %.pre-phi3.reload = load i32*, i32** %.pre-phi3.reg2mem
  %25 = and i32 %.reload, -11, !insn.addr !8383
  %26 = or i32 %25, 2, !insn.addr !8384
  store i32 %26, i32* %2, align 4, !insn.addr !8384
  store i32 0, i32* %.pre-phi3.reload, align 4, !insn.addr !8375
  %27 = load i32, i32* %2, align 4, !insn.addr !8385
  %28 = and i32 %27, 1216, !insn.addr !8386
  %29 = icmp eq i32 %28, 0, !insn.addr !8386
  %30 = icmp eq i1 %29, false, !insn.addr !8387
  br i1 %30, label %dec_label_pc_45c947, label %dec_label_pc_45c914, !insn.addr !8387

dec_label_pc_45c914:                              ; preds = %dec_label_pc_45c8e6
  %31 = call i32* @__acrt_iob_func(i32 1), !insn.addr !8388
  %32 = ptrtoint i32* %31 to i32, !insn.addr !8388
  %33 = icmp eq i32 %32, %stream, !insn.addr !8389
  br i1 %33, label %dec_label_pc_45c932, label %dec_label_pc_45c924, !insn.addr !8390

dec_label_pc_45c924:                              ; preds = %dec_label_pc_45c914
  %34 = call i32* @__acrt_iob_func(i32 2), !insn.addr !8391
  %35 = ptrtoint i32* %34 to i32, !insn.addr !8391
  %36 = icmp eq i32 %35, %stream, !insn.addr !8392
  %37 = icmp eq i1 %36, false, !insn.addr !8393
  br i1 %37, label %dec_label_pc_45c93d, label %dec_label_pc_45c932, !insn.addr !8393

dec_label_pc_45c932:                              ; preds = %dec_label_pc_45c924, %dec_label_pc_45c914
  %38 = call i32 @_isatty(i32 %0), !insn.addr !8394
  %39 = icmp eq i32 %38, 0, !insn.addr !8395
  %40 = icmp eq i1 %39, false, !insn.addr !8396
  br i1 %40, label %dec_label_pc_45c947, label %dec_label_pc_45c93d, !insn.addr !8396

dec_label_pc_45c93d:                              ; preds = %dec_label_pc_45c932, %dec_label_pc_45c924
  %41 = call i32 @function_401997(i32 %stream), !insn.addr !8397
  br label %dec_label_pc_45c947, !insn.addr !8398

dec_label_pc_45c947:                              ; preds = %dec_label_pc_45c932, %dec_label_pc_45c93d, %dec_label_pc_45c8e6
  %42 = trunc i32 %c to i8, !insn.addr !8399
  %43 = call i1 @"write_buffer_nolock<char>"(i8 %42, i32 %stream), !insn.addr !8399
  %44 = icmp eq i1 %43, false, !insn.addr !8400
  %45 = icmp eq i1 %44, false, !insn.addr !8401
  br i1 %45, label %dec_label_pc_45c96a, label %dec_label_pc_45c959, !insn.addr !8401

dec_label_pc_45c959:                              ; preds = %dec_label_pc_45c947
  %46 = load i32, i32* %2, align 4, !insn.addr !8402
  %47 = or i32 %46, 16, !insn.addr !8402
  store i32 %47, i32* %2, align 4, !insn.addr !8402
  store i32 -1, i32* %storemerge1.reg2mem, !insn.addr !8403
  br label %dec_label_pc_45c96e, !insn.addr !8403

dec_label_pc_45c96a:                              ; preds = %dec_label_pc_45c947
  %48 = and i32 %c, 255, !insn.addr !8404
  store i32 %48, i32* %storemerge1.reg2mem, !insn.addr !8404
  br label %dec_label_pc_45c96e, !insn.addr !8404

dec_label_pc_45c96e:                              ; preds = %dec_label_pc_45c959, %dec_label_pc_45c96a, %dec_label_pc_45c887
  %storemerge1.reload = load i32, i32* %storemerge1.reg2mem
  ret i32 %storemerge1.reload, !insn.addr !8405
}

define i1 @"write_buffer_nolock<char>"(i8 %c, i32 %stream) local_unnamed_addr {
dec_label_pc_45cb15:
  %eax.0.shrunk.reg2mem = alloca i1, !insn.addr !8406
  %storemerge.reg2mem = alloca i32, !insn.addr !8406
  %edi.0.reg2mem = alloca i32, !insn.addr !8406
  %stack_var_4 = alloca i8, align 1
  store i8 %c, i8* %stack_var_4, align 1
  %0 = call i32 @_fileno(i32 %stream), !insn.addr !8407
  %1 = add i32 %stream, 12, !insn.addr !8408
  %2 = inttoptr i32 %1 to i32*, !insn.addr !8408
  %3 = load i32, i32* %2, align 4, !insn.addr !8408
  %4 = and i32 %3, 192
  %5 = icmp eq i32 %4, 0, !insn.addr !8409
  br i1 %5, label %dec_label_pc_45cbc7, label %dec_label_pc_45cb37, !insn.addr !8410

dec_label_pc_45cb37:                              ; preds = %dec_label_pc_45cb15
  %6 = add i32 %stream, 4, !insn.addr !8411
  %7 = inttoptr i32 %6 to i32*, !insn.addr !8411
  %8 = load i32, i32* %7, align 4, !insn.addr !8411
  %9 = inttoptr i32 %stream to i32*, !insn.addr !8412
  %10 = load i32, i32* %9, align 4, !insn.addr !8412
  %11 = sub i32 %10, %8, !insn.addr !8413
  %12 = add i32 %8, 1, !insn.addr !8414
  store i32 %12, i32* %9, align 4, !insn.addr !8415
  %13 = add i32 %stream, 24, !insn.addr !8416
  %14 = inttoptr i32 %13 to i32*, !insn.addr !8416
  %15 = load i32, i32* %14, align 4, !insn.addr !8416
  %16 = add i32 %15, -1, !insn.addr !8417
  %17 = add i32 %stream, 8, !insn.addr !8418
  %18 = inttoptr i32 %17 to i32*, !insn.addr !8418
  store i32 %16, i32* %18, align 4, !insn.addr !8418
  %19 = icmp slt i32 %11, 1
  br i1 %19, label %dec_label_pc_45cb78, label %dec_label_pc_45cb54, !insn.addr !8419

dec_label_pc_45cb54:                              ; preds = %dec_label_pc_45cb37
  %20 = load i32, i32* %7, align 4, !insn.addr !8420
  %21 = inttoptr i32 %20 to i8*, !insn.addr !8420
  %22 = call i32 @_write(i32 %0, i8* %21, i32 %11), !insn.addr !8421
  store i32 %22, i32* %edi.0.reg2mem, !insn.addr !8422
  br label %dec_label_pc_45cb66, !insn.addr !8422

dec_label_pc_45cb66:                              ; preds = %dec_label_pc_45cba3, %dec_label_pc_45cb9d, %dec_label_pc_45cb54
  %edi.0.reload = load i32, i32* %edi.0.reg2mem
  %23 = icmp eq i32 %edi.0.reload, %11, !insn.addr !8423
  %24 = load i32, i32* %7, align 4, !insn.addr !8424
  %25 = load i8, i8* %stack_var_4, align 1, !insn.addr !8425
  %26 = inttoptr i32 %24 to i8*, !insn.addr !8426
  store i8 %25, i8* %26, align 1, !insn.addr !8426
  store i1 %23, i1* %eax.0.shrunk.reg2mem, !insn.addr !8427
  br label %dec_label_pc_45cbdd, !insn.addr !8427

dec_label_pc_45cb78:                              ; preds = %dec_label_pc_45cb37
  %27 = icmp ugt i32 %0, -3
  store i32 ptrtoint (i32* @__badioinfo to i32), i32* %storemerge.reg2mem, !insn.addr !8428
  br i1 %27, label %dec_label_pc_45cb9d, label %dec_label_pc_45cb82, !insn.addr !8428

dec_label_pc_45cb82:                              ; preds = %dec_label_pc_45cb78
  %28 = and i32 %0, 63, !insn.addr !8429
  %29 = sdiv i32 %0, 64, !insn.addr !8430
  %narrow = mul nuw nsw i32 %28, 56
  %30 = mul i32 %29, 4, !insn.addr !8431
  %31 = add i32 %30, ptrtoint (i32* @__pioinfo to i32), !insn.addr !8431
  %32 = inttoptr i32 %31 to i32*, !insn.addr !8431
  %33 = load i32, i32* %32, align 4, !insn.addr !8431
  %34 = add i32 %33, %narrow, !insn.addr !8431
  store i32 %34, i32* %storemerge.reg2mem, !insn.addr !8432
  br label %dec_label_pc_45cb9d, !insn.addr !8432

dec_label_pc_45cb9d:                              ; preds = %dec_label_pc_45cb78, %dec_label_pc_45cb82
  %storemerge.reload = load i32, i32* %storemerge.reg2mem
  %35 = add i32 %storemerge.reload, 40, !insn.addr !8433
  %36 = inttoptr i32 %35 to i8*, !insn.addr !8433
  %37 = load i8, i8* %36, align 1, !insn.addr !8433
  %38 = and i8 %37, 32, !insn.addr !8433
  %39 = icmp eq i8 %38, 0, !insn.addr !8433
  store i32 0, i32* %edi.0.reg2mem, !insn.addr !8434
  br i1 %39, label %dec_label_pc_45cb66, label %dec_label_pc_45cba3, !insn.addr !8434

dec_label_pc_45cba3:                              ; preds = %dec_label_pc_45cb9d
  %40 = call i64 @_lseeki64(i32 %0, i64 0, i32 0), !insn.addr !8435
  %41 = trunc i64 %40 to i32, !insn.addr !8435
  %42 = and i32 %0, %41, !insn.addr !8436
  %43 = icmp eq i32 %42, -1, !insn.addr !8437
  %44 = icmp eq i1 %43, false, !insn.addr !8438
  store i32 0, i32* %edi.0.reg2mem, !insn.addr !8438
  br i1 %44, label %dec_label_pc_45cb66, label %dec_label_pc_45cbb7, !insn.addr !8438

dec_label_pc_45cbb7:                              ; preds = %dec_label_pc_45cba3
  %45 = load i32, i32* %2, align 4, !insn.addr !8439
  %46 = or i32 %45, 16, !insn.addr !8439
  store i32 %46, i32* %2, align 4, !insn.addr !8439
  store i1 true, i1* %eax.0.shrunk.reg2mem, !insn.addr !8440
  br label %dec_label_pc_45cbdd, !insn.addr !8440

dec_label_pc_45cbc7:                              ; preds = %dec_label_pc_45cb15
  %47 = call i32 @_write(i32 %0, i8* nonnull %stack_var_4, i32 1), !insn.addr !8441
  %48 = icmp eq i32 %47, 1, !insn.addr !8442
  store i1 %48, i1* %eax.0.shrunk.reg2mem, !insn.addr !8443
  br label %dec_label_pc_45cbdd, !insn.addr !8443

dec_label_pc_45cbdd:                              ; preds = %dec_label_pc_45cbc7, %dec_label_pc_45cbb7, %dec_label_pc_45cb66
  %eax.0.shrunk.reload = load i1, i1* %eax.0.shrunk.reg2mem
  ret i1 %eax.0.shrunk.reload, !insn.addr !8444
}

define i1 @stream_is_at_end_of_file_nolock(i32 %stream) local_unnamed_addr {
dec_label_pc_45cd15:
  %merge.reg2mem = alloca i1, !insn.addr !8445
  %0 = call i32 @__decompiler_undefined_function_0()
  %1 = call i32 @__decompiler_undefined_function_0()
  %current_position_-12 = alloca i32, align 4
  %stack_var_-20 = alloca i32, align 4
  %2 = add i32 %stream, 12, !insn.addr !8446
  %3 = inttoptr i32 %2 to i32*, !insn.addr !8446
  %4 = load i32, i32* %3, align 4, !insn.addr !8446
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0, !insn.addr !8447
  store i1 true, i1* %merge.reg2mem, !insn.addr !8448
  br i1 %6, label %dec_label_pc_45cd2f, label %dec_label_pc_45cd2b, !insn.addr !8448

dec_label_pc_45cd2b:                              ; preds = %dec_label_pc_45cd7e, %dec_label_pc_45cd6f, %dec_label_pc_45cd58, %dec_label_pc_45cd46, %dec_label_pc_45cd3f, %dec_label_pc_45cd15
  %merge.reload = load i1, i1* %merge.reg2mem
  ret i1 %merge.reload, !insn.addr !8449

dec_label_pc_45cd2f:                              ; preds = %dec_label_pc_45cd15
  %7 = and i32 %4, 192
  %8 = icmp eq i32 %7, 0, !insn.addr !8450
  br i1 %8, label %dec_label_pc_45cd46, label %dec_label_pc_45cd3f, !insn.addr !8451

dec_label_pc_45cd3f:                              ; preds = %dec_label_pc_45cd2f
  %9 = inttoptr i32 %stream to i32*, !insn.addr !8452
  %10 = load i32, i32* %9, align 4, !insn.addr !8452
  %11 = add i32 %stream, 4, !insn.addr !8453
  %12 = inttoptr i32 %11 to i32*, !insn.addr !8453
  %13 = load i32, i32* %12, align 4, !insn.addr !8453
  %14 = icmp eq i32 %10, %13, !insn.addr !8453
  store i1 false, i1* %merge.reg2mem, !insn.addr !8454
  br i1 %14, label %dec_label_pc_45cd2b, label %dec_label_pc_45cd46, !insn.addr !8454

dec_label_pc_45cd46:                              ; preds = %dec_label_pc_45cd3f, %dec_label_pc_45cd2f
  %15 = add i32 %stream, 16, !insn.addr !8455
  %16 = inttoptr i32 %15 to i32*, !insn.addr !8455
  %17 = load i32, i32* %16, align 4, !insn.addr !8455
  %18 = call i32 @_get_osfhandle(i32 %17), !insn.addr !8456
  %19 = icmp eq i32 %18, -1, !insn.addr !8457
  store i1 false, i1* %merge.reg2mem, !insn.addr !8458
  br i1 %19, label %dec_label_pc_45cd2b, label %dec_label_pc_45cd58, !insn.addr !8458

dec_label_pc_45cd58:                              ; preds = %dec_label_pc_45cd46
  %20 = ptrtoint i32* %current_position_-12 to i32, !insn.addr !8459
  %21 = inttoptr i32 %18 to i32*, !insn.addr !8460
  %22 = call i1 @SetFilePointerEx(i32* %21, %_LARGE_INTEGER zeroinitializer, %_LARGE_INTEGER* null, i32 %20), !insn.addr !8460
  %23 = icmp eq i1 %22, false, !insn.addr !8461
  store i1 false, i1* %merge.reg2mem, !insn.addr !8462
  br i1 %23, label %dec_label_pc_45cd2b, label %dec_label_pc_45cd6f, !insn.addr !8462

dec_label_pc_45cd6f:                              ; preds = %dec_label_pc_45cd58
  %24 = bitcast i32* %stack_var_-20 to %_LARGE_INTEGER*
  %25 = call i1 @GetFileSizeEx(i32* %21, %_LARGE_INTEGER* nonnull %24), !insn.addr !8463
  %26 = icmp eq i1 %25, false, !insn.addr !8464
  store i1 false, i1* %merge.reg2mem, !insn.addr !8465
  br i1 %26, label %dec_label_pc_45cd2b, label %dec_label_pc_45cd7e, !insn.addr !8465

dec_label_pc_45cd7e:                              ; preds = %dec_label_pc_45cd6f
  %27 = load i32, i32* %current_position_-12, align 4, !insn.addr !8466
  %28 = load i32, i32* %stack_var_-20, align 4, !insn.addr !8467
  %29 = icmp eq i32 %27, %28, !insn.addr !8467
  %30 = icmp eq i32 %1, %0, !insn.addr !8468
  %or.cond = icmp eq i1 %30, %29
  store i1 %or.cond, i1* %merge.reg2mem, !insn.addr !8469
  br label %dec_label_pc_45cd2b, !insn.addr !8469
}

define i32 @__acrt_stdio_flush_and_write_narrow_nolock(i32 %c, i32 %stream) local_unnamed_addr {
dec_label_pc_45cdbb:
  %0 = call i32 @"common_flush_and_write_nolock<char>"(i32 ptrtoint (i32* @80 to i32), i32 ptrtoint (i32* @80 to i32)), !insn.addr !8470
  ret i32 %0, !insn.addr !8470
}

define i32 @_isatty(i32 %fh) local_unnamed_addr {
dec_label_pc_45cdd5:
  %0 = icmp eq i32 %fh, -2, !insn.addr !8471
  %1 = icmp eq i1 %0, false, !insn.addr !8472
  br i1 %1, label %dec_label_pc_45cdef, label %dec_label_pc_45cde2, !insn.addr !8472

dec_label_pc_45cde2:                              ; preds = %dec_label_pc_45cdd5
  %2 = call i32* @_errno(), !insn.addr !8473
  store i32 9, i32* %2, align 4, !insn.addr !8474
  br label %dec_label_pc_45ce27, !insn.addr !8475

dec_label_pc_45cdef:                              ; preds = %dec_label_pc_45cdd5
  %3 = icmp slt i32 %fh, 0, !insn.addr !8476
  br i1 %3, label %dec_label_pc_45ce17, label %dec_label_pc_45cdf3, !insn.addr !8477

dec_label_pc_45cdf3:                              ; preds = %dec_label_pc_45cdef
  %4 = load i32, i32* @_nhandle, align 4, !insn.addr !8478
  %5 = icmp ugt i32 %4, %fh, !insn.addr !8478
  %6 = icmp eq i1 %5, false, !insn.addr !8479
  br i1 %6, label %dec_label_pc_45ce17, label %dec_label_pc_45cdfb, !insn.addr !8479

dec_label_pc_45cdfb:                              ; preds = %dec_label_pc_45cdf3
  %7 = and i32 %fh, 63, !insn.addr !8480
  %8 = udiv i32 %fh, 64
  %narrow = mul nuw nsw i32 %7, 56
  %9 = mul i32 %8, 4, !insn.addr !8481
  %10 = add i32 %9, ptrtoint (i32* @__pioinfo to i32), !insn.addr !8481
  %11 = inttoptr i32 %10 to i32*, !insn.addr !8481
  %12 = load i32, i32* %11, align 4, !insn.addr !8481
  %13 = add nuw nsw i32 %narrow, 40, !insn.addr !8482
  %14 = add i32 %13, %12, !insn.addr !8482
  %15 = inttoptr i32 %14 to i8*, !insn.addr !8482
  %16 = load i8, i8* %15, align 1, !insn.addr !8482
  %17 = and i8 %16, 64
  %18 = zext i8 %17 to i32, !insn.addr !8483
  ret i32 %18, !insn.addr !8484

dec_label_pc_45ce17:                              ; preds = %dec_label_pc_45cdf3, %dec_label_pc_45cdef
  %19 = call i32* @_errno(), !insn.addr !8485
  store i32 9, i32* %19, align 4, !insn.addr !8486
  call void @_invalid_parameter_noinfo(), !insn.addr !8487
  br label %dec_label_pc_45ce27, !insn.addr !8487

dec_label_pc_45ce27:                              ; preds = %dec_label_pc_45ce17, %dec_label_pc_45cde2
  ret i32 0, !insn.addr !8488
}

define void @__acrt_stdio_allocate_buffer_nolock(i32 %public_stream) local_unnamed_addr {
dec_label_pc_45d367:
  %edi.0.reg2mem = alloca i32, !insn.addr !8489
  %0 = load i32, i32* @_cflush, align 4, !insn.addr !8490
  %1 = add i32 %0, 1, !insn.addr !8490
  store i32 %1, i32* @_cflush, align 4, !insn.addr !8490
  %2 = call i32* @_malloc_base(i32 4096), !insn.addr !8491
  %3 = ptrtoint i32* %2 to i32, !insn.addr !8491
  %4 = add i32 %public_stream, 4, !insn.addr !8492
  %5 = inttoptr i32 %4 to i32*, !insn.addr !8492
  store i32 %3, i32* %5, align 4, !insn.addr !8492
  call void @_free_base(i32* null), !insn.addr !8493
  %6 = load i32, i32* %5, align 4, !insn.addr !8494
  %7 = icmp eq i32 %6, 0, !insn.addr !8494
  %8 = add i32 %public_stream, 12, !insn.addr !8495
  %9 = inttoptr i32 %8 to i32*
  %10 = load i32, i32* %9, align 4
  br i1 %7, label %dec_label_pc_45d39f, label %dec_label_pc_45d397, !insn.addr !8496

dec_label_pc_45d397:                              ; preds = %dec_label_pc_45d367
  %11 = or i32 %10, 64, !insn.addr !8497
  store i32 %11, i32* %9, align 4, !insn.addr !8497
  store i32 4096, i32* %edi.0.reg2mem, !insn.addr !8498
  br label %dec_label_pc_45d3b0, !insn.addr !8498

dec_label_pc_45d39f:                              ; preds = %dec_label_pc_45d367
  %12 = or i32 %10, 1024, !insn.addr !8499
  store i32 %12, i32* %9, align 4, !insn.addr !8499
  %13 = add i32 %public_stream, 20, !insn.addr !8500
  store i32 %13, i32* %5, align 4, !insn.addr !8501
  store i32 2, i32* %edi.0.reg2mem, !insn.addr !8502
  br label %dec_label_pc_45d3b0, !insn.addr !8502

dec_label_pc_45d3b0:                              ; preds = %dec_label_pc_45d39f, %dec_label_pc_45d397
  %edi.0.reload = load i32, i32* %edi.0.reg2mem
  %14 = add i32 %public_stream, 24, !insn.addr !8503
  %15 = inttoptr i32 %14 to i32*, !insn.addr !8503
  store i32 %edi.0.reload, i32* %15, align 4, !insn.addr !8503
  %16 = load i32, i32* %5, align 4, !insn.addr !8504
  %17 = add i32 %public_stream, 8, !insn.addr !8505
  %18 = inttoptr i32 %17 to i32*, !insn.addr !8505
  store i32 0, i32* %18, align 4, !insn.addr !8505
  %19 = inttoptr i32 %public_stream to i32*, !insn.addr !8506
  store i32 %16, i32* %19, align 4, !insn.addr !8506
  ret void, !insn.addr !8507
}

define i32 @to_abstract_control_1(i32 %machine_control) local_unnamed_addr {
dec_label_pc_45de2b:
  %esi.0.reg2mem = alloca i32, !insn.addr !8508
  %ebx.0.reg2mem = alloca i32, !insn.addr !8508
  %0 = and i32 %machine_control, 32832, !insn.addr !8509
  %1 = icmp eq i32 %0, 32768, !insn.addr !8510
  %2 = icmp eq i1 %1, false, !insn.addr !8511
  store i32 3072, i32* %ebx.0.reg2mem, !insn.addr !8511
  br i1 %2, label %dec_label_pc_45de50, label %dec_label_pc_45de69, !insn.addr !8511

dec_label_pc_45de50:                              ; preds = %dec_label_pc_45de2b
  %3 = icmp eq i32 %0, 64, !insn.addr !8512
  %4 = icmp eq i1 %3, false, !insn.addr !8513
  store i32 2048, i32* %ebx.0.reg2mem, !insn.addr !8513
  br i1 %4, label %dec_label_pc_45de5d, label %dec_label_pc_45de69, !insn.addr !8513

dec_label_pc_45de5d:                              ; preds = %dec_label_pc_45de50
  %5 = icmp eq i32 %0, 32832, !insn.addr !8514
  %spec.select = select i1 %5, i32 1024, i32 0
  store i32 %spec.select, i32* %ebx.0.reg2mem
  br label %dec_label_pc_45de69

dec_label_pc_45de69:                              ; preds = %dec_label_pc_45de5d, %dec_label_pc_45de50, %dec_label_pc_45de2b
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  %6 = and i32 %machine_control, 24576, !insn.addr !8515
  store i32 0, i32* %esi.0.reg2mem
  switch i32 %6, label %dec_label_pc_45de82 [
    i32 0, label %dec_label_pc_45de99
    i32 8192, label %dec_label_pc_45de94
    i32 16384, label %dec_label_pc_45de8d
  ]

dec_label_pc_45de82:                              ; preds = %dec_label_pc_45de69
  %7 = icmp eq i32 %6, 24576, !insn.addr !8516
  %8 = icmp eq i1 %7, false, !insn.addr !8517
  %spec.select1 = select i1 %8, i32 0, i32 768
  store i32 %spec.select1, i32* %esi.0.reg2mem
  br label %dec_label_pc_45de99

dec_label_pc_45de8d:                              ; preds = %dec_label_pc_45de69
  store i32 512, i32* %esi.0.reg2mem, !insn.addr !8518
  br label %dec_label_pc_45de99, !insn.addr !8518

dec_label_pc_45de94:                              ; preds = %dec_label_pc_45de69
  store i32 256, i32* %esi.0.reg2mem, !insn.addr !8519
  br label %dec_label_pc_45de99, !insn.addr !8519

dec_label_pc_45de99:                              ; preds = %dec_label_pc_45de82, %dec_label_pc_45de69, %dec_label_pc_45de94, %dec_label_pc_45de8d
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  %9 = udiv i32 %machine_control, 8
  %10 = and i32 %9, 48, !insn.addr !8520
  %11 = udiv i32 %machine_control, 64
  %12 = and i32 %11, 8, !insn.addr !8521
  %13 = or i32 %10, %12, !insn.addr !8522
  %14 = udiv i32 %machine_control, 256
  %15 = and i32 %14, 4, !insn.addr !8523
  %16 = or i32 %13, %15, !insn.addr !8524
  %17 = udiv i32 %machine_control, 4096, !insn.addr !8525
  %18 = udiv i32 %machine_control, 1024
  %19 = and i32 %18, 2, !insn.addr !8526
  %20 = and i32 %17, 1, !insn.addr !8527
  %21 = or i32 %16, %19, !insn.addr !8528
  %22 = or i32 %21, %20, !insn.addr !8529
  %23 = or i32 %22, %ebx.0.reload, !insn.addr !8530
  %24 = or i32 %23, %esi.0.reload, !insn.addr !8531
  ret i32 %24, !insn.addr !8532
}

define i32 @to_abstract_control_2(i32 %machine_control) local_unnamed_addr {
dec_label_pc_45df16:
  %esi.0.reg2mem = alloca i32, !insn.addr !8533
  %0 = and i32 %machine_control, 3072, !insn.addr !8534
  store i32 0, i32* %esi.0.reg2mem
  switch i32 %0, label %dec_label_pc_45df6d [
    i32 0, label %dec_label_pc_45df81
    i32 1024, label %dec_label_pc_45df7c
    i32 2048, label %dec_label_pc_45df78
  ]

dec_label_pc_45df6d:                              ; preds = %dec_label_pc_45df16
  %1 = icmp eq i32 %0, 3072, !insn.addr !8535
  %2 = icmp eq i1 %1, false, !insn.addr !8536
  %spec.select = select i1 %2, i32 0, i32 768
  store i32 %spec.select, i32* %esi.0.reg2mem
  br label %dec_label_pc_45df81

dec_label_pc_45df78:                              ; preds = %dec_label_pc_45df16
  store i32 512, i32* %esi.0.reg2mem, !insn.addr !8537
  br label %dec_label_pc_45df81, !insn.addr !8537

dec_label_pc_45df7c:                              ; preds = %dec_label_pc_45df16
  store i32 256, i32* %esi.0.reg2mem, !insn.addr !8538
  br label %dec_label_pc_45df81, !insn.addr !8538

dec_label_pc_45df81:                              ; preds = %dec_label_pc_45df6d, %dec_label_pc_45df16, %dec_label_pc_45df7c, %dec_label_pc_45df78
  %3 = mul i32 %machine_control, 4, !insn.addr !8539
  %4 = and i32 %3, 16384, !insn.addr !8540
  %5 = and i32 %machine_control, 768, !insn.addr !8541
  %switch.selectcmp = icmp eq i32 %5, 512
  %switch.select = select i1 %switch.selectcmp, i32 4096, i32 0
  %switch.selectcmp1 = icmp eq i32 %5, 0
  %switch.select2 = select i1 %switch.selectcmp1, i32 8192, i32 %switch.select
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  %6 = mul i32 %machine_control, 16
  %7 = and i32 %6, 32, !insn.addr !8542
  %8 = mul i32 %machine_control, 2
  %9 = and i32 %8, 8, !insn.addr !8543
  %10 = or i32 %7, %9, !insn.addr !8544
  %11 = udiv i32 %machine_control, 2
  %12 = and i32 %11, 4, !insn.addr !8545
  %13 = or i32 %10, %12, !insn.addr !8546
  %14 = udiv i32 %machine_control, 8
  %15 = and i32 %14, 2, !insn.addr !8547
  %16 = udiv i32 %machine_control, 32, !insn.addr !8548
  %17 = or i32 %13, %15, !insn.addr !8549
  %18 = and i32 %6, 16, !insn.addr !8550
  %19 = and i32 %16, 1, !insn.addr !8551
  %20 = or i32 %17, %18, !insn.addr !8552
  %21 = or i32 %20, %19, !insn.addr !8553
  %22 = or i32 %21, %4, !insn.addr !8554
  %23 = or i32 %22, %switch.select2, !insn.addr !8555
  %24 = or i32 %23, %esi.0.reload, !insn.addr !8556
  ret i32 %24, !insn.addr !8557
}

define i32 @to_machine_sse_control(i32 %abstract_control) local_unnamed_addr {
dec_label_pc_45dffd:
  %edi.0.reg2mem = alloca i32, !insn.addr !8558
  %ebx.0.reg2mem = alloca i32, !insn.addr !8558
  %0 = and i32 %abstract_control, 3072, !insn.addr !8559
  store i32 0, i32* %ebx.0.reg2mem
  switch i32 %0, label %dec_label_pc_45e04c [
    i32 1024, label %dec_label_pc_45e047
    i32 2048, label %dec_label_pc_45e042
    i32 3072, label %dec_label_pc_45e03b
  ]

dec_label_pc_45e03b:                              ; preds = %dec_label_pc_45dffd
  store i32 32768, i32* %ebx.0.reg2mem, !insn.addr !8560
  br label %dec_label_pc_45e04c, !insn.addr !8560

dec_label_pc_45e042:                              ; preds = %dec_label_pc_45dffd
  store i32 64, i32* %ebx.0.reg2mem, !insn.addr !8561
  br label %dec_label_pc_45e04c, !insn.addr !8561

dec_label_pc_45e047:                              ; preds = %dec_label_pc_45dffd
  store i32 32832, i32* %ebx.0.reg2mem, !insn.addr !8562
  br label %dec_label_pc_45e04c, !insn.addr !8562

dec_label_pc_45e04c:                              ; preds = %dec_label_pc_45dffd, %dec_label_pc_45e047, %dec_label_pc_45e042, %dec_label_pc_45e03b
  %1 = udiv i32 %abstract_control, 4, !insn.addr !8563
  %2 = and i32 %abstract_control, -1073741824, !insn.addr !8564
  %3 = or i32 %2, %1, !insn.addr !8565
  %4 = udiv i32 %3, 4194304, !insn.addr !8566
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  %5 = and i32 %4, 768, !insn.addr !8567
  store i32 0, i32* %edi.0.reg2mem
  switch i32 %5, label %dec_label_pc_45e065 [
    i32 0, label %dec_label_pc_45e07c
    i32 256, label %dec_label_pc_45e077
    i32 512, label %dec_label_pc_45e070
  ]

dec_label_pc_45e065:                              ; preds = %dec_label_pc_45e04c
  %6 = icmp eq i32 %5, 768, !insn.addr !8568
  %7 = icmp eq i1 %6, false, !insn.addr !8569
  %spec.select = select i1 %7, i32 0, i32 24576
  store i32 %spec.select, i32* %edi.0.reg2mem
  br label %dec_label_pc_45e07c

dec_label_pc_45e070:                              ; preds = %dec_label_pc_45e04c
  store i32 16384, i32* %edi.0.reg2mem, !insn.addr !8570
  br label %dec_label_pc_45e07c, !insn.addr !8570

dec_label_pc_45e077:                              ; preds = %dec_label_pc_45e04c
  store i32 8192, i32* %edi.0.reg2mem, !insn.addr !8571
  br label %dec_label_pc_45e07c, !insn.addr !8571

dec_label_pc_45e07c:                              ; preds = %dec_label_pc_45e065, %dec_label_pc_45e04c, %dec_label_pc_45e077, %dec_label_pc_45e070
  %edi.0.reload = load i32, i32* %edi.0.reg2mem
  %8 = mul i32 %4, 1024
  %9 = and i32 %8, 2048, !insn.addr !8572
  %10 = mul i32 %4, 256
  %11 = and i32 %10, 1024, !insn.addr !8573
  %12 = or i32 %9, %11, !insn.addr !8574
  %13 = mul i32 %4, 64
  %14 = and i32 %13, 512, !insn.addr !8575
  %15 = or i32 %12, %14, !insn.addr !8576
  %16 = mul i32 %4, 8
  %17 = and i32 %16, 256, !insn.addr !8577
  %18 = or i32 %15, %17, !insn.addr !8578
  %19 = mul i32 %4, 4096, !insn.addr !8579
  %20 = and i32 %19, 4096, !insn.addr !8580
  %21 = and i32 %16, 128, !insn.addr !8581
  %22 = or i32 %18, %21, !insn.addr !8582
  %23 = or i32 %22, %20, !insn.addr !8583
  %24 = or i32 %23, %ebx.0.reload, !insn.addr !8584
  %25 = or i32 %24, %edi.0.reload, !insn.addr !8585
  ret i32 %25, !insn.addr !8586
}

define i32 @to_machine_x87_control(i32 %abstract_control) local_unnamed_addr {
dec_label_pc_45e161:
  %edi.0.reg2mem = alloca i32, !insn.addr !8587
  %0 = and i32 %abstract_control, 12582912, !insn.addr !8588
  store i32 0, i32* %edi.0.reg2mem
  switch i32 %0, label %dec_label_pc_45e1c8 [
    i32 0, label %dec_label_pc_45e1df
    i32 4194304, label %dec_label_pc_45e1da
    i32 8388608, label %dec_label_pc_45e1d3
  ]

dec_label_pc_45e1c8:                              ; preds = %dec_label_pc_45e161
  %1 = icmp eq i32 %0, 12582912, !insn.addr !8589
  %2 = icmp eq i1 %1, false, !insn.addr !8590
  %spec.select = select i1 %2, i32 0, i32 3072
  store i32 %spec.select, i32* %edi.0.reg2mem
  br label %dec_label_pc_45e1df

dec_label_pc_45e1d3:                              ; preds = %dec_label_pc_45e161
  store i32 2048, i32* %edi.0.reg2mem, !insn.addr !8591
  br label %dec_label_pc_45e1df, !insn.addr !8591

dec_label_pc_45e1da:                              ; preds = %dec_label_pc_45e161
  store i32 1024, i32* %edi.0.reg2mem, !insn.addr !8592
  br label %dec_label_pc_45e1df, !insn.addr !8592

dec_label_pc_45e1df:                              ; preds = %dec_label_pc_45e1c8, %dec_label_pc_45e161, %dec_label_pc_45e1da, %dec_label_pc_45e1d3
  %3 = udiv i32 %abstract_control, 4, !insn.addr !8593
  %4 = and i32 %3, 1032192, !insn.addr !8594
  %5 = or i32 %4, %0, !insn.addr !8595
  %6 = and i32 %3, 4096, !insn.addr !8596
  %7 = and i32 %abstract_control, 12288, !insn.addr !8597
  %switch.selectcmp = icmp eq i32 %7, 4096
  %switch.select = select i1 %switch.selectcmp, i32 512, i32 0
  %switch.selectcmp1 = icmp eq i32 %7, 0
  %switch.select2 = select i1 %switch.selectcmp1, i32 768, i32 %switch.select
  %edi.0.reload = load i32, i32* %edi.0.reg2mem
  %8 = udiv i32 %4, 2048
  %9 = and i32 %8, 16, !insn.addr !8598
  %10 = udiv i32 %4, 8192
  %11 = and i32 %10, 8, !insn.addr !8599
  %12 = udiv i32 %5, 262144
  %13 = and i32 %12, 2, !insn.addr !8600
  %14 = udiv i32 %abstract_control, 131072
  %15 = and i32 %14, 4, !insn.addr !8601
  %16 = and i32 %12, 1, !insn.addr !8602
  %17 = udiv i32 %4, 512, !insn.addr !8603
  %18 = and i32 %17, 32, !insn.addr !8604
  %19 = or i32 %6, %15, !insn.addr !8605
  %20 = or i32 %19, %11, !insn.addr !8606
  %21 = or i32 %20, %9, !insn.addr !8607
  %22 = or i32 %21, %18, !insn.addr !8608
  %23 = or i32 %22, %switch.select2, !insn.addr !8609
  %24 = or i32 %23, %13, !insn.addr !8610
  %25 = or i32 %24, %16, !insn.addr !8611
  %26 = or i32 %25, %edi.0.reload, !insn.addr !8612
  ret i32 %26, !insn.addr !8613
}

define i32 @__acrt_fenv_get_control() local_unnamed_addr {
dec_label_pc_45e3be:
  %storemerge.reg2mem = alloca i32, !insn.addr !8614
  %0 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-36 = alloca i224, align 8
  %1 = bitcast i224* %stack_var_-36 to i8*, !insn.addr !8615
  call void @__asm_rep_stosd_memset(i8* nonnull %1, i32 0, i32 7), !insn.addr !8615
  %2 = call i32 @__asm_fnstenv(), !insn.addr !8616
  %3 = sext i32 %2 to i224, !insn.addr !8616
  store i224 %3, i224* %stack_var_-36, align 8, !insn.addr !8616
  call void @__asm_fldenv(i224 %3), !insn.addr !8617
  %4 = load i224, i224* %stack_var_-36, align 8, !insn.addr !8618
  %5 = trunc i224 %4 to i32, !insn.addr !8618
  %6 = and i32 %5, 7999, !insn.addr !8619
  %7 = call i32 @to_abstract_control_2(i32 %6), !insn.addr !8620
  %8 = load i32, i32* @__isa_available, align 4, !insn.addr !8621
  %9 = icmp sgt i32 %8, 0, !insn.addr !8622
  store i32 0, i32* %storemerge.reg2mem, !insn.addr !8622
  br i1 %9, label %dec_label_pc_45e3f6, label %dec_label_pc_45e403, !insn.addr !8622

dec_label_pc_45e3f6:                              ; preds = %dec_label_pc_45e3be
  call void @__asm_stmxcsr(i32 %0), !insn.addr !8623
  %10 = and i32 %0, 65472, !insn.addr !8624
  store i32 %10, i32* %storemerge.reg2mem, !insn.addr !8624
  br label %dec_label_pc_45e403, !insn.addr !8624

dec_label_pc_45e403:                              ; preds = %dec_label_pc_45e3be, %dec_label_pc_45e3f6
  %storemerge.reload = load i32, i32* %storemerge.reg2mem
  %11 = call i32 @to_abstract_control_1(i32 %storemerge.reload), !insn.addr !8625
  %12 = and i32 %11, 16776960, !insn.addr !8626
  %13 = mul i32 %11, 4, !insn.addr !8627
  %14 = and i32 %13, 252, !insn.addr !8628
  %15 = or i32 %14, %12, !insn.addr !8629
  %16 = mul i32 %15, 64, !insn.addr !8630
  %17 = and i32 %7, 63, !insn.addr !8631
  %18 = or i32 %16, %17, !insn.addr !8632
  %19 = mul i32 %18, 4, !insn.addr !8633
  %20 = and i32 %7, 768, !insn.addr !8634
  %21 = or i32 %19, %20, !insn.addr !8635
  %22 = mul i32 %21, 16384, !insn.addr !8636
  %23 = or i32 %11, %7, !insn.addr !8637
  %24 = or i32 %23, %22, !insn.addr !8638
  ret i32 %24, !insn.addr !8639
}

define i32 @__acrt_fenv_get_status() local_unnamed_addr {
dec_label_pc_45e47e:
  %storemerge.reg2mem = alloca i32, !insn.addr !8640
  %0 = call i32 @__decompiler_undefined_function_0()
  %1 = call i32 @__decompiler_undefined_function_0()
  %2 = load i32, i32* @__isa_available, align 4, !insn.addr !8641
  %3 = icmp sgt i32 %2, 0, !insn.addr !8642
  store i32 0, i32* %storemerge.reg2mem, !insn.addr !8642
  br i1 %3, label %dec_label_pc_45e4e0, label %dec_label_pc_45e4ea, !insn.addr !8642

dec_label_pc_45e4e0:                              ; preds = %dec_label_pc_45e47e
  call void @__asm_stmxcsr(i32 %0), !insn.addr !8643
  %4 = and i32 %0, 63, !insn.addr !8644
  store i32 %4, i32* %storemerge.reg2mem, !insn.addr !8644
  br label %dec_label_pc_45e4ea, !insn.addr !8644

dec_label_pc_45e4ea:                              ; preds = %dec_label_pc_45e47e, %dec_label_pc_45e4e0
  %5 = mul i32 %1, 2
  %6 = and i32 %5, 8, !insn.addr !8645
  %7 = mul i32 %1, 16
  %8 = and i32 %7, 32, !insn.addr !8646
  %9 = or i32 %8, %6, !insn.addr !8647
  %10 = udiv i32 %1, 2
  %11 = and i32 %10, 4, !insn.addr !8648
  %12 = or i32 %9, %11, !insn.addr !8649
  %13 = udiv i32 %1, 8
  %14 = and i32 %13, 2, !insn.addr !8650
  %15 = or i32 %12, %14, !insn.addr !8651
  %16 = udiv i32 %1, 32, !insn.addr !8652
  %17 = and i32 %16, 1, !insn.addr !8653
  %18 = and i32 %7, 16, !insn.addr !8654
  %19 = or i32 %15, %18, !insn.addr !8655
  %20 = or i32 %19, %17, !insn.addr !8656
  %storemerge.reload = load i32, i32* %storemerge.reg2mem
  %21 = mul i32 %storemerge.reload, 2
  %22 = and i32 %21, 8, !insn.addr !8657
  %23 = mul i32 %storemerge.reload, 16
  %24 = and i32 %23, 32, !insn.addr !8658
  %25 = udiv i32 %storemerge.reload, 2
  %26 = and i32 %25, 4, !insn.addr !8659
  %27 = udiv i32 %storemerge.reload, 8
  %28 = and i32 %27, 2, !insn.addr !8660
  %29 = udiv i32 %storemerge.reload, 32, !insn.addr !8661
  %30 = and i32 %23, 16, !insn.addr !8662
  %31 = or i32 %22, %29, !insn.addr !8663
  %32 = or i32 %31, %24, !insn.addr !8664
  %33 = or i32 %32, %26, !insn.addr !8665
  %34 = or i32 %33, %28, !insn.addr !8666
  %35 = or i32 %34, %30, !insn.addr !8667
  %36 = mul i32 %35, 256, !insn.addr !8668
  %37 = or i32 %36, %20, !insn.addr !8669
  %38 = mul i32 %37, 65536, !insn.addr !8670
  %39 = or i32 %35, %20, !insn.addr !8671
  %40 = or i32 %39, %38, !insn.addr !8672
  ret i32 %40, !insn.addr !8673
}

define void @__acrt_fenv_set_control(i32 %abstract_control) local_unnamed_addr {
dec_label_pc_45e564:
  %0 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-36 = alloca i224, align 8
  %1 = call i32 @to_machine_x87_control(i32 %abstract_control), !insn.addr !8674
  %2 = bitcast i224* %stack_var_-36 to i8*, !insn.addr !8675
  call void @__asm_rep_stosd_memset(i8* nonnull %2, i32 0, i32 7), !insn.addr !8675
  %3 = call i32 @__asm_fnstenv(), !insn.addr !8676
  %4 = and i32 %1, 7999
  %5 = and i32 %3, -8000
  %6 = or i32 %5, %4, !insn.addr !8677
  %7 = sext i32 %6 to i224, !insn.addr !8678
  store i224 %7, i224* %stack_var_-36, align 8, !insn.addr !8678
  call void @__asm_fldenv(i224 %7), !insn.addr !8679
  %8 = call i32 @to_machine_sse_control(i32 %abstract_control), !insn.addr !8680
  %9 = load i32, i32* @__isa_available, align 4, !insn.addr !8681
  %10 = icmp slt i32 %9, 1, !insn.addr !8682
  br i1 %10, label %dec_label_pc_45e5ca, label %dec_label_pc_45e5af, !insn.addr !8682

dec_label_pc_45e5af:                              ; preds = %dec_label_pc_45e564
  call void @__asm_stmxcsr(i32 %0), !insn.addr !8683
  %11 = and i32 %8, 65472, !insn.addr !8684
  %12 = and i32 %0, -65473, !insn.addr !8685
  %13 = or i32 %11, %12, !insn.addr !8686
  call void @__asm_ldmxcsr(i32 %13), !insn.addr !8687
  br label %dec_label_pc_45e5ca, !insn.addr !8687

dec_label_pc_45e5ca:                              ; preds = %dec_label_pc_45e5af, %dec_label_pc_45e564
  ret void, !insn.addr !8688
}

define void @__acrt_fenv_set_status(i32 %abstract_status) local_unnamed_addr {
dec_label_pc_45e5e6:
  %0 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-36 = alloca i224, align 8
  %1 = bitcast i224* %stack_var_-36 to i8*, !insn.addr !8689
  call void @__asm_rep_stosd_memset(i8* nonnull %1, i32 0, i32 7), !insn.addr !8689
  %2 = call i32 @__asm_fnstenv(), !insn.addr !8690
  %3 = sext i32 %2 to i224, !insn.addr !8690
  store i224 %3, i224* %stack_var_-36, align 8, !insn.addr !8690
  call void @__asm_fldenv(i224 %3), !insn.addr !8691
  %4 = load i32, i32* @__isa_available, align 4, !insn.addr !8692
  %5 = icmp slt i32 %4, 1, !insn.addr !8693
  br i1 %5, label %dec_label_pc_45e6db, label %dec_label_pc_45e6c5, !insn.addr !8693

dec_label_pc_45e6c5:                              ; preds = %dec_label_pc_45e5e6
  %6 = udiv i32 %abstract_status, 268435456, !insn.addr !8694
  %7 = udiv i32 %abstract_status, 524288
  %8 = and i32 %7, 32, !insn.addr !8695
  %9 = udiv i32 %abstract_status, 2097152
  %10 = and i32 %9, 16, !insn.addr !8696
  %11 = or i32 %8, %10, !insn.addr !8697
  %12 = udiv i32 %abstract_status, 8388608
  %13 = and i32 %12, 8, !insn.addr !8698
  %14 = or i32 %11, %13, !insn.addr !8699
  %15 = udiv i32 %abstract_status, 33554432
  %16 = and i32 %15, 4, !insn.addr !8700
  %17 = or i32 %14, %16, !insn.addr !8701
  %18 = and i32 %6, 1, !insn.addr !8702
  %19 = or i32 %17, %18, !insn.addr !8703
  %20 = and i32 %6, 2, !insn.addr !8704
  call void @__asm_stmxcsr(i32 %0), !insn.addr !8705
  %21 = or i32 %19, %20, !insn.addr !8706
  %22 = and i32 %0, -64, !insn.addr !8707
  %23 = or i32 %21, %22, !insn.addr !8708
  call void @__asm_ldmxcsr(i32 %23), !insn.addr !8709
  br label %dec_label_pc_45e6db, !insn.addr !8709

dec_label_pc_45e6db:                              ; preds = %dec_label_pc_45e6c5, %dec_label_pc_45e5e6
  ret void, !insn.addr !8710
}

declare i32 @_strnicmp(i8*, i8*, i32) local_unnamed_addr

define i32 @_strnicmp_l(i8* %lhs, i8* %rhs, i32 %count, i32 %plocinfo) local_unnamed_addr {
dec_label_pc_45e9ed:
  %eax.2.reg2mem = alloca i32, !insn.addr !8711
  %edi.0.reg2mem = alloca i32, !insn.addr !8711
  %esi.0.reg2mem = alloca i32, !insn.addr !8711
  %ebx.0.reg2mem = alloca i32, !insn.addr !8711
  %0 = call i8 @__decompiler_undefined_function_7()
  %1 = call i32 @__decompiler_undefined_function_0()
  %2 = call i32 @__decompiler_undefined_function_0()
  %3 = icmp eq i8* %lhs, null, !insn.addr !8712
  %4 = icmp eq i1 %3, false, !insn.addr !8713
  br i1 %4, label %dec_label_pc_45ea17, label %dec_label_pc_45e9fd, !insn.addr !8713

dec_label_pc_45e9fd:                              ; preds = %dec_label_pc_45e9ed
  %5 = call i32* @_errno(), !insn.addr !8714
  store i32 22, i32* %5, align 4, !insn.addr !8715
  call void @_invalid_parameter_noinfo(), !insn.addr !8716
  store i32 2147483647, i32* %eax.2.reg2mem, !insn.addr !8717
  br label %dec_label_pc_45eab3, !insn.addr !8717

dec_label_pc_45ea17:                              ; preds = %dec_label_pc_45e9ed
  %6 = icmp eq i8* %rhs, null, !insn.addr !8718
  %7 = icmp eq i1 %6, false, !insn.addr !8719
  br i1 %7, label %dec_label_pc_45ea36, label %dec_label_pc_45ea1f, !insn.addr !8719

dec_label_pc_45ea1f:                              ; preds = %dec_label_pc_45ea17
  %8 = call i32* @_errno(), !insn.addr !8720
  store i32 22, i32* %8, align 4, !insn.addr !8721
  call void @_invalid_parameter_noinfo(), !insn.addr !8722
  store i32 2147483647, i32* %eax.2.reg2mem, !insn.addr !8723
  br label %dec_label_pc_45eab3, !insn.addr !8723

dec_label_pc_45ea36:                              ; preds = %dec_label_pc_45ea17
  %9 = icmp sgt i32 %count, -1
  br i1 %9, label %dec_label_pc_45ea59, label %dec_label_pc_45ea42, !insn.addr !8724

dec_label_pc_45ea42:                              ; preds = %dec_label_pc_45ea36
  %10 = call i32* @_errno(), !insn.addr !8725
  store i32 22, i32* %10, align 4, !insn.addr !8726
  call void @_invalid_parameter_noinfo(), !insn.addr !8727
  store i32 2147483647, i32* %eax.2.reg2mem, !insn.addr !8728
  br label %dec_label_pc_45eab3, !insn.addr !8728

dec_label_pc_45ea59:                              ; preds = %dec_label_pc_45ea36
  %11 = icmp eq i32 %count, 0, !insn.addr !8729
  %12 = icmp eq i1 %11, false, !insn.addr !8730
  store i32 0, i32* %eax.2.reg2mem, !insn.addr !8730
  br i1 %12, label %dec_label_pc_45ea61, label %dec_label_pc_45eab3, !insn.addr !8730

dec_label_pc_45ea61:                              ; preds = %dec_label_pc_45ea59
  %13 = ptrtoint i8* %lhs to i32
  %14 = ptrtoint i8* %rhs to i32, !insn.addr !8731
  %15 = call i32 @function_403d78(i32 %plocinfo), !insn.addr !8732
  %16 = add i32 %1, 148, !insn.addr !8733
  %17 = inttoptr i32 %16 to i32*, !insn.addr !8733
  %18 = load i32, i32* %17, align 4, !insn.addr !8733
  store i32 %14, i32* %ebx.0.reg2mem, !insn.addr !8734
  store i32 %count, i32* %esi.0.reg2mem, !insn.addr !8734
  store i32 %13, i32* %edi.0.reg2mem, !insn.addr !8734
  br label %dec_label_pc_45ea78, !insn.addr !8734

dec_label_pc_45ea78:                              ; preds = %dec_label_pc_45ea97, %dec_label_pc_45ea61
  %edi.0.reload = load i32, i32* %edi.0.reg2mem
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  %19 = inttoptr i32 %edi.0.reload to i8*, !insn.addr !8735
  %20 = load i8, i8* %19, align 1, !insn.addr !8735
  %21 = zext i8 %20 to i32, !insn.addr !8735
  %22 = add i32 %18, %21, !insn.addr !8736
  %23 = inttoptr i32 %22 to i8*, !insn.addr !8736
  %24 = load i8, i8* %23, align 1, !insn.addr !8736
  %25 = zext i8 %24 to i32, !insn.addr !8736
  %26 = inttoptr i32 %ebx.0.reload to i8*, !insn.addr !8737
  %27 = load i8, i8* %26, align 1, !insn.addr !8737
  %28 = zext i8 %27 to i32, !insn.addr !8737
  %29 = add i32 %18, %28, !insn.addr !8738
  %30 = inttoptr i32 %29 to i8*, !insn.addr !8738
  %31 = load i8, i8* %30, align 1, !insn.addr !8738
  %32 = zext i8 %31 to i32, !insn.addr !8738
  %33 = sub nsw i32 %25, %32, !insn.addr !8739
  %34 = icmp eq i32 %33, 0, !insn.addr !8739
  %35 = icmp eq i1 %34, false, !insn.addr !8740
  %36 = icmp eq i8 %24, 0, !insn.addr !8741
  %or.cond = or i1 %36, %35
  br i1 %or.cond, label %dec_label_pc_45ea9f, label %dec_label_pc_45ea97, !insn.addr !8740

dec_label_pc_45ea97:                              ; preds = %dec_label_pc_45ea78
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  %37 = add i32 %ebx.0.reload, 1, !insn.addr !8742
  %38 = add i32 %edi.0.reload, 1, !insn.addr !8743
  %39 = add i32 %esi.0.reload, -1, !insn.addr !8744
  %40 = icmp eq i32 %39, 0, !insn.addr !8744
  %41 = icmp eq i1 %40, false, !insn.addr !8745
  store i32 %37, i32* %ebx.0.reg2mem, !insn.addr !8745
  store i32 %39, i32* %esi.0.reg2mem, !insn.addr !8745
  store i32 %38, i32* %edi.0.reg2mem, !insn.addr !8745
  br i1 %41, label %dec_label_pc_45ea78, label %dec_label_pc_45ea9f, !insn.addr !8745

dec_label_pc_45ea9f:                              ; preds = %dec_label_pc_45ea97, %dec_label_pc_45ea78
  %42 = icmp eq i8 %0, 0, !insn.addr !8746
  store i32 %33, i32* %eax.2.reg2mem, !insn.addr !8747
  br i1 %42, label %dec_label_pc_45eab3, label %dec_label_pc_45eaa5, !insn.addr !8747

dec_label_pc_45eaa5:                              ; preds = %dec_label_pc_45ea9f
  %43 = add i32 %2, 848, !insn.addr !8748
  %44 = inttoptr i32 %43 to i32*, !insn.addr !8748
  %45 = load i32, i32* %44, align 4, !insn.addr !8748
  %46 = and i32 %45, -3, !insn.addr !8748
  store i32 %46, i32* %44, align 4, !insn.addr !8748
  store i32 %33, i32* %eax.2.reg2mem, !insn.addr !8748
  br label %dec_label_pc_45eab3, !insn.addr !8748

dec_label_pc_45eab3:                              ; preds = %dec_label_pc_45ea1f, %dec_label_pc_45ea9f, %dec_label_pc_45eaa5, %dec_label_pc_45ea59, %dec_label_pc_45ea42, %dec_label_pc_45e9fd
  %eax.2.reload = load i32, i32* %eax.2.reg2mem
  ret i32 %eax.2.reload, !insn.addr !8749
}

define i32 @InternalCompareStringA(i32 %plocinfo, i16* %LocaleName, i32 %dwCmpFlags, i8* %lpString1, i32 %cchCount1, i8* %lpString2, i32 %cchCount2, i32 %code_page) local_unnamed_addr {
dec_label_pc_45fe1d:
  %esp.12.reg2mem = alloca i32, !insn.addr !8750
  %ebx.2.reg2mem = alloca i32, !insn.addr !8750
  %.pre-phi15.reg2mem = alloca i32*, !insn.addr !8750
  %esi.3.reg2mem = alloca i32, !insn.addr !8750
  %.pre-phi18.reg2mem = alloca i32*, !insn.addr !8750
  %esi.1.reg2mem = alloca i32, !insn.addr !8750
  %eax.4.reg2mem = alloca i32, !insn.addr !8750
  %esp.3.reg2mem = alloca i32, !insn.addr !8750
  %eax.3.reg2mem = alloca i32, !insn.addr !8750
  %esp.2.reg2mem = alloca i32, !insn.addr !8750
  %eax.2.reg2mem = alloca i32, !insn.addr !8750
  %stack_var_32.0.reg2mem = alloca i32, !insn.addr !8750
  %ebx.0.reg2mem = alloca i32, !insn.addr !8750
  %esi.0.reg2mem = alloca i32, !insn.addr !8750
  %stack_var_-22 = alloca i8, align 1
  %cpInfo_-28 = alloca %_cpinfo.647, align 8
  %stack_var_-68 = alloca i8*, align 4
  %stack_var_-60 = alloca i32, align 4
  %0 = icmp slt i32 %cchCount1, 1
  br i1 %0, label %dec_label_pc_45fe61, label %dec_label_pc_45fe51, !insn.addr !8751

dec_label_pc_45fe51:                              ; preds = %dec_label_pc_45fe1d
  store i8* %lpString1, i8** %stack_var_-68, align 4, !insn.addr !8752
  %1 = call i32 @__strncnt(i8* %lpString1, i32 %cchCount1), !insn.addr !8753
  store i32 %1, i32* %esi.0.reg2mem, !insn.addr !8754
  br label %dec_label_pc_45fe6a, !insn.addr !8754

dec_label_pc_45fe61:                              ; preds = %dec_label_pc_45fe1d
  %2 = icmp slt i32 %cchCount1, -1, !insn.addr !8755
  store i32 %cchCount1, i32* %esi.0.reg2mem, !insn.addr !8755
  br i1 %2, label %dec_label_pc_460096, label %dec_label_pc_45fe6a, !insn.addr !8755

dec_label_pc_45fe6a:                              ; preds = %dec_label_pc_45fe61, %dec_label_pc_45fe51
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  %3 = icmp slt i32 %cchCount2, 1
  br i1 %3, label %dec_label_pc_45fe7e, label %dec_label_pc_45fe71, !insn.addr !8756

dec_label_pc_45fe71:                              ; preds = %dec_label_pc_45fe6a
  store i8* %lpString2, i8** %stack_var_-68, align 4, !insn.addr !8757
  %4 = call i32 @__strncnt(i8* %lpString2, i32 %cchCount2), !insn.addr !8758
  store i32 %4, i32* %ebx.0.reg2mem, !insn.addr !8759
  br label %dec_label_pc_45fe87, !insn.addr !8759

dec_label_pc_45fe7e:                              ; preds = %dec_label_pc_45fe6a
  %5 = icmp slt i32 %cchCount2, -1, !insn.addr !8760
  store i32 %cchCount2, i32* %ebx.0.reg2mem, !insn.addr !8760
  br i1 %5, label %dec_label_pc_460096, label %dec_label_pc_45fe87, !insn.addr !8760

dec_label_pc_45fe87:                              ; preds = %dec_label_pc_45fe7e, %dec_label_pc_45fe71
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  %6 = icmp eq i32 %code_page, 0, !insn.addr !8761
  %7 = icmp eq i1 %6, false, !insn.addr !8762
  store i32 %code_page, i32* %stack_var_32.0.reg2mem, !insn.addr !8762
  br i1 %7, label %dec_label_pc_45fe99, label %dec_label_pc_45fe8e, !insn.addr !8762

dec_label_pc_45fe8e:                              ; preds = %dec_label_pc_45fe87
  %8 = inttoptr i32 %plocinfo to i32*, !insn.addr !8763
  %9 = load i32, i32* %8, align 4, !insn.addr !8763
  %10 = add i32 %9, 8, !insn.addr !8764
  %11 = inttoptr i32 %10 to i32*, !insn.addr !8764
  %12 = load i32, i32* %11, align 4, !insn.addr !8764
  store i32 %12, i32* %stack_var_32.0.reg2mem, !insn.addr !8765
  br label %dec_label_pc_45fe99, !insn.addr !8765

dec_label_pc_45fe99:                              ; preds = %dec_label_pc_45fe8e, %dec_label_pc_45fe87
  %13 = ptrtoint i32* %stack_var_-60 to i32, !insn.addr !8766
  %stack_var_32.0.reload = load i32, i32* %stack_var_32.0.reg2mem
  %14 = icmp ne i32 %esi.0.reload, 0, !insn.addr !8767
  %15 = icmp eq i32 %ebx.0.reload, 0, !insn.addr !8768
  %16 = icmp eq i1 %15, false, !insn.addr !8769
  %or.cond = icmp eq i1 %14, %16
  store i32 %13, i32* %esp.3.reg2mem, !insn.addr !8770
  br i1 %or.cond, label %dec_label_pc_45ff41, label %dec_label_pc_45fea5, !insn.addr !8770

dec_label_pc_45fea5:                              ; preds = %dec_label_pc_45fe99
  %17 = icmp eq i32 %esi.0.reload, %ebx.0.reload, !insn.addr !8771
  store i32 %13, i32* %esp.12.reg2mem, !insn.addr !8772
  br i1 %17, label %dec_label_pc_46008d, label %dec_label_pc_45fead, !insn.addr !8772

dec_label_pc_45fead:                              ; preds = %dec_label_pc_45fea5
  %18 = icmp sgt i32 %ebx.0.reload, 1, !insn.addr !8773
  br i1 %18, label %dec_label_pc_460096, label %dec_label_pc_45feb6, !insn.addr !8773

dec_label_pc_45feb6:                              ; preds = %dec_label_pc_45fead
  %19 = icmp sgt i32 %esi.0.reload, 1, !insn.addr !8774
  store i32 %13, i32* %esp.2.reg2mem, !insn.addr !8774
  br i1 %19, label %dec_label_pc_45fefe, label %dec_label_pc_45febb, !insn.addr !8774

dec_label_pc_45febb:                              ; preds = %dec_label_pc_45feb6
  %20 = inttoptr i32 %stack_var_32.0.reload to i8*, !insn.addr !8775
  store i8* %20, i8** %stack_var_-68, align 4, !insn.addr !8775
  %21 = bitcast %_cpinfo.647* %cpInfo_-28 to %_cpinfo*, !insn.addr !8776
  %22 = call i1 @GetCPInfo(i32 %stack_var_32.0.reload, %_cpinfo* nonnull %21), !insn.addr !8776
  %23 = icmp eq i1 %22, false, !insn.addr !8777
  br i1 %23, label %dec_label_pc_460096, label %dec_label_pc_45fece, !insn.addr !8778

dec_label_pc_45fece:                              ; preds = %dec_label_pc_45febb
  %24 = ptrtoint i8** %stack_var_-68 to i32, !insn.addr !8775
  %25 = icmp slt i32 %esi.0.reload, 1
  br i1 %25, label %dec_label_pc_45ff06, label %dec_label_pc_45fed2, !insn.addr !8779

dec_label_pc_45fed2:                              ; preds = %dec_label_pc_45fece
  %26 = getelementptr inbounds %_cpinfo.647, %_cpinfo.647* %cpInfo_-28, i32 0, i32 0, !insn.addr !8780
  %27 = load i32, i32* %26, align 8, !insn.addr !8780
  %28 = icmp ult i32 %27, 2, !insn.addr !8780
  %29 = load i8, i8* %stack_var_-22, align 1, !insn.addr !8781
  %30 = icmp eq i8 %29, 0, !insn.addr !8781
  %or.cond20 = or i1 %28, %30
  store i32 %24, i32* %esp.2.reg2mem, !insn.addr !8782
  br i1 %or.cond20, label %dec_label_pc_45fefe, label %dec_label_pc_45fee1.preheader, !insn.addr !8782

dec_label_pc_45fee1.preheader:                    ; preds = %dec_label_pc_45fed2
  %31 = ptrtoint i8* %stack_var_-22 to i32, !insn.addr !8783
  store i32 %31, i32* %eax.2.reg2mem
  br label %dec_label_pc_45fee1

dec_label_pc_45fee1:                              ; preds = %dec_label_pc_45fee1.preheader, %dec_label_pc_45fef6
  %eax.2.reload = load i32, i32* %eax.2.reg2mem
  %32 = add i32 %eax.2.reload, 1, !insn.addr !8784
  %33 = inttoptr i32 %32 to i8*, !insn.addr !8784
  %34 = load i8, i8* %33, align 1, !insn.addr !8784
  %35 = icmp eq i8 %34, 0, !insn.addr !8785
  store i32 %24, i32* %esp.2.reg2mem, !insn.addr !8786
  br i1 %35, label %dec_label_pc_45fefe, label %dec_label_pc_45fee8, !insn.addr !8786

dec_label_pc_45fee8:                              ; preds = %dec_label_pc_45fee1
  %36 = load i8, i8* %lpString1, align 1, !insn.addr !8787
  %37 = inttoptr i32 %eax.2.reload to i8*, !insn.addr !8788
  %38 = load i8, i8* %37, align 1, !insn.addr !8788
  %39 = icmp ult i8 %36, %38, !insn.addr !8788
  %40 = icmp ugt i8 %36, %34
  %or.cond9 = or i1 %40, %39
  store i32 %24, i32* %esp.12.reg2mem, !insn.addr !8789
  br i1 %or.cond9, label %dec_label_pc_45fef6, label %dec_label_pc_46008d, !insn.addr !8789

dec_label_pc_45fef6:                              ; preds = %dec_label_pc_45fee8
  %41 = add i32 %eax.2.reload, 2, !insn.addr !8790
  %42 = inttoptr i32 %41 to i8*, !insn.addr !8791
  %43 = load i8, i8* %42, align 1, !insn.addr !8791
  %44 = icmp eq i8 %43, 0, !insn.addr !8791
  %45 = icmp eq i1 %44, false, !insn.addr !8792
  store i32 %41, i32* %eax.2.reg2mem, !insn.addr !8792
  store i32 %24, i32* %esp.2.reg2mem, !insn.addr !8792
  br i1 %45, label %dec_label_pc_45fee1, label %dec_label_pc_45fefe, !insn.addr !8792

dec_label_pc_45fefe:                              ; preds = %dec_label_pc_45fef6, %dec_label_pc_45fee1, %dec_label_pc_45fed2, %dec_label_pc_45feb6
  %esp.2.reload = load i32, i32* %esp.2.reg2mem
  %46 = add i32 %esp.2.reload, -4, !insn.addr !8793
  %47 = inttoptr i32 %46 to i32*, !insn.addr !8793
  store i32 3, i32* %47, align 4, !insn.addr !8793
  br label %dec_label_pc_460096, !insn.addr !8793

dec_label_pc_45ff06:                              ; preds = %dec_label_pc_45fece
  %48 = icmp slt i32 %ebx.0.reload, 1
  store i32 %24, i32* %esp.3.reg2mem, !insn.addr !8794
  br i1 %48, label %dec_label_pc_45ff41, label %dec_label_pc_45ff0a, !insn.addr !8794

dec_label_pc_45ff0a:                              ; preds = %dec_label_pc_45ff06
  %49 = getelementptr inbounds %_cpinfo.647, %_cpinfo.647* %cpInfo_-28, i32 0, i32 0, !insn.addr !8795
  %50 = load i32, i32* %49, align 8, !insn.addr !8795
  %51 = icmp ult i32 %50, 2, !insn.addr !8795
  %52 = load i8, i8* %stack_var_-22, align 1, !insn.addr !8796
  %53 = icmp eq i8 %52, 0, !insn.addr !8796
  %or.cond11 = or i1 %51, %53
  br i1 %or.cond11, label %dec_label_pc_460096, label %dec_label_pc_45ff19, !insn.addr !8797

dec_label_pc_45ff19:                              ; preds = %dec_label_pc_45ff0a
  %54 = ptrtoint i8* %stack_var_-22 to i32, !insn.addr !8798
  store i32 %54, i32* %eax.3.reg2mem, !insn.addr !8799
  br label %dec_label_pc_45ff1c, !insn.addr !8799

dec_label_pc_45ff1c:                              ; preds = %dec_label_pc_45ff31, %dec_label_pc_45ff19
  %eax.3.reload = load i32, i32* %eax.3.reg2mem
  %55 = add i32 %eax.3.reload, 1, !insn.addr !8800
  %56 = inttoptr i32 %55 to i8*, !insn.addr !8800
  %57 = load i8, i8* %56, align 1, !insn.addr !8800
  %58 = icmp eq i8 %57, 0, !insn.addr !8801
  br i1 %58, label %dec_label_pc_460096, label %dec_label_pc_45ff23, !insn.addr !8802

dec_label_pc_45ff23:                              ; preds = %dec_label_pc_45ff1c
  %59 = load i8, i8* %lpString2, align 1, !insn.addr !8803
  %60 = inttoptr i32 %eax.3.reload to i8*, !insn.addr !8804
  %61 = load i8, i8* %60, align 1, !insn.addr !8804
  %62 = icmp ult i8 %59, %61, !insn.addr !8804
  %63 = icmp ugt i8 %59, %57
  %or.cond12 = or i1 %63, %62
  store i32 %24, i32* %esp.12.reg2mem, !insn.addr !8805
  br i1 %or.cond12, label %dec_label_pc_45ff31, label %dec_label_pc_46008d, !insn.addr !8805

dec_label_pc_45ff31:                              ; preds = %dec_label_pc_45ff23
  %64 = add i32 %eax.3.reload, 2, !insn.addr !8806
  %65 = inttoptr i32 %64 to i8*, !insn.addr !8807
  %66 = load i8, i8* %65, align 1, !insn.addr !8807
  %67 = icmp eq i8 %66, 0, !insn.addr !8807
  %68 = icmp eq i1 %67, false, !insn.addr !8808
  store i32 %64, i32* %eax.3.reg2mem, !insn.addr !8808
  br i1 %68, label %dec_label_pc_45ff1c, label %dec_label_pc_460096, !insn.addr !8808

dec_label_pc_45ff41:                              ; preds = %dec_label_pc_45fe99, %dec_label_pc_45ff06
  %esp.3.reload = load i32, i32* %esp.3.reg2mem
  %69 = add i32 %esp.3.reload, -4
  %70 = inttoptr i32 %69 to i32*
  store i32 0, i32* %70, align 4, !insn.addr !8809
  %71 = add i32 %esp.3.reload, -8, !insn.addr !8810
  %72 = inttoptr i32 %71 to i32*, !insn.addr !8810
  store i32 0, i32* %72, align 4, !insn.addr !8810
  %73 = add i32 %esp.3.reload, -12, !insn.addr !8811
  %74 = inttoptr i32 %73 to i32*, !insn.addr !8811
  store i32 %esi.0.reload, i32* %74, align 4, !insn.addr !8811
  %75 = ptrtoint i8* %lpString1 to i32, !insn.addr !8812
  %76 = add i32 %esp.3.reload, -16, !insn.addr !8812
  %77 = inttoptr i32 %76 to i32*, !insn.addr !8812
  store i32 %75, i32* %77, align 4, !insn.addr !8812
  %78 = add i32 %esp.3.reload, -20, !insn.addr !8813
  %79 = inttoptr i32 %78 to i32*, !insn.addr !8813
  store i32 9, i32* %79, align 4, !insn.addr !8813
  %80 = add i32 %esp.3.reload, -24, !insn.addr !8814
  %81 = inttoptr i32 %80 to i32*, !insn.addr !8814
  store i32 %stack_var_32.0.reload, i32* %81, align 4, !insn.addr !8814
  %82 = call i32 @function_401712(), !insn.addr !8815
  %83 = icmp eq i32 %82, 0, !insn.addr !8816
  br i1 %83, label %dec_label_pc_460096, label %dec_label_pc_45ff61, !insn.addr !8817

dec_label_pc_45ff61:                              ; preds = %dec_label_pc_45ff41
  %84 = mul i32 %82, 2, !insn.addr !8818
  %85 = add i32 %84, 8, !insn.addr !8819
  %86 = icmp ugt i32 %84, -9, !insn.addr !8820
  %87 = icmp eq i32 %85, 0
  %88 = or i1 %86, %87, !insn.addr !8821
  store i32* %70, i32** %.pre-phi15.reg2mem, !insn.addr !8822
  store i32 0, i32* %ebx.2.reg2mem, !insn.addr !8822
  br i1 %88, label %dec_label_pc_460082, label %dec_label_pc_45ff6f, !insn.addr !8822

dec_label_pc_45ff6f:                              ; preds = %dec_label_pc_45ff61
  %89 = icmp ult i32 %85, 1025
  br i1 %89, label %dec_label_pc_45ff76, label %dec_label_pc_45ff90, !insn.addr !8823

dec_label_pc_45ff76:                              ; preds = %dec_label_pc_45ff6f
  call void @_alloca_probe_16(), !insn.addr !8824
  %90 = inttoptr i32 %esp.3.reload to i32*, !insn.addr !8825
  store i32 52428, i32* %90, align 4, !insn.addr !8825
  store i32 %esp.3.reload, i32* %eax.4.reg2mem, !insn.addr !8826
  br label %dec_label_pc_45ffb5, !insn.addr !8826

dec_label_pc_45ff90:                              ; preds = %dec_label_pc_45ff6f
  store i32 %85, i32* %70, align 4, !insn.addr !8827
  %91 = call i32* @_malloc_base(i32 %82), !insn.addr !8828
  %92 = ptrtoint i32* %91 to i32, !insn.addr !8828
  %93 = icmp eq i32* %91, null, !insn.addr !8829
  store i32* %70, i32** %.pre-phi15.reg2mem, !insn.addr !8830
  store i32 %92, i32* %ebx.2.reg2mem, !insn.addr !8830
  br i1 %93, label %dec_label_pc_460082, label %dec_label_pc_45ffa2, !insn.addr !8830

dec_label_pc_45ffa2:                              ; preds = %dec_label_pc_45ff90
  store i32 56797, i32* %91, align 4, !insn.addr !8831
  store i32 %92, i32* %eax.4.reg2mem, !insn.addr !8831
  br label %dec_label_pc_45ffb5, !insn.addr !8831

dec_label_pc_45ffb5:                              ; preds = %dec_label_pc_45ff76, %dec_label_pc_45ffa2
  %eax.4.reload = load i32, i32* %eax.4.reg2mem
  %94 = add i32 %eax.4.reload, 8, !insn.addr !8832
  %95 = icmp eq i32 %94, 0, !insn.addr !8833
  store i32* %70, i32** %.pre-phi15.reg2mem, !insn.addr !8834
  store i32 0, i32* %ebx.2.reg2mem, !insn.addr !8834
  br i1 %95, label %dec_label_pc_460082, label %dec_label_pc_45ffbd, !insn.addr !8834

dec_label_pc_45ffbd:                              ; preds = %dec_label_pc_45ffb5
  store i32 %82, i32* %70, align 4, !insn.addr !8835
  store i32 %94, i32* %72, align 4, !insn.addr !8836
  store i32 %esi.0.reload, i32* %74, align 4, !insn.addr !8837
  store i32 %75, i32* %77, align 4, !insn.addr !8838
  store i32 1, i32* %79, align 4, !insn.addr !8839
  store i32 %stack_var_32.0.reload, i32* %81, align 4, !insn.addr !8840
  %96 = call i32 @function_401712(), !insn.addr !8841
  %97 = icmp eq i32 %96, 0, !insn.addr !8842
  store i32* %70, i32** %.pre-phi15.reg2mem, !insn.addr !8843
  store i32 %94, i32* %ebx.2.reg2mem, !insn.addr !8843
  br i1 %97, label %dec_label_pc_460082, label %dec_label_pc_45ffdb, !insn.addr !8843

dec_label_pc_45ffdb:                              ; preds = %dec_label_pc_45ffbd
  store i32 0, i32* %70, align 4, !insn.addr !8844
  store i32 0, i32* %72, align 4, !insn.addr !8845
  store i32 %ebx.0.reload, i32* %74, align 4, !insn.addr !8846
  %98 = ptrtoint i8* %lpString2 to i32, !insn.addr !8847
  store i32 %98, i32* %77, align 4, !insn.addr !8847
  store i32 9, i32* %79, align 4, !insn.addr !8848
  store i32 %stack_var_32.0.reload, i32* %81, align 4, !insn.addr !8849
  %99 = call i32 @function_401712(), !insn.addr !8850
  %100 = icmp eq i32 %99, 0, !insn.addr !8851
  store i32* %70, i32** %.pre-phi15.reg2mem, !insn.addr !8852
  store i32 %94, i32* %ebx.2.reg2mem, !insn.addr !8852
  br i1 %100, label %dec_label_pc_460082, label %dec_label_pc_45fff7, !insn.addr !8852

dec_label_pc_45fff7:                              ; preds = %dec_label_pc_45ffdb
  %101 = mul i32 %99, 2, !insn.addr !8853
  %102 = add i32 %101, 8, !insn.addr !8854
  %103 = icmp ugt i32 %101, -9, !insn.addr !8855
  %104 = icmp eq i32 %102, 0
  %105 = or i1 %103, %104, !insn.addr !8856
  store i32* %70, i32** %.pre-phi18.reg2mem, !insn.addr !8857
  store i32 0, i32* %esi.3.reg2mem, !insn.addr !8857
  br i1 %105, label %dec_label_pc_460076, label %dec_label_pc_460005, !insn.addr !8857

dec_label_pc_460005:                              ; preds = %dec_label_pc_45fff7
  %106 = icmp ult i32 %102, 1025
  br i1 %106, label %dec_label_pc_46000c, label %dec_label_pc_46001f, !insn.addr !8858

dec_label_pc_46000c:                              ; preds = %dec_label_pc_460005
  call void @_alloca_probe_16(), !insn.addr !8859
  %107 = inttoptr i32 %esp.3.reload to i32*, !insn.addr !8860
  store i32 52428, i32* %107, align 4, !insn.addr !8860
  store i32 %esp.3.reload, i32* %esi.1.reg2mem, !insn.addr !8861
  br label %dec_label_pc_460039, !insn.addr !8861

dec_label_pc_46001f:                              ; preds = %dec_label_pc_460005
  store i32 %102, i32* %70, align 4, !insn.addr !8862
  %108 = call i32* @_malloc_base(i32 %99), !insn.addr !8863
  %109 = ptrtoint i32* %108 to i32, !insn.addr !8863
  %110 = icmp eq i32* %108, null, !insn.addr !8864
  store i32* %70, i32** %.pre-phi18.reg2mem, !insn.addr !8865
  store i32 %109, i32* %esi.3.reg2mem, !insn.addr !8865
  br i1 %110, label %dec_label_pc_460076, label %dec_label_pc_46002c, !insn.addr !8865

dec_label_pc_46002c:                              ; preds = %dec_label_pc_46001f
  store i32 56797, i32* %108, align 4, !insn.addr !8866
  store i32 %109, i32* %esi.1.reg2mem, !insn.addr !8866
  br label %dec_label_pc_460039, !insn.addr !8866

dec_label_pc_460039:                              ; preds = %dec_label_pc_46000c, %dec_label_pc_46002c
  %esi.1.reload = load i32, i32* %esi.1.reg2mem
  %111 = add i32 %esi.1.reload, 8, !insn.addr !8867
  %112 = icmp eq i32 %111, 0, !insn.addr !8868
  store i32* %70, i32** %.pre-phi18.reg2mem, !insn.addr !8869
  store i32 0, i32* %esi.3.reg2mem, !insn.addr !8869
  br i1 %112, label %dec_label_pc_460076, label %dec_label_pc_46003d, !insn.addr !8869

dec_label_pc_46003d:                              ; preds = %dec_label_pc_460039
  store i32 %99, i32* %70, align 4, !insn.addr !8870
  store i32 %111, i32* %72, align 4, !insn.addr !8871
  store i32 %ebx.0.reload, i32* %74, align 4, !insn.addr !8872
  store i32 %98, i32* %77, align 4, !insn.addr !8873
  store i32 1, i32* %79, align 4, !insn.addr !8874
  store i32 %stack_var_32.0.reload, i32* %81, align 4, !insn.addr !8875
  %113 = call i32 @function_401712(), !insn.addr !8876
  %114 = icmp eq i32 %113, 0, !insn.addr !8877
  store i32* %70, i32** %.pre-phi18.reg2mem, !insn.addr !8878
  store i32 %111, i32* %esi.3.reg2mem, !insn.addr !8878
  br i1 %114, label %dec_label_pc_460076, label %dec_label_pc_460056, !insn.addr !8878

dec_label_pc_460056:                              ; preds = %dec_label_pc_46003d
  store i32 0, i32* %70, align 4, !insn.addr !8879
  store i32 0, i32* %72, align 4, !insn.addr !8880
  store i32 0, i32* %74, align 4, !insn.addr !8881
  store i32 %99, i32* %77, align 4, !insn.addr !8882
  store i32 %111, i32* %79, align 4, !insn.addr !8883
  store i32 %82, i32* %81, align 4, !insn.addr !8884
  %115 = add i32 %esp.3.reload, -28, !insn.addr !8885
  %116 = inttoptr i32 %115 to i32*, !insn.addr !8885
  store i32 %94, i32* %116, align 4, !insn.addr !8885
  %117 = add i32 %esp.3.reload, -32, !insn.addr !8886
  %118 = inttoptr i32 %117 to i32*, !insn.addr !8886
  store i32 %dwCmpFlags, i32* %118, align 4, !insn.addr !8886
  %119 = ptrtoint i16* %LocaleName to i32, !insn.addr !8887
  %120 = add i32 %esp.3.reload, -36, !insn.addr !8887
  %121 = inttoptr i32 %120 to i32*, !insn.addr !8887
  store i32 %119, i32* %121, align 4, !insn.addr !8887
  %122 = call i32 @function_403233(), !insn.addr !8888
  %.pre = add i32 %esp.3.reload, -40
  %.pre17 = inttoptr i32 %.pre to i32*
  store i32* %.pre17, i32** %.pre-phi18.reg2mem, !insn.addr !8889
  store i32 %111, i32* %esi.3.reg2mem, !insn.addr !8889
  br label %dec_label_pc_460076, !insn.addr !8889

dec_label_pc_460076:                              ; preds = %dec_label_pc_45fff7, %dec_label_pc_46001f, %dec_label_pc_460039, %dec_label_pc_46003d, %dec_label_pc_460056
  %esi.3.reload = load i32, i32* %esi.3.reg2mem
  %.pre-phi18.reload = load i32*, i32** %.pre-phi18.reg2mem
  store i32 %esi.3.reload, i32* %.pre-phi18.reload, align 4, !insn.addr !8890
  %123 = call i32 @function_40125d(), !insn.addr !8891
  store i32* %.pre-phi18.reload, i32** %.pre-phi15.reg2mem, !insn.addr !8892
  store i32 %94, i32* %ebx.2.reg2mem, !insn.addr !8892
  br label %dec_label_pc_460082, !insn.addr !8892

dec_label_pc_460082:                              ; preds = %dec_label_pc_45ff61, %dec_label_pc_45ff90, %dec_label_pc_45ffb5, %dec_label_pc_45ffbd, %dec_label_pc_45ffdb, %dec_label_pc_460076
  %ebx.2.reload = load i32, i32* %ebx.2.reg2mem
  %.pre-phi15.reload = load i32*, i32** %.pre-phi15.reg2mem
  store i32 %ebx.2.reload, i32* %.pre-phi15.reload, align 4, !insn.addr !8893
  %124 = call i32 @function_40125d(), !insn.addr !8894
  br label %dec_label_pc_460096, !insn.addr !8895

dec_label_pc_46008d:                              ; preds = %dec_label_pc_45fee8, %dec_label_pc_45ff23, %dec_label_pc_45fea5
  %esp.12.reload = load i32, i32* %esp.12.reg2mem
  %125 = add i32 %esp.12.reload, -4, !insn.addr !8896
  %126 = inttoptr i32 %125 to i32*, !insn.addr !8896
  store i32 2, i32* %126, align 4, !insn.addr !8896
  br label %dec_label_pc_460096, !insn.addr !8897

dec_label_pc_460096:                              ; preds = %dec_label_pc_45ff1c, %dec_label_pc_45ff31, %dec_label_pc_45fefe, %dec_label_pc_46008d, %dec_label_pc_45fe61, %dec_label_pc_45fe7e, %dec_label_pc_45febb, %dec_label_pc_45ff41, %dec_label_pc_45fead, %dec_label_pc_45ff0a, %dec_label_pc_460082
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !8898
  ret i32 ptrtoint (i32* @80 to i32), !insn.addr !8899
}

define i32 @__acrt_CompareStringA(i32 %locale, i16* %locale_name, i32 %compare_flags, i8* %string1, i32 %string1_count, i8* %string2, i32 %string2_count, i32 %code_page) local_unnamed_addr {
dec_label_pc_46014a:
  %0 = call i8 @__decompiler_undefined_function_7()
  %locale_update_-16 = alloca i32, align 4
  %1 = call i32 @__decompiler_undefined_function_0()
  %2 = call i32 @function_403d78(i32 %locale), !insn.addr !8900
  %3 = ptrtoint i32* %locale_update_-16 to i32, !insn.addr !8901
  %4 = call i32 @InternalCompareStringA(i32 %3, i16* %locale_name, i32 %compare_flags, i8* %string1, i32 %string1_count, i8* %string2, i32 %string2_count, i32 %code_page), !insn.addr !8902
  %5 = icmp eq i8 %0, 0, !insn.addr !8903
  br i1 %5, label %dec_label_pc_46018e, label %dec_label_pc_460184, !insn.addr !8904

dec_label_pc_460184:                              ; preds = %dec_label_pc_46014a
  %6 = add i32 %1, 848, !insn.addr !8905
  %7 = inttoptr i32 %6 to i32*, !insn.addr !8905
  %8 = load i32, i32* %7, align 4, !insn.addr !8905
  %9 = and i32 %8, -3, !insn.addr !8905
  store i32 %9, i32* %7, align 4, !insn.addr !8905
  br label %dec_label_pc_46018e, !insn.addr !8905

dec_label_pc_46018e:                              ; preds = %dec_label_pc_460184, %dec_label_pc_46014a
  ret i32 %4, !insn.addr !8906
}

define i32 @__acrt_LCMapStringA_stat(i32 %plocinfo, i16* %LocaleName, i32 %dwMapFlags, i8* %lpSrcStr, i32 %cchSrc, i8* %lpDestStr, i32 %cchDest, i32 %code_page, i32 %bError) local_unnamed_addr {
dec_label_pc_460a93:
  %esp.7.reg2mem = alloca i32, !insn.addr !8907
  %ebx.214.reg2mem = alloca i32, !insn.addr !8907
  %edi.2.reg2mem = alloca i32, !insn.addr !8907
  %esp.5.reg2mem = alloca i32, !insn.addr !8907
  %edi.1.reg2mem = alloca i32, !insn.addr !8907
  %ebx.2.reg2mem = alloca i32, !insn.addr !8907
  %ebx.0.reg2mem = alloca i32, !insn.addr !8907
  %stack_var_-96 = alloca i16*, align 4
  %stack_var_-60 = alloca i16*, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = icmp slt i32 %cchSrc, 1
  br i1 %0, label %dec_label_pc_460ac2, label %dec_label_pc_460aae, !insn.addr !8908

dec_label_pc_460aae:                              ; preds = %dec_label_pc_460a93
  %1 = call i32 @__strncnt(i8* %lpSrcStr, i32 %cchSrc), !insn.addr !8909
  br label %dec_label_pc_460ac2

dec_label_pc_460ac2:                              ; preds = %dec_label_pc_460aae, %dec_label_pc_460a93
  %2 = call i32 @function_401712(), !insn.addr !8910
  %3 = icmp eq i32 %2, 0, !insn.addr !8911
  br i1 %3, label %dec_label_pc_460c5a, label %dec_label_pc_460b02, !insn.addr !8912

dec_label_pc_460b02:                              ; preds = %dec_label_pc_460ac2
  %4 = ptrtoint i32* %stack_var_-24 to i32, !insn.addr !8913
  %5 = mul i32 %2, 2, !insn.addr !8914
  %6 = add i32 %5, 8, !insn.addr !8915
  %7 = icmp ult i32 %5, -8, !insn.addr !8916
  %8 = zext i1 %7 to i32, !insn.addr !8917
  %9 = or i32 %5, %8, !insn.addr !8917
  %10 = sub i32 %5, %9, !insn.addr !8917
  %11 = and i32 %10, %6, !insn.addr !8918
  %12 = icmp eq i32 %11, 0, !insn.addr !8918
  store i32 0, i32* %ebx.214.reg2mem, !insn.addr !8919
  store i32 %4, i32* %esp.7.reg2mem, !insn.addr !8919
  br i1 %12, label %dec_label_pc_460c51, label %dec_label_pc_460b10, !insn.addr !8919

dec_label_pc_460b10:                              ; preds = %dec_label_pc_460b02
  %13 = icmp ult i32 %11, 1025
  br i1 %13, label %dec_label_pc_460b17, label %dec_label_pc_460b2a, !insn.addr !8920

dec_label_pc_460b17:                              ; preds = %dec_label_pc_460b10
  call void @_alloca_probe_16(), !insn.addr !8921
  store i32 52428, i32* %stack_var_-24, align 4, !insn.addr !8922
  store i32 %4, i32* %ebx.0.reg2mem, !insn.addr !8923
  br label %dec_label_pc_460b3d, !insn.addr !8923

dec_label_pc_460b2a:                              ; preds = %dec_label_pc_460b10
  %14 = call i32* @_malloc_base(i32 %11), !insn.addr !8924
  %15 = ptrtoint i32* %14 to i32, !insn.addr !8924
  %16 = icmp eq i32* %14, null, !insn.addr !8925
  store i32 %15, i32* %ebx.2.reg2mem, !insn.addr !8926
  br i1 %16, label %dec_label_pc_460b47, label %dec_label_pc_460b37, !insn.addr !8926

dec_label_pc_460b37:                              ; preds = %dec_label_pc_460b2a
  store i32 56797, i32* %14, align 4, !insn.addr !8927
  store i32 %15, i32* %ebx.0.reg2mem, !insn.addr !8927
  br label %dec_label_pc_460b3d, !insn.addr !8927

dec_label_pc_460b3d:                              ; preds = %dec_label_pc_460b37, %dec_label_pc_460b17
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  %17 = add i32 %ebx.0.reload, 8, !insn.addr !8928
  store i32 %17, i32* %ebx.2.reg2mem, !insn.addr !8928
  br label %dec_label_pc_460b47, !insn.addr !8928

dec_label_pc_460b47:                              ; preds = %dec_label_pc_460b2a, %dec_label_pc_460b3d
  %ebx.2.reload = load i32, i32* %ebx.2.reg2mem
  %18 = icmp eq i32 %ebx.2.reload, 0, !insn.addr !8929
  store i32 0, i32* %ebx.214.reg2mem, !insn.addr !8930
  store i32 %4, i32* %esp.7.reg2mem, !insn.addr !8930
  br i1 %18, label %dec_label_pc_460c51, label %dec_label_pc_460b4f, !insn.addr !8930

dec_label_pc_460b4f:                              ; preds = %dec_label_pc_460b47
  %19 = call i32 @function_401712(), !insn.addr !8931
  %20 = icmp eq i32 %19, 0, !insn.addr !8932
  store i32 %ebx.2.reload, i32* %ebx.214.reg2mem, !insn.addr !8933
  store i32 %4, i32* %esp.7.reg2mem, !insn.addr !8933
  br i1 %20, label %dec_label_pc_460c51, label %dec_label_pc_460b68, !insn.addr !8933

dec_label_pc_460b68:                              ; preds = %dec_label_pc_460b4f
  %21 = ptrtoint i16* %LocaleName to i32
  %22 = bitcast i16** %stack_var_-60 to i32*
  store i32 %21, i32* %22, align 4
  %23 = ptrtoint i16** %stack_var_-60 to i32, !insn.addr !8934
  %24 = call i32 @"___acrt_LCMapStringEx@36"(i32 %21, i32 %dwMapFlags, i32 %ebx.2.reload, i32 %2, i32 0, i32 0, i32 0, i32 0, i32 0), !insn.addr !8935
  %25 = icmp eq i32 %24, 0, !insn.addr !8936
  store i32 %ebx.2.reload, i32* %ebx.214.reg2mem, !insn.addr !8937
  store i32 %23, i32* %esp.7.reg2mem, !insn.addr !8937
  br i1 %25, label %dec_label_pc_460c51, label %dec_label_pc_460b89, !insn.addr !8937

dec_label_pc_460b89:                              ; preds = %dec_label_pc_460b68
  %26 = and i32 %dwMapFlags, 1024, !insn.addr !8938
  %27 = icmp eq i32 %26, 0, !insn.addr !8938
  br i1 %27, label %dec_label_pc_460bcb, label %dec_label_pc_460b93, !insn.addr !8939

dec_label_pc_460b93:                              ; preds = %dec_label_pc_460b89
  %28 = icmp eq i32 %cchDest, 0, !insn.addr !8940
  %29 = icmp sgt i32 %24, %cchDest, !insn.addr !8941
  %or.cond = or i1 %28, %29
  store i32 %ebx.2.reload, i32* %ebx.214.reg2mem, !insn.addr !8942
  store i32 %23, i32* %esp.7.reg2mem, !insn.addr !8942
  br i1 %or.cond, label %dec_label_pc_460c51, label %dec_label_pc_460ba6, !insn.addr !8942

dec_label_pc_460ba6:                              ; preds = %dec_label_pc_460b93
  %30 = ptrtoint i8* %lpDestStr to i32
  %31 = bitcast i16** %stack_var_-96 to i32*
  store i32 %21, i32* %31, align 4
  %32 = ptrtoint i16** %stack_var_-96 to i32, !insn.addr !8943
  %33 = call i32 @"___acrt_LCMapStringEx@36"(i32 %21, i32 %dwMapFlags, i32 %ebx.2.reload, i32 %2, i32 %30, i32 %cchDest, i32 0, i32 0, i32 0), !insn.addr !8944
  store i32 %ebx.2.reload, i32* %ebx.214.reg2mem
  store i32 %32, i32* %esp.7.reg2mem
  br label %dec_label_pc_460c51

dec_label_pc_460bcb:                              ; preds = %dec_label_pc_460b89
  %34 = mul i32 %24, 2, !insn.addr !8945
  %35 = add i32 %34, 8, !insn.addr !8946
  %36 = icmp ult i32 %34, -8, !insn.addr !8947
  %37 = zext i1 %36 to i32, !insn.addr !8948
  %38 = or i32 %34, %37, !insn.addr !8948
  %39 = sub i32 %34, %38, !insn.addr !8948
  %40 = and i32 %39, %35, !insn.addr !8949
  %41 = icmp eq i32 %40, 0, !insn.addr !8949
  store i32 %23, i32* %esp.5.reg2mem, !insn.addr !8950
  store i32 0, i32* %edi.2.reg2mem, !insn.addr !8950
  br i1 %41, label %dec_label_pc_460c48, label %dec_label_pc_460bd9, !insn.addr !8950

dec_label_pc_460bd9:                              ; preds = %dec_label_pc_460bcb
  %42 = icmp ugt i32 %40, 1024
  br i1 %42, label %dec_label_pc_460bf0, label %dec_label_pc_460bdd, !insn.addr !8951

dec_label_pc_460bdd:                              ; preds = %dec_label_pc_460bd9
  call void @_alloca_probe_16(), !insn.addr !8952
  store i16* inttoptr (i32 52428 to i16*), i16** %stack_var_-60, align 4, !insn.addr !8953
  store i32 %23, i32* %edi.1.reg2mem, !insn.addr !8954
  br label %dec_label_pc_460c0a, !insn.addr !8954

dec_label_pc_460bf0:                              ; preds = %dec_label_pc_460bd9
  %43 = call i32* @_malloc_base(i32 %40), !insn.addr !8955
  %44 = ptrtoint i32* %43 to i32, !insn.addr !8955
  %45 = icmp eq i32* %43, null, !insn.addr !8956
  store i32 %23, i32* %esp.5.reg2mem, !insn.addr !8957
  store i32 %44, i32* %edi.2.reg2mem, !insn.addr !8957
  br i1 %45, label %dec_label_pc_460c48, label %dec_label_pc_460bfd, !insn.addr !8957

dec_label_pc_460bfd:                              ; preds = %dec_label_pc_460bf0
  store i32 56797, i32* %43, align 4, !insn.addr !8958
  store i32 %44, i32* %edi.1.reg2mem, !insn.addr !8958
  br label %dec_label_pc_460c0a, !insn.addr !8958

dec_label_pc_460c0a:                              ; preds = %dec_label_pc_460bdd, %dec_label_pc_460bfd
  %edi.1.reload = load i32, i32* %edi.1.reg2mem
  %46 = add i32 %edi.1.reload, 8, !insn.addr !8959
  %47 = icmp eq i32 %46, 0, !insn.addr !8960
  store i32 %23, i32* %esp.5.reg2mem, !insn.addr !8961
  store i32 0, i32* %edi.2.reg2mem, !insn.addr !8961
  br i1 %47, label %dec_label_pc_460c48, label %dec_label_pc_460c0e, !insn.addr !8961

dec_label_pc_460c0e:                              ; preds = %dec_label_pc_460c0a
  %48 = bitcast i16** %stack_var_-96 to i32*
  store i32 %21, i32* %48, align 4
  %49 = ptrtoint i16** %stack_var_-96 to i32, !insn.addr !8962
  %50 = call i32 @"___acrt_LCMapStringEx@36"(i32 %21, i32 %dwMapFlags, i32 %ebx.2.reload, i32 %2, i32 %46, i32 %24, i32 0, i32 0, i32 0), !insn.addr !8963
  %51 = icmp eq i32 %50, 0, !insn.addr !8964
  store i32 %49, i32* %esp.5.reg2mem, !insn.addr !8965
  store i32 %46, i32* %edi.2.reg2mem, !insn.addr !8965
  br i1 %51, label %dec_label_pc_460c48, label %dec_label_pc_460c29, !insn.addr !8965

dec_label_pc_460c29:                              ; preds = %dec_label_pc_460c0e
  %52 = call i32 @function_404601(), !insn.addr !8966
  %53 = icmp eq i32 %52, 0, !insn.addr !8967
  %54 = icmp eq i1 %53, false, !insn.addr !8968
  store i32 %49, i32* %esp.5.reg2mem, !insn.addr !8968
  store i32 %46, i32* %edi.2.reg2mem, !insn.addr !8968
  br i1 %54, label %dec_label_pc_460c74, label %dec_label_pc_460c48, !insn.addr !8968

dec_label_pc_460c48:                              ; preds = %dec_label_pc_460bcb, %dec_label_pc_460c29, %dec_label_pc_460c0e, %dec_label_pc_460c0a, %dec_label_pc_460bf0
  %edi.2.reload = load i32, i32* %edi.2.reg2mem
  %esp.5.reload = load i32, i32* %esp.5.reg2mem
  %55 = add i32 %esp.5.reload, -4, !insn.addr !8969
  %56 = inttoptr i32 %55 to i32*, !insn.addr !8969
  store i32 %edi.2.reload, i32* %56, align 4, !insn.addr !8969
  %57 = call i32 @function_40125d(), !insn.addr !8970
  store i32 %ebx.2.reload, i32* %ebx.214.reg2mem, !insn.addr !8971
  store i32 %esp.5.reload, i32* %esp.7.reg2mem, !insn.addr !8971
  br label %dec_label_pc_460c51, !insn.addr !8971

dec_label_pc_460c51:                              ; preds = %dec_label_pc_460b02, %dec_label_pc_460ba6, %dec_label_pc_460b47, %dec_label_pc_460b4f, %dec_label_pc_460b68, %dec_label_pc_460c48, %dec_label_pc_460c74, %dec_label_pc_460b93
  %esp.7.reload = load i32, i32* %esp.7.reg2mem
  %ebx.214.reload = load i32, i32* %ebx.214.reg2mem
  %58 = add i32 %esp.7.reload, -4, !insn.addr !8972
  %59 = inttoptr i32 %58 to i32*, !insn.addr !8972
  store i32 %ebx.214.reload, i32* %59, align 4, !insn.addr !8972
  %60 = call i32 @function_40125d(), !insn.addr !8973
  br label %dec_label_pc_460c5a, !insn.addr !8974

dec_label_pc_460c5a:                              ; preds = %dec_label_pc_460c51, %dec_label_pc_460ac2
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !8975
  ret i32 ptrtoint (i32* @80 to i32), !insn.addr !8976

dec_label_pc_460c74:                              ; preds = %dec_label_pc_460c29
  %61 = call i32 @function_40125d(), !insn.addr !8977
  store i32 %ebx.2.reload, i32* %ebx.214.reg2mem, !insn.addr !8978
  store i32 %49, i32* %esp.7.reg2mem, !insn.addr !8978
  br label %dec_label_pc_460c51, !insn.addr !8978
}

define i32 @__acrt_LCMapStringA(i32 %plocinfo, i16* %LocaleName, i32 %dwMapFlags, i8* %lpSrcStr, i32 %cchSrc, i8* %lpDestStr, i32 %cchDest, i32 %code_page, i32 %bError) local_unnamed_addr {
dec_label_pc_460cf7:
  %0 = call i8 @__decompiler_undefined_function_7()
  %_loc_update_-16 = alloca i32, align 4
  %1 = call i32 @__decompiler_undefined_function_0()
  %2 = call i32 @function_403d78(i32 %plocinfo), !insn.addr !8979
  %3 = ptrtoint i32* %_loc_update_-16 to i32, !insn.addr !8980
  %4 = call i32 @__acrt_LCMapStringA_stat(i32 %3, i16* %LocaleName, i32 %dwMapFlags, i8* %lpSrcStr, i32 %cchSrc, i8* %lpDestStr, i32 %cchDest, i32 %code_page, i32 %bError), !insn.addr !8981
  %5 = icmp eq i8 %0, 0, !insn.addr !8982
  br i1 %5, label %dec_label_pc_460d3e, label %dec_label_pc_460d34, !insn.addr !8983

dec_label_pc_460d34:                              ; preds = %dec_label_pc_460cf7
  %6 = add i32 %1, 848, !insn.addr !8984
  %7 = inttoptr i32 %6 to i32*, !insn.addr !8984
  %8 = load i32, i32* %7, align 4, !insn.addr !8984
  %9 = and i32 %8, -3, !insn.addr !8984
  store i32 %9, i32* %7, align 4, !insn.addr !8984
  br label %dec_label_pc_460d3e, !insn.addr !8984

dec_label_pc_460d3e:                              ; preds = %dec_label_pc_460d34, %dec_label_pc_460cf7
  ret i32 %4, !insn.addr !8985
}

define i32 @__acrt_SetEnvironmentVariableA(i8* %lpName, i8* %lpValue) local_unnamed_addr {
dec_label_pc_460e6b:
  %ebx.0.reg2mem = alloca i32, !insn.addr !8986
  %0 = call i32 @function_402ae5(), !insn.addr !8987
  %1 = call i32 @function_403733(), !insn.addr !8988
  %2 = icmp eq i32 %1, 0, !insn.addr !8989
  %3 = icmp eq i1 %2, false, !insn.addr !8990
  store i32 0, i32* %ebx.0.reg2mem, !insn.addr !8990
  br i1 %3, label %dec_label_pc_460efa, label %dec_label_pc_460eb6, !insn.addr !8990

dec_label_pc_460eb6:                              ; preds = %dec_label_pc_460e6b
  %4 = call i32 @function_402ae5(), !insn.addr !8991
  %5 = call i32 @function_403733(), !insn.addr !8992
  %6 = icmp eq i32 %5, 0, !insn.addr !8993
  %7 = icmp eq i1 %6, false, !insn.addr !8994
  store i32 0, i32* %ebx.0.reg2mem, !insn.addr !8994
  br i1 %7, label %dec_label_pc_460efa, label %dec_label_pc_460ed2, !insn.addr !8994

dec_label_pc_460ed2:                              ; preds = %dec_label_pc_460eb6
  %8 = call i1 @SetEnvironmentVariableW(i16* null, i16* null), !insn.addr !8995
  %9 = sext i1 %8 to i32, !insn.addr !8995
  store i32 %9, i32* %ebx.0.reg2mem, !insn.addr !8996
  br label %dec_label_pc_460efa, !insn.addr !8996

dec_label_pc_460efa:                              ; preds = %dec_label_pc_460ed2, %dec_label_pc_460eb6, %dec_label_pc_460e6b
  %ebx.0.reload = load i32, i32* %ebx.0.reg2mem
  ret i32 %ebx.0.reload, !insn.addr !8997
}

define i64 @"common_lseek<__int64>"(i32 %fh, i64 %offset, i32 %origin) local_unnamed_addr {
dec_label_pc_4622a8:
  %esi.1.reg2mem = alloca i32, !insn.addr !8998
  %esi.0.reg2mem = alloca i32, !insn.addr !8998
  %0 = call i32 @__decompiler_undefined_function_0()
  %1 = call i32 @function_401b4f(i32* nonnull @global_var_47a9b8, i32 24), !insn.addr !8999
  %2 = add i32 %0, 8, !insn.addr !9000
  %3 = inttoptr i32 %2 to i32*, !insn.addr !9000
  %4 = load i32, i32* %3, align 4, !insn.addr !9000
  %5 = icmp eq i32 %4, -2, !insn.addr !9001
  %6 = icmp eq i1 %5, false, !insn.addr !9002
  br i1 %6, label %dec_label_pc_4622d4, label %dec_label_pc_4622bc, !insn.addr !9002

dec_label_pc_4622bc:                              ; preds = %dec_label_pc_4622a8
  %7 = call i32* @__doserrno(), !insn.addr !9003
  store i32 0, i32* %7, align 4, !insn.addr !9004
  %8 = call i32* @_errno(), !insn.addr !9005
  store i32 9, i32* %8, align 4, !insn.addr !9006
  store i32 -1, i32* %esi.1.reg2mem, !insn.addr !9007
  br label %dec_label_pc_4623a2, !insn.addr !9007

dec_label_pc_4622d4:                              ; preds = %dec_label_pc_4622a8
  %9 = icmp slt i32 %4, 0, !insn.addr !9008
  br i1 %9, label %dec_label_pc_462385, label %dec_label_pc_4622dc, !insn.addr !9009

dec_label_pc_4622dc:                              ; preds = %dec_label_pc_4622d4
  %10 = load i32, i32* @_nhandle, align 4, !insn.addr !9010
  %11 = icmp ult i32 %4, %10, !insn.addr !9010
  %12 = icmp eq i1 %11, false, !insn.addr !9011
  br i1 %12, label %dec_label_pc_462385, label %dec_label_pc_4622e8, !insn.addr !9011

dec_label_pc_4622e8:                              ; preds = %dec_label_pc_4622dc
  %13 = udiv i32 %4, 64
  %14 = add i32 %0, -28, !insn.addr !9012
  %15 = inttoptr i32 %14 to i32*, !insn.addr !9012
  store i32 %13, i32* %15, align 4, !insn.addr !9012
  %16 = and i32 %4, 63, !insn.addr !9013
  %narrow = mul nuw nsw i32 %16, 56
  %17 = add i32 %0, -32, !insn.addr !9014
  %18 = inttoptr i32 %17 to i32*, !insn.addr !9014
  store i32 %narrow, i32* %18, align 4, !insn.addr !9014
  %19 = mul i32 %13, 4, !insn.addr !9015
  %20 = add i32 %19, ptrtoint (i32* @__pioinfo to i32), !insn.addr !9015
  %21 = inttoptr i32 %20 to i32*, !insn.addr !9015
  %22 = load i32, i32* %21, align 4, !insn.addr !9015
  %23 = add nuw nsw i32 %narrow, 40, !insn.addr !9016
  %24 = add i32 %23, %22, !insn.addr !9016
  %25 = inttoptr i32 %24 to i8*, !insn.addr !9016
  %26 = load i8, i8* %25, align 1, !insn.addr !9016
  %27 = and i8 %26, 1, !insn.addr !9016
  %28 = icmp eq i8 %27, 0, !insn.addr !9016
  br i1 %28, label %dec_label_pc_462385, label %dec_label_pc_462309, !insn.addr !9017

dec_label_pc_462309:                              ; preds = %dec_label_pc_4622e8
  %29 = call i32 @function_40132f(), !insn.addr !9018
  %30 = add i32 %0, -40, !insn.addr !9019
  %31 = inttoptr i32 %30 to i32*, !insn.addr !9019
  store i32 -1, i32* %31, align 4, !insn.addr !9019
  %32 = add i32 %0, -36, !insn.addr !9020
  %33 = inttoptr i32 %32 to i32*, !insn.addr !9020
  store i32 -1, i32* %33, align 4, !insn.addr !9020
  %34 = add i32 %0, -4, !insn.addr !9021
  %35 = inttoptr i32 %34 to i32*, !insn.addr !9021
  store i32 0, i32* %35, align 4, !insn.addr !9021
  %36 = load i32, i32* %15, align 4, !insn.addr !9022
  %37 = mul i32 %36, 4, !insn.addr !9023
  %38 = add i32 %37, ptrtoint (i32* @__pioinfo to i32), !insn.addr !9023
  %39 = inttoptr i32 %38 to i32*, !insn.addr !9023
  %40 = load i32, i32* %39, align 4, !insn.addr !9023
  %41 = load i32, i32* %18, align 4, !insn.addr !9024
  %42 = add i32 %40, 40, !insn.addr !9025
  %43 = add i32 %42, %41, !insn.addr !9025
  %44 = inttoptr i32 %43 to i8*, !insn.addr !9025
  %45 = load i8, i8* %44, align 1, !insn.addr !9025
  %46 = and i8 %45, 1, !insn.addr !9025
  %47 = icmp eq i8 %46, 0, !insn.addr !9025
  %48 = icmp eq i1 %47, false, !insn.addr !9026
  br i1 %48, label %dec_label_pc_462348, label %dec_label_pc_462333, !insn.addr !9026

dec_label_pc_462333:                              ; preds = %dec_label_pc_462309
  %49 = call i32* @_errno(), !insn.addr !9027
  store i32 9, i32* %49, align 4, !insn.addr !9028
  %50 = call i32* @__doserrno(), !insn.addr !9029
  store i32 0, i32* %50, align 4, !insn.addr !9030
  store i32 -1, i32* %esi.0.reg2mem, !insn.addr !9031
  br label %dec_label_pc_462364, !insn.addr !9031

dec_label_pc_462348:                              ; preds = %dec_label_pc_462309
  %51 = add i32 %0, 16, !insn.addr !9032
  %52 = inttoptr i32 %51 to i32*, !insn.addr !9032
  %53 = load i32, i32* %52, align 4, !insn.addr !9032
  %54 = add i32 %0, 12, !insn.addr !9033
  %55 = inttoptr i32 %54 to i32*, !insn.addr !9033
  %56 = load i32, i32* %55, align 4, !insn.addr !9033
  %57 = sext i32 %56 to i64, !insn.addr !9034
  %58 = call i64 @"common_lseek_nolock<__int64>"(i32 %4, i64 %57, i32 %53), !insn.addr !9034
  %59 = trunc i64 %58 to i32, !insn.addr !9034
  store i32 %59, i32* %31, align 4, !insn.addr !9035
  store i32 %narrow, i32* %33, align 4, !insn.addr !9036
  store i32 %59, i32* %esi.0.reg2mem, !insn.addr !9036
  br label %dec_label_pc_462364, !insn.addr !9036

dec_label_pc_462364:                              ; preds = %dec_label_pc_462348, %dec_label_pc_462333
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  store i32 -2, i32* %35, align 4, !insn.addr !9037
  %60 = call i32 @function_46237d(), !insn.addr !9038
  store i32 %esi.0.reload, i32* %esi.1.reg2mem, !insn.addr !9039
  br label %dec_label_pc_4623a2, !insn.addr !9039

dec_label_pc_462385:                              ; preds = %dec_label_pc_4622e8, %dec_label_pc_4622dc, %dec_label_pc_4622d4
  %61 = call i32* @__doserrno(), !insn.addr !9040
  store i32 0, i32* %61, align 4, !insn.addr !9041
  %62 = call i32* @_errno(), !insn.addr !9042
  store i32 9, i32* %62, align 4, !insn.addr !9043
  call void @_invalid_parameter_noinfo(), !insn.addr !9044
  store i32 -1, i32* %esi.1.reg2mem, !insn.addr !9044
  br label %dec_label_pc_4623a2, !insn.addr !9044

dec_label_pc_4623a2:                              ; preds = %dec_label_pc_4622bc, %dec_label_pc_462385, %dec_label_pc_462364
  %esi.1.reload = load i32, i32* %esi.1.reg2mem
  %63 = add i32 %0, -16, !insn.addr !9045
  %64 = inttoptr i32 %63 to i32*, !insn.addr !9045
  %65 = load i32, i32* %64, align 4, !insn.addr !9045
  call void @__writefsdword(i32 0, i32 %65), !insn.addr !9046
  %66 = sext i32 %esi.1.reload to i64, !insn.addr !9047
  ret i64 %66, !insn.addr !9047
}

define i32 @function_46237d() local_unnamed_addr {
dec_label_pc_46237d:
  %0 = call i32 @__decompiler_undefined_function_0()
  %1 = call i32 @function_4011db(i32 %0), !insn.addr !9048
  ret i32 %1, !insn.addr !9049
}

define i64 @"common_lseek_nolock<__int64>"(i32 %fh, i64 %offset, i32 %origin) local_unnamed_addr {
dec_label_pc_462463:
  %eax.0.reg2mem = alloca i64, !insn.addr !9050
  %0 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-12 = alloca i64, align 8
  %1 = sext i32 %0 to i64, !insn.addr !9051
  store i64 %1, i64* %stack_var_-12, align 8, !insn.addr !9051
  %2 = call i32 @_get_osfhandle(i32 %fh), !insn.addr !9052
  %3 = icmp eq i32 %2, -1, !insn.addr !9053
  %4 = icmp eq i1 %3, false, !insn.addr !9054
  br i1 %4, label %dec_label_pc_46248e, label %dec_label_pc_46247d, !insn.addr !9054

dec_label_pc_46247d:                              ; preds = %dec_label_pc_462463
  %5 = call i32* @_errno(), !insn.addr !9055
  store i32 9, i32* %5, align 4, !insn.addr !9056
  store i64 -1, i64* %eax.0.reg2mem, !insn.addr !9056
  br label %dec_label_pc_4624db, !insn.addr !9056

dec_label_pc_46248e:                              ; preds = %dec_label_pc_462463
  %6 = mul i64 %offset, 4294967296
  %7 = ptrtoint i64* %stack_var_-12 to i32, !insn.addr !9057
  %8 = inttoptr i32 %2 to i32*, !insn.addr !9058
  %9 = sdiv i64 %6, 4294967296, !insn.addr !9058
  %10 = insertvalue %_LARGE_INTEGER undef, i64 %9, 0, !insn.addr !9058
  %11 = inttoptr i32 %origin to %_LARGE_INTEGER*, !insn.addr !9058
  %12 = call i1 @SetFilePointerEx(i32* %8, %_LARGE_INTEGER %10, %_LARGE_INTEGER* %11, i32 %7), !insn.addr !9058
  %13 = icmp eq i1 %12, false, !insn.addr !9059
  %14 = icmp eq i1 %13, false, !insn.addr !9060
  br i1 %14, label %dec_label_pc_4624b5, label %dec_label_pc_4624a6, !insn.addr !9060

dec_label_pc_4624a6:                              ; preds = %dec_label_pc_46248e
  %15 = call i32 @GetLastError(), !insn.addr !9061
  %16 = call i32 @function_4034fe(), !insn.addr !9062
  store i64 -1, i64* %eax.0.reg2mem, !insn.addr !9063
  br label %dec_label_pc_4624db, !insn.addr !9063

dec_label_pc_4624b5:                              ; preds = %dec_label_pc_46248e
  %17 = load i64, i64* %stack_var_-12, align 8, !insn.addr !9064
  %18 = trunc i64 %17 to i32, !insn.addr !9064
  %19 = and i32 %0, %18, !insn.addr !9065
  %20 = icmp eq i32 %19, -1, !insn.addr !9066
  store i64 -1, i64* %eax.0.reg2mem, !insn.addr !9067
  br i1 %20, label %dec_label_pc_4624db, label %dec_label_pc_4624c1, !insn.addr !9067

dec_label_pc_4624c1:                              ; preds = %dec_label_pc_4624b5
  %21 = and i32 %fh, 63, !insn.addr !9068
  %22 = sdiv i32 %fh, 64, !insn.addr !9069
  %narrow = mul nuw nsw i32 %21, 56
  %23 = mul i32 %22, 4, !insn.addr !9070
  %24 = add i32 %23, ptrtoint (i32* @__pioinfo to i32), !insn.addr !9070
  %25 = inttoptr i32 %24 to i32*, !insn.addr !9070
  %26 = load i32, i32* %25, align 4, !insn.addr !9070
  %27 = add nuw nsw i32 %narrow, 40, !insn.addr !9071
  %28 = add i32 %27, %26, !insn.addr !9071
  %29 = inttoptr i32 %28 to i8*, !insn.addr !9071
  %30 = load i8, i8* %29, align 1, !insn.addr !9071
  %31 = and i8 %30, -3, !insn.addr !9071
  store i8 %31, i8* %29, align 1, !insn.addr !9071
  %phitmp = sext i32 %18 to i64
  store i64 %phitmp, i64* %eax.0.reg2mem, !insn.addr !9071
  br label %dec_label_pc_4624db, !insn.addr !9071

dec_label_pc_4624db:                              ; preds = %dec_label_pc_46247d, %dec_label_pc_4624a6, %dec_label_pc_4624b5, %dec_label_pc_4624c1
  %eax.0.reload = load i64, i64* %eax.0.reg2mem
  ret i64 %eax.0.reload, !insn.addr !9072
}

define i64 @_lseeki64(i32 %fh, i64 %offset, i32 %origin) local_unnamed_addr {
dec_label_pc_462606:
  %0 = mul i64 %offset, 4294967296
  %1 = sdiv i64 %0, 4294967296, !insn.addr !9073
  %2 = call i64 @"common_lseek<__int64>"(i32 %fh, i64 %1, i32 %origin), !insn.addr !9073
  %3 = mul i64 %2, 4294967296
  %4 = sdiv i64 %3, 4294967296, !insn.addr !9074
  ret i64 %4, !insn.addr !9074
}

define i64 @_lseeki64_nolock(i32 %fh, i64 %offset, i32 %origin) local_unnamed_addr {
dec_label_pc_462627:
  %0 = mul i64 %offset, 4294967296
  %1 = sdiv i64 %0, 4294967296, !insn.addr !9075
  %2 = call i64 @"common_lseek_nolock<__int64>"(i32 %fh, i64 %1, i32 %origin), !insn.addr !9075
  %3 = mul i64 %2, 4294967296
  %4 = sdiv i64 %3, 4294967296, !insn.addr !9076
  ret i64 %4, !insn.addr !9076
}

define i16 @_putwch_nolock(i16 %c) local_unnamed_addr {
dec_label_pc_462797:
  %0 = call i32 @__decompiler_undefined_function_0()
  %1 = call i32 @__decompiler_undefined_function_0()
  %stack_var_4 = alloca i16, align 2
  store i16 %c, i16* %stack_var_4, align 2
  %stack_var_-8 = alloca i32, align 4
  %2 = call i32 @function_40358a(i32 %1, i32 %0), !insn.addr !9077
  %3 = icmp eq i32 %2, 0, !insn.addr !9078
  br i1 %3, label %dec_label_pc_4627c2, label %dec_label_pc_4627a6, !insn.addr !9079

dec_label_pc_4627a6:                              ; preds = %dec_label_pc_462797
  %4 = bitcast i16* %stack_var_4 to i32*, !insn.addr !9080
  %5 = call i32 @function_4028c9(i32* nonnull %4, i32 1, i32* nonnull %stack_var_-8), !insn.addr !9080
  %6 = icmp eq i32 %5, 0, !insn.addr !9081
  br i1 %6, label %dec_label_pc_4627c2, label %dec_label_pc_4627bc, !insn.addr !9082

dec_label_pc_4627bc:                              ; preds = %dec_label_pc_4627a6
  %7 = load i16, i16* %stack_var_4, align 2, !insn.addr !9083
  ret i16 %7, !insn.addr !9084

dec_label_pc_4627c2:                              ; preds = %dec_label_pc_4627a6, %dec_label_pc_462797
  ret i16 -1, !insn.addr !9085
}

define i32 @"__crt_mbstring::__mbrtoc32_utf8"(i32 %pc32, i8* %s, i32 %n, %_Mbstatet* %ps) local_unnamed_addr {
dec_label_pc_463489:
  %edx.2.lcssa.reg2mem = alloca i32, !insn.addr !9086
  %stack_var_-28.010.reg2mem = alloca i32, !insn.addr !9086
  %edx.211.reg2mem = alloca i32, !insn.addr !9086
  %ebx.212.reg2mem = alloca i32, !insn.addr !9086
  %ebx.1.reg2mem = alloca i32, !insn.addr !9086
  %edx.1.reg2mem = alloca i32, !insn.addr !9086
  %ecx.0.reg2mem = alloca i32, !insn.addr !9086
  %eax.0.reg2mem = alloca i32, !insn.addr !9086
  %stack_var_-56 = alloca %_Mbstatet.714, align 8
  %stack_var_-4 = alloca i32, align 4
  %0 = icmp eq i8* %s, null, !insn.addr !9087
  %1 = icmp eq i1 %0, false, !insn.addr !9088
  %storemerge = select i1 %1, i32 %n, i32 1
  %2 = icmp eq i32 %storemerge, 0, !insn.addr !9089
  %3 = icmp eq i1 %2, false, !insn.addr !9090
  br i1 %3, label %dec_label_pc_4634dd, label %dec_label_pc_4634d5, !insn.addr !9090

dec_label_pc_4634d5:                              ; preds = %dec_label_pc_4635b5, %dec_label_pc_463489
  store %_Mbstatet.714 { i32 -2, i16 undef, i16 undef }, %_Mbstatet.714* %stack_var_-56, align 8, !insn.addr !9091
  br label %dec_label_pc_463621, !insn.addr !9092

dec_label_pc_4634dd:                              ; preds = %dec_label_pc_463489
  %4 = ptrtoint %_Mbstatet* %ps to i32
  %5 = ptrtoint i8* %s to i32
  %6 = icmp eq %_Mbstatet* %ps, null, !insn.addr !9093
  %7 = icmp eq i1 %6, false, !insn.addr !9094
  %spec.select = select i1 %7, i32 %4, i32 ptrtoint (%_Mbstatet.714* @internal_pst to i32)
  %ebx.0 = select i1 %1, i32 %5, i32 ptrtoint (i8** @global_var_4703f0 to i32)
  %8 = select i1 %0, i32 0, i32 %pc32, !insn.addr !9095
  %9 = add i32 %spec.select, 6, !insn.addr !9096
  %10 = inttoptr i32 %9 to i16*, !insn.addr !9096
  %11 = load i16, i16* %10, align 2, !insn.addr !9096
  %12 = icmp eq i16 %11, 0, !insn.addr !9096
  %13 = icmp eq i1 %12, false, !insn.addr !9097
  br i1 %13, label %dec_label_pc_463549, label %dec_label_pc_4634e5, !insn.addr !9097

dec_label_pc_4634e5:                              ; preds = %dec_label_pc_4634dd
  %14 = inttoptr i32 %ebx.0 to i8*, !insn.addr !9098
  %15 = load i8, i8* %14, align 1, !insn.addr !9098
  %16 = zext i8 %15 to i32, !insn.addr !9098
  %17 = icmp slt i8 %15, 0, !insn.addr !9099
  br i1 %17, label %dec_label_pc_463504, label %dec_label_pc_4634ef, !insn.addr !9100

dec_label_pc_4634ef:                              ; preds = %dec_label_pc_4634e5
  %18 = icmp eq i32 %8, 0, !insn.addr !9101
  br i1 %18, label %dec_label_pc_463621, label %dec_label_pc_4634f3, !insn.addr !9102

dec_label_pc_4634f3:                              ; preds = %dec_label_pc_4634ef
  %19 = inttoptr i32 %8 to i32*, !insn.addr !9103
  store i32 %16, i32* %19, align 4, !insn.addr !9103
  br label %dec_label_pc_463621, !insn.addr !9103

dec_label_pc_463504:                              ; preds = %dec_label_pc_4634e5
  %20 = and i32 %16, 224, !insn.addr !9104
  %21 = icmp eq i32 %20, 192, !insn.addr !9105
  %22 = icmp eq i1 %21, false, !insn.addr !9106
  store i32 2, i32* %eax.0.reg2mem, !insn.addr !9106
  br i1 %22, label %dec_label_pc_463510, label %dec_label_pc_46352a, !insn.addr !9106

dec_label_pc_463510:                              ; preds = %dec_label_pc_463504
  %23 = and i32 %16, 240, !insn.addr !9107
  %24 = icmp eq i32 %23, 224, !insn.addr !9108
  %25 = icmp eq i1 %24, false, !insn.addr !9109
  store i32 3, i32* %eax.0.reg2mem, !insn.addr !9109
  br i1 %25, label %dec_label_pc_46351c, label %dec_label_pc_46352a, !insn.addr !9109

dec_label_pc_46351c:                              ; preds = %dec_label_pc_463510
  %26 = and i32 %16, 248, !insn.addr !9110
  %27 = icmp eq i32 %26, 240, !insn.addr !9111
  %28 = icmp eq i1 %27, false, !insn.addr !9112
  store i32 4, i32* %eax.0.reg2mem, !insn.addr !9112
  br i1 %28, label %dec_label_pc_46361a, label %dec_label_pc_46352a, !insn.addr !9112

dec_label_pc_46352a:                              ; preds = %dec_label_pc_46351c, %dec_label_pc_463510, %dec_label_pc_463504
  %29 = add i32 %ebx.0, 1, !insn.addr !9113
  %eax.0.reload = load i32, i32* %eax.0.reg2mem
  store %_Mbstatet.714 { i32 7, i16 undef, i16 undef }, %_Mbstatet.714* %stack_var_-56, align 8, !insn.addr !9114
  %30 = getelementptr inbounds %_Mbstatet.714, %_Mbstatet.714* %stack_var_-56, i32 0, i32 0, !insn.addr !9115
  %31 = load i32, i32* %30, align 8, !insn.addr !9115
  %32 = sub i32 %31, %eax.0.reload, !insn.addr !9116
  %33 = mul i32 %eax.0.reload, 256, !insn.addr !9117
  %34 = and i32 %32, 31, !insn.addr !9118
  %35 = icmp eq i32 %34, 0, !insn.addr !9118
  %notmask = shl nsw i32 -1, %34
  %phitmp = xor i32 %notmask, 255
  %edx.0 = select i1 %35, i32 0, i32 %phitmp
  %36 = or i32 %33, %eax.0.reload, !insn.addr !9117
  %37 = and i32 %edx.0, %16, !insn.addr !9119
  store i32 %36, i32* %ecx.0.reg2mem, !insn.addr !9120
  store i32 %37, i32* %edx.1.reg2mem, !insn.addr !9120
  store i32 %29, i32* %ebx.1.reg2mem, !insn.addr !9120
  br label %dec_label_pc_46356e, !insn.addr !9120

dec_label_pc_463549:                              ; preds = %dec_label_pc_4634dd
  %38 = add i32 %spec.select, 4, !insn.addr !9121
  %39 = inttoptr i32 %38 to i8*, !insn.addr !9121
  %40 = load i8, i8* %39, align 1, !insn.addr !9121
  %41 = zext i8 %40 to i32, !insn.addr !9121
  %42 = inttoptr i32 %spec.select to i32*, !insn.addr !9122
  %43 = load i32, i32* %42, align 4, !insn.addr !9122
  %44 = inttoptr i32 %9 to i8*, !insn.addr !9123
  %45 = load i8, i8* %44, align 1, !insn.addr !9123
  %46 = zext i8 %45 to i32, !insn.addr !9123
  %47 = mul i32 %46, 256, !insn.addr !9123
  %48 = or i32 %47, %41, !insn.addr !9123
  %.off = add i8 %40, -2
  %switch = icmp ugt i8 %.off, 2
  %49 = icmp eq i8 %45, 0, !insn.addr !9124
  %or.cond = or i1 %switch, %49
  %50 = icmp ugt i8 %40, %45, !insn.addr !9125
  %51 = icmp eq i1 %50, false, !insn.addr !9126
  %or.cond7 = or i1 %or.cond, %51
  store i32 %48, i32* %ecx.0.reg2mem
  store i32 %43, i32* %edx.1.reg2mem
  store i32 %ebx.0, i32* %ebx.1.reg2mem
  br i1 %or.cond7, label %dec_label_pc_46361a, label %dec_label_pc_46356e

dec_label_pc_46356e:                              ; preds = %dec_label_pc_463549, %dec_label_pc_46352a
  %ebx.1.reload = load i32, i32* %ebx.1.reg2mem
  %edx.1.reload = load i32, i32* %edx.1.reg2mem
  %ecx.0.reload = load i32, i32* %ecx.0.reg2mem
  %52 = udiv i32 %ecx.0.reload, 256, !insn.addr !9127
  %53 = and i32 %52, 255, !insn.addr !9127
  %54 = icmp ult i32 %53, %storemerge, !insn.addr !9128
  %55 = icmp eq i1 %54, false, !insn.addr !9129
  %spec.select8 = select i1 %55, i32 %storemerge, i32 %53
  %56 = sub i32 %ebx.1.reload, %5, !insn.addr !9130
  %57 = icmp ult i32 %56, %spec.select8, !insn.addr !9131
  store i32 %ebx.1.reload, i32* %ebx.212.reg2mem, !insn.addr !9132
  store i32 %edx.1.reload, i32* %edx.211.reg2mem, !insn.addr !9132
  store i32 %56, i32* %stack_var_-28.010.reg2mem, !insn.addr !9132
  store i32 %edx.1.reload, i32* %edx.2.lcssa.reg2mem, !insn.addr !9132
  br i1 %57, label %dec_label_pc_46358d, label %dec_label_pc_4635ae, !insn.addr !9132

dec_label_pc_46358d:                              ; preds = %dec_label_pc_46356e, %dec_label_pc_46359b
  %ebx.212.reload = load i32, i32* %ebx.212.reg2mem
  %58 = inttoptr i32 %ebx.212.reload to i8*, !insn.addr !9133
  %59 = load i8, i8* %58, align 1, !insn.addr !9133
  %60 = and i8 %59, -64, !insn.addr !9134
  %61 = icmp eq i8 %60, -128, !insn.addr !9135
  %62 = icmp eq i1 %61, false, !insn.addr !9136
  br i1 %62, label %dec_label_pc_46361a, label %dec_label_pc_46359b, !insn.addr !9136

dec_label_pc_46359b:                              ; preds = %dec_label_pc_46358d
  %stack_var_-28.010.reload = load i32, i32* %stack_var_-28.010.reg2mem
  %edx.211.reload = load i32, i32* %edx.211.reg2mem
  %63 = add nuw i32 %stack_var_-28.010.reload, 1, !insn.addr !9137
  %64 = add i32 %ebx.212.reload, 1, !insn.addr !9138
  %65 = and i8 %59, 63
  %66 = zext i8 %65 to i32, !insn.addr !9139
  %67 = mul i32 %edx.211.reload, 64, !insn.addr !9140
  %68 = or i32 %67, %66, !insn.addr !9141
  %69 = icmp ult i32 %63, %spec.select8, !insn.addr !9131
  store i32 %64, i32* %ebx.212.reg2mem, !insn.addr !9132
  store i32 %68, i32* %edx.211.reg2mem, !insn.addr !9132
  store i32 %63, i32* %stack_var_-28.010.reg2mem, !insn.addr !9132
  store i32 %68, i32* %edx.2.lcssa.reg2mem, !insn.addr !9132
  br i1 %69, label %dec_label_pc_46358d, label %dec_label_pc_4635ae, !insn.addr !9132

dec_label_pc_4635ae:                              ; preds = %dec_label_pc_46359b, %dec_label_pc_46356e
  %edx.2.lcssa.reload = load i32, i32* %edx.2.lcssa.reg2mem
  %70 = icmp ult i32 %spec.select8, %53, !insn.addr !9142
  %71 = icmp eq i1 %70, false, !insn.addr !9143
  br i1 %71, label %dec_label_pc_4635cd, label %dec_label_pc_4635b5, !insn.addr !9143

dec_label_pc_4635b5:                              ; preds = %dec_label_pc_4635ae
  %72 = mul i32 %spec.select8, 256
  %73 = sub i32 %ecx.0.reload, %72
  %74 = trunc i32 %ecx.0.reload to i16
  %75 = and i16 %74, 255, !insn.addr !9144
  %76 = add i32 %spec.select, 4, !insn.addr !9144
  %77 = inttoptr i32 %76 to i16*, !insn.addr !9144
  store i16 %75, i16* %77, align 2, !insn.addr !9144
  %78 = udiv i32 %73, 256, !insn.addr !9145
  %79 = inttoptr i32 %spec.select to i32*, !insn.addr !9146
  store i32 %edx.2.lcssa.reload, i32* %79, align 4, !insn.addr !9146
  %80 = trunc i32 %78 to i16
  %81 = and i16 %80, 255, !insn.addr !9147
  store i16 %81, i16* %10, align 2, !insn.addr !9147
  br label %dec_label_pc_4634d5, !insn.addr !9148

dec_label_pc_4635cd:                              ; preds = %dec_label_pc_4635ae
  %82 = and i32 %edx.2.lcssa.reload, -2048
  %83 = icmp ne i32 %82, 55296
  %84 = icmp ult i32 %edx.2.lcssa.reload, 1114112
  %or.cond5 = icmp eq i1 %84, %83
  br i1 %or.cond5, label %dec_label_pc_4635e5, label %dec_label_pc_46361a, !insn.addr !9149

dec_label_pc_4635e5:                              ; preds = %dec_label_pc_4635cd
  %85 = ptrtoint i32* %stack_var_-4 to i32, !insn.addr !9150
  %86 = mul i32 %ecx.0.reload, 4, !insn.addr !9151
  %87 = and i32 %86, 1020, !insn.addr !9152
  %88 = add i32 %85, -24, !insn.addr !9152
  %89 = add i32 %88, %87, !insn.addr !9152
  %90 = inttoptr i32 %89 to i32*, !insn.addr !9152
  %91 = load i32, i32* %90, align 4, !insn.addr !9152
  %92 = icmp ult i32 %edx.2.lcssa.reload, %91, !insn.addr !9152
  br i1 %92, label %dec_label_pc_46361a, label %dec_label_pc_463603, !insn.addr !9153

dec_label_pc_463603:                              ; preds = %dec_label_pc_4635e5
  %93 = icmp eq i32 %8, 0, !insn.addr !9154
  br i1 %93, label %dec_label_pc_463609, label %dec_label_pc_463607, !insn.addr !9155

dec_label_pc_463607:                              ; preds = %dec_label_pc_463603
  %94 = inttoptr i32 %8 to i32*, !insn.addr !9156
  store i32 %edx.2.lcssa.reload, i32* %94, align 4, !insn.addr !9156
  br label %dec_label_pc_463609, !insn.addr !9156

dec_label_pc_463609:                              ; preds = %dec_label_pc_463607, %dec_label_pc_463603
  %95 = inttoptr i32 %spec.select to i32*, !insn.addr !9157
  store i32 0, i32* %95, align 4, !insn.addr !9157
  %96 = add i32 %spec.select, 4, !insn.addr !9158
  %97 = inttoptr i32 %96 to i32*, !insn.addr !9158
  store i32 0, i32* %97, align 4, !insn.addr !9158
  br label %dec_label_pc_463621, !insn.addr !9159

dec_label_pc_46361a:                              ; preds = %dec_label_pc_46358d, %dec_label_pc_463549, %dec_label_pc_4635cd, %dec_label_pc_4635e5, %dec_label_pc_46351c
  %98 = insertvalue %_Mbstatet.714 undef, i32 %spec.select, 0, !insn.addr !9160
  store %_Mbstatet.714 %98, %_Mbstatet.714* %stack_var_-56, align 8, !insn.addr !9160
  %99 = getelementptr inbounds %_Mbstatet.714, %_Mbstatet.714* %stack_var_-56, i32 0, i32 0, !insn.addr !9161
  %100 = load i32, i32* %99, align 8, !insn.addr !9161
  %101 = call i32 @function_401d52(i32 %100), !insn.addr !9161
  br label %dec_label_pc_463621, !insn.addr !9162

dec_label_pc_463621:                              ; preds = %dec_label_pc_4634ef, %dec_label_pc_4634f3, %dec_label_pc_46361a, %dec_label_pc_463609, %dec_label_pc_4634d5
  call void @__security_check_cookie(i32 ptrtoint (i32* @80 to i32)), !insn.addr !9163
  ret i32 ptrtoint (i32* @80 to i32), !insn.addr !9164
}

define i32 @fegetenv(%fenv_t* %result) local_unnamed_addr {
dec_label_pc_4636a6:
  %0 = ptrtoint %fenv_t* %result to i32
  %1 = call i32 @function_403fc6(), !insn.addr !9165
  %2 = getelementptr inbounds %fenv_t, %fenv_t* %result, i32 0, i32 0, !insn.addr !9166
  store i32 %1, i32* %2, align 4, !insn.addr !9166
  %3 = call i32 @function_40332d(), !insn.addr !9167
  %4 = add i32 %0, 4, !insn.addr !9168
  %5 = inttoptr i32 %4 to i32*, !insn.addr !9168
  store i32 %3, i32* %5, align 4, !insn.addr !9168
  ret i32 0, !insn.addr !9169
}

define i32 @fesetenv(%fenv_t* %requested_env) local_unnamed_addr {
dec_label_pc_4636ca:
  %storemerge.reg2mem = alloca i32, !insn.addr !9170
  %0 = call i32 @__decompiler_undefined_function_0()
  %1 = call i32 @__decompiler_undefined_function_0()
  %2 = call i32 @__decompiler_undefined_function_0()
  %3 = ptrtoint %fenv_t* %requested_env to i32
  %stack_var_-12 = alloca i32, align 4
  %check_env_-8 = alloca %fenv_t, align 8
  %4 = insertvalue %fenv_t undef, i32 %2, 0, !insn.addr !9171
  store %fenv_t %4, %fenv_t* %check_env_-8, align 8, !insn.addr !9171
  %5 = getelementptr inbounds %fenv_t, %fenv_t* %requested_env, i32 0, i32 0, !insn.addr !9172
  %6 = load i32, i32* %5, align 4, !insn.addr !9172
  %.elt = getelementptr inbounds %fenv_t, %fenv_t* %check_env_-8, i32 0, i32 0
  %.unpack = load i32, i32* %.elt, align 8
  %7 = insertvalue %fenv_t undef, i32 %.unpack, 0
  %.elt2 = getelementptr inbounds %fenv_t, %fenv_t* %check_env_-8, i32 0, i32 1
  %.unpack3 = load i32, i32* %.elt2, align 4
  %8 = insertvalue %fenv_t %7, i32 %.unpack3, 1
  %9 = call i32 @function_403521(i32 %6, i32 %0, i32 %2, %fenv_t %8, i32 %1), !insn.addr !9173
  %10 = add i32 %3, 4, !insn.addr !9174
  %11 = inttoptr i32 %10 to i32*, !insn.addr !9174
  %12 = load i32, i32* %11, align 4, !insn.addr !9174
  %13 = call i32 @function_401fc8(i32 %12), !insn.addr !9175
  store i32 0, i32* %stack_var_-12, align 4, !insn.addr !9176
  store %fenv_t { i32 0, i32 undef }, %fenv_t* %check_env_-8, align 8, !insn.addr !9177
  %14 = bitcast i32* %stack_var_-12 to %fenv_t*
  %15 = call i32 @fegetenv(%fenv_t* nonnull %14), !insn.addr !9178
  %16 = icmp eq i32 %15, 0, !insn.addr !9179
  %17 = icmp eq i1 %16, false, !insn.addr !9180
  br i1 %17, label %dec_label_pc_46370f, label %dec_label_pc_4636fc, !insn.addr !9180

dec_label_pc_4636fc:                              ; preds = %dec_label_pc_4636ca
  %18 = load i32, i32* %5, align 4, !insn.addr !9181
  %19 = load i32, i32* %stack_var_-12, align 4, !insn.addr !9182
  %20 = icmp eq i32 %18, %19, !insn.addr !9182
  %21 = icmp eq i1 %20, false, !insn.addr !9183
  br i1 %21, label %dec_label_pc_46370f, label %dec_label_pc_463703, !insn.addr !9183

dec_label_pc_463703:                              ; preds = %dec_label_pc_4636fc
  %22 = load i32, i32* %11, align 4, !insn.addr !9184
  %23 = load i32, i32* %.elt, align 8, !insn.addr !9185
  %24 = icmp eq i32 %22, %23, !insn.addr !9185
  %25 = icmp eq i1 %24, false, !insn.addr !9186
  store i32 0, i32* %storemerge.reg2mem, !insn.addr !9186
  br i1 %25, label %dec_label_pc_46370f, label %dec_label_pc_463712, !insn.addr !9186

dec_label_pc_46370f:                              ; preds = %dec_label_pc_463703, %dec_label_pc_4636fc, %dec_label_pc_4636ca
  store i32 1, i32* %storemerge.reg2mem, !insn.addr !9187
  br label %dec_label_pc_463712, !insn.addr !9187

dec_label_pc_463712:                              ; preds = %dec_label_pc_463703, %dec_label_pc_46370f
  %storemerge.reload = load i32, i32* %storemerge.reg2mem
  ret i32 %storemerge.reload, !insn.addr !9188
}

define i32 @feholdexcept(%fenv_t* %penv) local_unnamed_addr {
dec_label_pc_463727:
  %stack_var_-12 = alloca i32, align 4
  %env_-8 = alloca %fenv_t.658, align 8
  store i32 0, i32* %stack_var_-12, align 4, !insn.addr !9189
  store %fenv_t.658 { i32 0, i32 undef }, %fenv_t.658* %env_-8, align 8, !insn.addr !9190
  %0 = bitcast i32* %stack_var_-12 to %fenv_t*
  %1 = call i32 @fegetenv(%fenv_t* nonnull %0), !insn.addr !9191
  %2 = icmp eq i32 %1, 0, !insn.addr !9192
  %3 = icmp eq i1 %2, false, !insn.addr !9193
  br i1 %3, label %dec_label_pc_46376f, label %dec_label_pc_463744, !insn.addr !9193

dec_label_pc_463744:                              ; preds = %dec_label_pc_463727
  %4 = ptrtoint %fenv_t* %penv to i32, !insn.addr !9194
  %5 = load i32, i32* %stack_var_-12, align 4, !insn.addr !9195
  %6 = getelementptr inbounds %fenv_t.658, %fenv_t.658* %env_-8, i32 0, i32 0, !insn.addr !9196
  %7 = load i32, i32* %6, align 8, !insn.addr !9196
  %8 = add i32 %4, 4, !insn.addr !9197
  %9 = inttoptr i32 %8 to i32*, !insn.addr !9197
  store i32 %7, i32* %9, align 4, !insn.addr !9197
  %10 = getelementptr inbounds %fenv_t, %fenv_t* %penv, i32 0, i32 0
  store i32 %5, i32* %10, align 4, !insn.addr !9198
  %11 = or i32 %5, 31, !insn.addr !9199
  store i32 %11, i32* %stack_var_-12, align 4, !insn.addr !9200
  %12 = call i32 @fesetenv(%fenv_t* nonnull %0), !insn.addr !9201
  %13 = icmp eq i32 %12, 0, !insn.addr !9202
  %14 = icmp eq i1 %13, false, !insn.addr !9203
  br i1 %14, label %dec_label_pc_46376f, label %dec_label_pc_463766, !insn.addr !9203

dec_label_pc_463766:                              ; preds = %dec_label_pc_463744
  %15 = call i32 @_clearfp(), !insn.addr !9204
  ret i32 0, !insn.addr !9205

dec_label_pc_46376f:                              ; preds = %dec_label_pc_463744, %dec_label_pc_463727
  ret i32 1, !insn.addr !9206
}

declare void @_CIlog10() local_unnamed_addr

declare double @ceil(double) local_unnamed_addr

define i32 @__strncnt(i8* %string, i32 %count) local_unnamed_addr {
dec_label_pc_4640fd:
  %eax.1.reg2mem = alloca i32, !insn.addr !9207
  %eax.0.reg2mem = alloca i32, !insn.addr !9207
  %0 = ptrtoint i8* %string to i32
  %1 = load i8, i8* %string, align 1, !insn.addr !9208
  %2 = icmp eq i8 %1, 0, !insn.addr !9208
  store i32 0, i32* %eax.0.reg2mem, !insn.addr !9209
  store i32 0, i32* %eax.1.reg2mem, !insn.addr !9209
  br i1 %2, label %dec_label_pc_464117, label %dec_label_pc_46410b, !insn.addr !9209

dec_label_pc_46410b:                              ; preds = %dec_label_pc_4640fd, %dec_label_pc_464110
  %eax.0.reload = load i32, i32* %eax.0.reg2mem
  %3 = icmp eq i32 %eax.0.reload, %count, !insn.addr !9210
  store i32 %count, i32* %eax.1.reg2mem, !insn.addr !9211
  br i1 %3, label %dec_label_pc_464117, label %dec_label_pc_464110, !insn.addr !9211

dec_label_pc_464110:                              ; preds = %dec_label_pc_46410b
  %4 = add i32 %eax.0.reload, 1, !insn.addr !9212
  %5 = add i32 %4, %0, !insn.addr !9213
  %6 = inttoptr i32 %5 to i8*, !insn.addr !9213
  %7 = load i8, i8* %6, align 1, !insn.addr !9213
  %8 = icmp eq i8 %7, 0, !insn.addr !9213
  %9 = icmp eq i1 %8, false, !insn.addr !9214
  store i32 %4, i32* %eax.0.reg2mem, !insn.addr !9214
  store i32 %4, i32* %eax.1.reg2mem, !insn.addr !9214
  br i1 %9, label %dec_label_pc_46410b, label %dec_label_pc_464117, !insn.addr !9214

dec_label_pc_464117:                              ; preds = %dec_label_pc_464110, %dec_label_pc_46410b, %dec_label_pc_4640fd
  %eax.1.reload = load i32, i32* %eax.1.reg2mem
  ret i32 %eax.1.reload, !insn.addr !9215
}

declare void @__dcrt_lowio_initialize_console_output() local_unnamed_addr

define i32 @__dcrt_lowio_ensure_console_output_initialized() local_unnamed_addr {
dec_label_pc_464586:
  %ecx.0.in.reg2mem = alloca i8*, !insn.addr !9216
  %0 = load i8*, i8** @__dcrt_lowio_console_output_handle, align 4, !insn.addr !9216
  %1 = icmp eq i8* %0, inttoptr (i32 -2 to i8*), !insn.addr !9217
  %2 = icmp eq i1 %1, false, !insn.addr !9218
  store i8* %0, i8** %ecx.0.in.reg2mem, !insn.addr !9218
  br i1 %2, label %dec_label_pc_46459c, label %dec_label_pc_464591, !insn.addr !9218

dec_label_pc_464591:                              ; preds = %dec_label_pc_464586
  call void @__dcrt_lowio_initialize_console_output(), !insn.addr !9219
  %3 = load i8*, i8** @__dcrt_lowio_console_output_handle, align 4, !insn.addr !9220
  store i8* %3, i8** %ecx.0.in.reg2mem, !insn.addr !9220
  br label %dec_label_pc_46459c, !insn.addr !9220

dec_label_pc_46459c:                              ; preds = %dec_label_pc_464591, %dec_label_pc_464586
  %ecx.0.in.reload = load i8*, i8** %ecx.0.in.reg2mem
  %4 = icmp eq i8* %ecx.0.in.reload, inttoptr (i32 -1 to i8*), !insn.addr !9221
  %5 = icmp eq i1 %4, false, !insn.addr !9222
  %6 = zext i1 %5 to i32, !insn.addr !9222
  ret i32 %6, !insn.addr !9223
}

declare void @__dcrt_terminate_console_output() local_unnamed_addr

define i32 @__dcrt_write_console(i8* %lpBuffer, i32 %nNumberOfCharsToWrite, i32* %lpNumberOfCharsWritten) local_unnamed_addr {
dec_label_pc_4645c8:
  %esi.0.reg2mem = alloca i32, !insn.addr !9224
  %0 = load i8*, i8** @__dcrt_lowio_console_output_handle, align 4
  %1 = bitcast i8* %0 to i32*
  %2 = bitcast i8* %lpBuffer to i32*
  %3 = call i1 @WriteConsoleW(i32* %1, i32* %2, i32 %nNumberOfCharsToWrite, i32* %lpNumberOfCharsWritten, i32* null), !insn.addr !9225
  %4 = sext i1 %3 to i32, !insn.addr !9225
  %5 = icmp eq i1 %3, false, !insn.addr !9226
  %6 = icmp eq i1 %5, false, !insn.addr !9227
  store i32 %4, i32* %esi.0.reg2mem, !insn.addr !9227
  br i1 %6, label %dec_label_pc_464618, label %dec_label_pc_4645eb, !insn.addr !9227

dec_label_pc_4645eb:                              ; preds = %dec_label_pc_4645c8
  %7 = call i32 @GetLastError(), !insn.addr !9228
  %8 = icmp eq i32 %7, 6, !insn.addr !9229
  %9 = icmp eq i1 %8, false, !insn.addr !9230
  store i32 %4, i32* %esi.0.reg2mem, !insn.addr !9230
  br i1 %9, label %dec_label_pc_464618, label %dec_label_pc_4645f6, !insn.addr !9230

dec_label_pc_4645f6:                              ; preds = %dec_label_pc_4645eb
  %10 = call i32 @function_4042ff(), !insn.addr !9231
  call void @__dcrt_lowio_initialize_console_output(), !insn.addr !9232
  %11 = load i8*, i8** @__dcrt_lowio_console_output_handle, align 4
  %12 = bitcast i8* %11 to i32*
  %13 = inttoptr i32 %4 to i32*, !insn.addr !9233
  %14 = call i1 @WriteConsoleW(i32* %12, i32* %2, i32 %nNumberOfCharsToWrite, i32* %lpNumberOfCharsWritten, i32* %13), !insn.addr !9233
  %15 = sext i1 %14 to i32, !insn.addr !9233
  store i32 %15, i32* %esi.0.reg2mem, !insn.addr !9234
  br label %dec_label_pc_464618, !insn.addr !9234

dec_label_pc_464618:                              ; preds = %dec_label_pc_4645f6, %dec_label_pc_4645eb, %dec_label_pc_4645c8
  %esi.0.reload = load i32, i32* %esi.0.reg2mem
  ret i32 %esi.0.reload, !insn.addr !9235
}

declare i8* @"type_info::`scalar deleting destructor'"(i32*) local_unnamed_addr

declare void @_aulldvrm() local_unnamed_addr

declare void @_allmul() local_unnamed_addr

define void @_allshl() local_unnamed_addr {
dec_label_pc_4675b0:
  ret void
}

define void @_aullshr() local_unnamed_addr {
dec_label_pc_4675e0:
  ret void
}

declare void @_alldvrm() local_unnamed_addr

define void @_alloca_probe_16() local_unnamed_addr {
dec_label_pc_467730:
  call void @_chkstk(), !insn.addr !9236
  ret void, !insn.addr !9236
}

declare void @_chkstk() local_unnamed_addr

define void @_ftol2_sse_excpt() local_unnamed_addr {
dec_label_pc_4677b0:
  ret void
}

define void @strrchr_1(i8* %string, i8 %chr) local_unnamed_addr {
dec_label_pc_46a270:
  %eax.2.reg2mem = alloca i32, !insn.addr !9237
  %xmm0.0.reg2mem = alloca i128, !insn.addr !9237
  %edi.3.reg2mem = alloca i32, !insn.addr !9237
  %edi.2.reg2mem = alloca i32, !insn.addr !9237
  %edi.1.reg2mem = alloca i32, !insn.addr !9237
  %edi.0.reg2mem = alloca i32, !insn.addr !9237
  %eax.0.reg2mem = alloca i32, !insn.addr !9237
  %xmm2.0.reg2mem = alloca i128, !insn.addr !9237
  %0 = call i128 @__decompiler_undefined_function_5()
  %1 = load i32, i32* @__isa_available, align 4, !insn.addr !9238
  %2 = icmp eq i32 %1, 0, !insn.addr !9238
  br i1 %2, label %dec_label_pc_46a2dd, label %dec_label_pc_46a281, !insn.addr !9239

dec_label_pc_46a281:                              ; preds = %dec_label_pc_46a270
  %3 = ptrtoint i8* %string to i32
  %4 = icmp eq i32 %1, 1
  %5 = zext i8 %chr to i32
  br i1 %4, label %dec_label_pc_46a286, label %dec_label_pc_46a2fd, !insn.addr !9240

dec_label_pc_46a286:                              ; preds = %dec_label_pc_46a281
  %6 = mul i32 %5, 256, !insn.addr !9241
  %7 = or i32 %6, %5, !insn.addr !9242
  %8 = call i128 @__asm_movd(i32 %7), !insn.addr !9243
  %9 = call i128 @__asm_pshuflw(i128 %8, i32 0), !insn.addr !9244
  %10 = call i128 @__asm_movlhps(i128 %9, i128 %9), !insn.addr !9245
  %11 = and i32 %3, 15, !insn.addr !9246
  %12 = shl i32 -1, %11
  %13 = sub i32 %3, %11, !insn.addr !9247
  store i32 %12, i32* %eax.0.reg2mem, !insn.addr !9248
  store i32 %13, i32* %edi.0.reg2mem, !insn.addr !9248
  br label %dec_label_pc_46a2ad, !insn.addr !9248

dec_label_pc_46a2ad:                              ; preds = %dec_label_pc_46a2ad, %dec_label_pc_46a286
  %edi.0.reload = load i32, i32* %edi.0.reg2mem
  %eax.0.reload = load i32, i32* %eax.0.reg2mem
  %xmm2.0.reload = load i128, i128* %xmm2.0.reg2mem
  %14 = inttoptr i32 %edi.0.reload to i128*, !insn.addr !9249
  %15 = load i128, i128* %14, align 4, !insn.addr !9249
  %16 = call i128 @__asm_movdqu.5(i128 %15), !insn.addr !9249
  %17 = call i128 @__asm_pxor(i128 %xmm2.0.reload, i128 %xmm2.0.reload), !insn.addr !9250
  %18 = call i128 @__asm_pcmpeqb(i128 %17, i128 %16), !insn.addr !9251
  %19 = call i128 @__asm_pcmpeqb(i128 %16, i128 %10), !insn.addr !9252
  %20 = call i32 @__asm_pmovmskb(i128 %18), !insn.addr !9253
  %21 = and i32 %20, %eax.0.reload, !insn.addr !9254
  %22 = icmp eq i32 %21, 0, !insn.addr !9254
  %23 = icmp eq i1 %22, false, !insn.addr !9255
  %24 = call i32 @__asm_pmovmskb(i128 %19)
  %25 = add i32 %edi.0.reload, 16, !insn.addr !9256
  store i128 %18, i128* %xmm2.0.reg2mem, !insn.addr !9255
  store i32 -1, i32* %eax.0.reg2mem, !insn.addr !9255
  store i32 %25, i32* %edi.0.reg2mem, !insn.addr !9255
  br i1 %23, label %dec_label_pc_46a2dd, label %dec_label_pc_46a2ad, !insn.addr !9255

dec_label_pc_46a2dd:                              ; preds = %dec_label_pc_46a30f, %dec_label_pc_46a328, %dec_label_pc_46a363, %dec_label_pc_46a2ad, %dec_label_pc_46a270, %dec_label_pc_46a33e
  ret void, !insn.addr !9257

dec_label_pc_46a2fd:                              ; preds = %dec_label_pc_46a281
  %26 = icmp eq i8 %chr, 0, !insn.addr !9258
  br i1 %26, label %dec_label_pc_46a33e, label %dec_label_pc_46a305, !insn.addr !9259

dec_label_pc_46a305:                              ; preds = %dec_label_pc_46a2fd
  %27 = and i32 %3, 15, !insn.addr !9260
  %28 = icmp eq i32 %27, 0, !insn.addr !9260
  store i32 %3, i32* %edi.1.reg2mem, !insn.addr !9261
  store i32 %3, i32* %edi.2.reg2mem, !insn.addr !9261
  br i1 %28, label %dec_label_pc_46a324, label %dec_label_pc_46a30f, !insn.addr !9261

dec_label_pc_46a30f:                              ; preds = %dec_label_pc_46a305, %dec_label_pc_46a31b
  %edi.1.reload = load i32, i32* %edi.1.reg2mem
  %29 = inttoptr i32 %edi.1.reload to i8*, !insn.addr !9262
  %30 = load i8, i8* %29, align 1, !insn.addr !9262
  %31 = icmp eq i8 %30, 0, !insn.addr !9263
  br i1 %31, label %dec_label_pc_46a2dd, label %dec_label_pc_46a31b, !insn.addr !9264

dec_label_pc_46a31b:                              ; preds = %dec_label_pc_46a30f
  %32 = add i32 %edi.1.reload, 1, !insn.addr !9265
  %33 = and i32 %32, 15, !insn.addr !9266
  %34 = icmp eq i32 %33, 0, !insn.addr !9266
  %35 = icmp eq i1 %34, false, !insn.addr !9267
  store i32 %32, i32* %edi.1.reg2mem, !insn.addr !9267
  store i32 %32, i32* %edi.2.reg2mem, !insn.addr !9267
  br i1 %35, label %dec_label_pc_46a30f, label %dec_label_pc_46a324, !insn.addr !9267

dec_label_pc_46a324:                              ; preds = %dec_label_pc_46a31b, %dec_label_pc_46a305
  %edi.2.reload = load i32, i32* %edi.2.reg2mem
  %36 = call i128 @__asm_movd(i32 %5), !insn.addr !9268
  store i32 %edi.2.reload, i32* %edi.3.reg2mem, !insn.addr !9268
  br label %dec_label_pc_46a328, !insn.addr !9268

dec_label_pc_46a328:                              ; preds = %dec_label_pc_46a328, %dec_label_pc_46a324
  %edi.3.reload = load i32, i32* %edi.3.reg2mem
  %37 = add i32 %edi.3.reload, 16, !insn.addr !9269
  %38 = icmp eq i32 %37, 0, !insn.addr !9269
  %39 = inttoptr i32 %edi.3.reload to i128*, !insn.addr !9270
  %40 = load i128, i128* %39, align 4, !insn.addr !9270
  call void @__asm_pcmpistri(i128 %36, i128 %40, i32 64), !insn.addr !9270
  %41 = icmp eq i1 %38, false, !insn.addr !9271
  store i32 %37, i32* %edi.3.reg2mem, !insn.addr !9271
  br i1 %41, label %dec_label_pc_46a328, label %dec_label_pc_46a2dd, !insn.addr !9271

dec_label_pc_46a33e:                              ; preds = %dec_label_pc_46a2fd
  %42 = and i32 %3, -16, !insn.addr !9272
  %43 = call i128 @__asm_pxor(i128 %0, i128 %0), !insn.addr !9273
  %44 = inttoptr i32 %42 to i128*, !insn.addr !9274
  %45 = load i128, i128* %44, align 16, !insn.addr !9274
  %46 = call i128 @__asm_pcmpeqb(i128 %43, i128 %45), !insn.addr !9274
  %47 = and i32 %3, 15, !insn.addr !9275
  %48 = shl i32 -1, %47
  %49 = call i32 @__asm_pmovmskb(i128 %46), !insn.addr !9276
  %50 = and i32 %49, %48, !insn.addr !9277
  %51 = icmp eq i32 %50, 0, !insn.addr !9277
  %52 = icmp eq i1 %51, false, !insn.addr !9278
  store i128 %46, i128* %xmm0.0.reg2mem, !insn.addr !9278
  store i32 %42, i32* %eax.2.reg2mem, !insn.addr !9278
  br i1 %52, label %dec_label_pc_46a2dd, label %dec_label_pc_46a363, !insn.addr !9278

dec_label_pc_46a363:                              ; preds = %dec_label_pc_46a33e, %dec_label_pc_46a363
  %eax.2.reload = load i32, i32* %eax.2.reg2mem
  %xmm0.0.reload = load i128, i128* %xmm0.0.reg2mem
  %53 = call i128 @__asm_pxor(i128 %xmm0.0.reload, i128 %xmm0.0.reload), !insn.addr !9279
  %54 = add i32 %eax.2.reload, 16, !insn.addr !9280
  %55 = inttoptr i32 %54 to i128*, !insn.addr !9280
  %56 = load i128, i128* %55, align 16, !insn.addr !9280
  %57 = call i128 @__asm_pcmpeqb(i128 %53, i128 %56), !insn.addr !9280
  %58 = call i32 @__asm_pmovmskb(i128 %57), !insn.addr !9281
  %59 = icmp eq i32 %58, 0, !insn.addr !9282
  store i128 %57, i128* %xmm0.0.reg2mem, !insn.addr !9283
  store i32 %54, i32* %eax.2.reg2mem, !insn.addr !9283
  br i1 %59, label %dec_label_pc_46a363, label %dec_label_pc_46a2dd, !insn.addr !9283
}