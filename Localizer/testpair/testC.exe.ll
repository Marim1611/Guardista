source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_EXCEPTION_POINTERS = type { %_EXCEPTION_RECORD*, %_CONTEXT* }
%_EXCEPTION_RECORD = type { i32, i32, %_EXCEPTION_RECORD*, i64*, i32, [1 x i32] }
%_CONTEXT = type { i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i16, i16, i16, i16, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [26 x %_M128A], i64, i64, i64, i64, i64, i64 }
%_M128A = type { i64, i64 }

@__mingw_initltsdrot_force = global i32 0
@global_var_1400043e0 = local_unnamed_addr constant i32* @__mingw_initltsdrot_force
@__mingw_initltsdyn_force = global i32 0
@global_var_1400043f0 = local_unnamed_addr constant i32* @__mingw_initltsdyn_force
@__mingw_initltssuo_force = global i32 0
@global_var_140004400 = local_unnamed_addr constant i32* @__mingw_initltssuo_force
@__mingw_app_type = global i32 0
@global_var_1400043d0 = local_unnamed_addr constant i32* @__mingw_app_type
@managedapp = local_unnamed_addr global i32 0
@_fmode.34 = global i32 0
@global_var_1400044a0 = local_unnamed_addr constant i32* @_fmode.34
@_commode.35 = global i32 0
@global_var_140004480 = local_unnamed_addr constant i32* @_commode.35
@_MINGW_INSTALL_DEBUG_MATHERR = global i32 -1
@global_var_140004340 = local_unnamed_addr constant i32* @_MINGW_INSTALL_DEBUG_MATHERR
@global_var_1400044c0 = local_unnamed_addr constant i64 5368714832
@_newmode = global i32 0
@global_var_1400044d0 = local_unnamed_addr constant i32* @_newmode
@envp = local_unnamed_addr global i8** null
@argv = local_unnamed_addr global i8** null
@argc = local_unnamed_addr global i32 0
@startinfo = local_unnamed_addr global i64 0
@_dowildcard = local_unnamed_addr global i32 -1
@global_var_140007040 = global i64 0
@global_var_140004420 = local_unnamed_addr constant i64* @global_var_140007040
@global_var_140007048 = global i64 0
@global_var_140004430 = local_unnamed_addr constant i64* @global_var_140007048
@has_cctor = local_unnamed_addr global i32 0
@__dyn_tls_init_callback = constant void (i8*, i32, i8*)* inttoptr (i64 5368714672 to void (i8*, i32, i8*)*)
@global_var_140004380 = local_unnamed_addr constant void (i8*, i32, i8*)** @__dyn_tls_init_callback
@__mingw_oldexcpt_handler = global i64 0
@global_var_140004410 = local_unnamed_addr constant i64* @__mingw_oldexcpt_handler
@global_var_1400043a0 = local_unnamed_addr constant i64 5368742340
@mainret = local_unnamed_addr global i32 0
@__xc_z = global [1 x void ()*] zeroinitializer
@global_var_140004450 = local_unnamed_addr constant [1 x void ()*]* @__xc_z
@__xc_a = global [1 x void ()*] zeroinitializer
@global_var_140004440 = local_unnamed_addr constant [1 x void ()*]* @__xc_a
@__xi_z = global [1 x void ()*] zeroinitializer
@global_var_140004470 = local_unnamed_addr constant [1 x void ()*]* @__xi_z
@__xi_a = global [1 x void ()*] zeroinitializer
@global_var_140004460 = local_unnamed_addr constant [1 x void ()*]* @__xi_a
@global_var_140003000 = local_unnamed_addr global i64 5368719056
@global_var_140004350 = local_unnamed_addr constant i64 5368719024
@initialized = local_unnamed_addr global i32 0
@_CRT_MT = global i32 2
@global_var_140004330 = local_unnamed_addr constant i32* @_CRT_MT
@__xd_z = local_unnamed_addr global void ()* null
@global_var_14000407f = local_unnamed_addr constant [28 x i8] c"Argument singularity (SIGN)\00"
@global_var_140004146 = local_unnamed_addr constant [14 x i8] c"Unknown error\00"
@global_var_140004158 = local_unnamed_addr constant [43 x i8] c"_matherr(): %s in %s(%g, %g)  (retval=%g)\0A\00"
@global_var_140004060 = local_unnamed_addr constant [31 x i8] c"Argument domain error (DOMAIN)\00"
@global_var_1400040c0 = local_unnamed_addr constant [37 x i8] c"Partial loss of significance (PLOSS)\00"
@global_var_1400040a0 = local_unnamed_addr constant [32 x i8] c"Overflow range error (OVERFLOW)\00"
@global_var_140004110 = local_unnamed_addr constant [54 x i8] c"The result is too small to be represented (UNDERFLOW)\00"
@global_var_1400040e8 = local_unnamed_addr constant [35 x i8] c"Total loss of significance (TLOSS)\00"
@global_var_1400041a0 = local_unnamed_addr constant [28 x i8] c"Mingw-w64 runtime failure:\0A\00"
@maxSections = local_unnamed_addr global i32 0
@the_secs = local_unnamed_addr global i64 0
@global_var_140004218 = local_unnamed_addr constant [39 x i8] c"  VirtualProtect failed with code 0x%x\00"
@global_var_1400041e0 = local_unnamed_addr constant [49 x i8] c"  VirtualQuery failed for %d bytes at address %p\00"
@global_var_1400041c0 = local_unnamed_addr constant [32 x i8] c"Address %p has no image-section\00"
@global_var_140004360 = local_unnamed_addr constant [3 x i8] c"PJ\00"
@global_var_140004370 = local_unnamed_addr constant [3 x i8] c"PJ\00"
@global_var_14000437c = local_unnamed_addr constant i64 4611756387171565568
@global_var_140004378 = local_unnamed_addr constant i64 0
@global_var_1400042a8 = local_unnamed_addr constant [83 x i8] c"%d bit pseudo relocation at %p out of range, targeting %p, yielding the value %p.\0A\00"
@global_var_140004278 = local_unnamed_addr constant [42 x i8] c"  Unknown pseudo relocation bit size %d.\0A\00"
@global_var_140004240 = local_unnamed_addr constant [50 x i8] c"  Unknown pseudo relocation protocol version %d.\0A\00"
@stUserMathErr = local_unnamed_addr global i64 0
@__mingwthr_cs = local_unnamed_addr global i64 0
@key_dtor_list = local_unnamed_addr global i64 0
@__mingwthr_cs_init = local_unnamed_addr global i32 0
@global_var_1400043c0 = local_unnamed_addr constant i64 5368742396
@global_var_1400043b0 = local_unnamed_addr constant i64 5368742388
@handler = local_unnamed_addr global void (i16*, i16*, i16*, i32, i64)* null
@global_var_140004390 = local_unnamed_addr constant i16* inttoptr (i64 5368709120 to i16*)
@global_var_140004490 = local_unnamed_addr constant i32 1073754144
@global_var_1400044b0 = local_unnamed_addr constant i32 (%_EXCEPTION_POINTERS*)* inttoptr (i64 5368716528 to i32 (%_EXCEPTION_POINTERS*)*)
@global_var_1400026b0 = constant i32 -1
@global_var_140004184 = local_unnamed_addr constant i32 -10824
@global_var_140007090 = local_unnamed_addr global i32 0
@global_var_140004374 = local_unnamed_addr constant i32 1
@global_var_140004300 = local_unnamed_addr constant i32 -9520

define i32 @atexit(void ()* %func) local_unnamed_addr {
dec_label_pc_140001410:
  %0 = bitcast void ()* %func to i32 ()*, !insn.addr !0
  %1 = call i32 ()* @_onexit(i32 ()* %0), !insn.addr !0
  %2 = icmp eq i32 ()* %1, null, !insn.addr !1
  %3 = sext i1 %2 to i32, !insn.addr !2
  ret i32 %3, !insn.addr !3
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_140001450:
  call void @__main(), !insn.addr !4
  ret i64 0, !insn.addr !5
}

define void @__do_global_ctors() local_unnamed_addr {
dec_label_pc_1400014e0:
  %rax.0.reg2mem = alloca i64, !insn.addr !6
  %rbx.0.reg2mem = alloca i64, !insn.addr !6
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !7
  br label %dec_label_pc_140001538, !insn.addr !7

dec_label_pc_1400014fb:                           ; preds = %dec_label_pc_140001548
  %0 = add nuw nsw i64 %rax.0.reload, 4294967295, !insn.addr !8
  %1 = and i64 %0, 4294967295, !insn.addr !8
  %2 = mul i64 %rax.0.reload, 8, !insn.addr !9
  %3 = add i64 %2, ptrtoint (i32* @global_var_1400026b0 to i64), !insn.addr !9
  %4 = sub nsw i64 %rax.0.reload, %1, !insn.addr !10
  %5 = mul i64 %4, 8, !insn.addr !11
  %6 = add i64 %5, add (i64 ptrtoint (i32* @global_var_1400026b0 to i64), i64 -8), !insn.addr !11
  store i64 %3, i64* %rbx.0.reg2mem, !insn.addr !12
  br label %dec_label_pc_140001510, !insn.addr !12

dec_label_pc_140001510:                           ; preds = %dec_label_pc_140001510, %dec_label_pc_1400014fb
  %rbx.0.reload = load i64, i64* %rbx.0.reg2mem
  %7 = add i64 %rbx.0.reload, -8, !insn.addr !13
  %8 = icmp eq i64 %7, %6, !insn.addr !14
  %9 = icmp eq i1 %8, false, !insn.addr !15
  store i64 %7, i64* %rbx.0.reg2mem, !insn.addr !15
  br i1 %9, label %dec_label_pc_140001510, label %dec_label_pc_14000151b, !insn.addr !15

dec_label_pc_14000151b:                           ; preds = %dec_label_pc_140001510, %dec_label_pc_140001548
  %10 = call i32 @atexit(void ()* inttoptr (i64 5368714400 to void ()*)), !insn.addr !16
  ret void, !insn.addr !16

dec_label_pc_140001538:                           ; preds = %dec_label_pc_140001538, %dec_label_pc_1400014e0
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  %11 = add nuw nsw i64 %rax.0.reload, 1, !insn.addr !17
  %12 = and i64 %11, 4294967295, !insn.addr !17
  %13 = mul i64 %12, 8, !insn.addr !18
  %14 = add i64 %13, ptrtoint (i32* @global_var_1400026b0 to i64), !insn.addr !18
  %15 = inttoptr i64 %14 to i64*, !insn.addr !18
  %16 = load i64, i64* %15, align 8, !insn.addr !18
  %17 = icmp eq i64 %16, 0, !insn.addr !18
  %18 = icmp eq i1 %17, false, !insn.addr !19
  store i64 %12, i64* %rax.0.reg2mem, !insn.addr !19
  br i1 %18, label %dec_label_pc_140001538, label %dec_label_pc_140001548, !insn.addr !19

dec_label_pc_140001548:                           ; preds = %dec_label_pc_140001538
  %19 = icmp eq i64 %rax.0.reload, 0, !insn.addr !20
  br i1 %19, label %dec_label_pc_14000151b, label %dec_label_pc_1400014fb, !insn.addr !21
}

define void @__main() local_unnamed_addr {
dec_label_pc_140001550:
  %0 = load i32, i32* @initialized, align 4, !insn.addr !22
  %1 = icmp eq i32 %0, 0, !insn.addr !23
  br i1 %1, label %dec_label_pc_140001560, label %dec_label_pc_14000155a, !insn.addr !24

dec_label_pc_14000155a:                           ; preds = %dec_label_pc_140001550
  ret void, !insn.addr !25

dec_label_pc_140001560:                           ; preds = %dec_label_pc_140001550
  store i32 1, i32* @initialized, align 4, !insn.addr !26
  call void @__do_global_ctors(), !insn.addr !27
  ret void, !insn.addr !27
}

declare i32 ()* @_onexit(i32 ()*) local_unnamed_addr

!0 = !{i64 5368714260}
!1 = !{i64 5368714265}
!2 = !{i64 5368714269}
!3 = !{i64 5368714275}
!4 = !{i64 5368714328}
!5 = !{i64 5368714394}
!6 = !{i64 5368714464}
!7 = !{i64 5368714546}
!8 = !{i64 5368714493}
!9 = !{i64 5368714496}
!10 = !{i64 5368714500}
!11 = !{i64 5368714503}
!12 = !{i64 5368714508}
!13 = !{i64 5368714514}
!14 = !{i64 5368714518}
!15 = !{i64 5368714521}
!16 = !{i64 5368714536}
!17 = !{i64 5368714552}
!18 = !{i64 5368714558}
!19 = !{i64 5368714566}
!20 = !{i64 5368714487}
!21 = !{i64 5368714489}
!22 = !{i64 5368714576}
!23 = !{i64 5368714582}
!24 = !{i64 5368714584}
!25 = !{i64 5368714586}
!26 = !{i64 5368714592}
!27 = !{i64 5368714602}
