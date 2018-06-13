; ModuleID = './fft.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__STDIO_FILE_STRUCT.376 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.376*, [2 x i32], %struct.__mbstate_t.375 }
%struct.__mbstate_t.375 = type { i32, i32 }
%struct.Elf64_auxv_t = type { i64, %union.anon.120 }
%union.anon.120 = type { i64 }
%struct.stat.119 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.termios.616 = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__kernel_termios = type { i32, i32, i32, i32, i8, [19 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"__arr32__x\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"x_err\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@PI = common global i32 0, align 4
@M_TAU = common global i32 0, align 4
@__libc_stack_end = global i8* null, align 8
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__uclibc_progname = hidden global i8* getelementptr inbounds ([1 x i8]* @.str4, i32 0, i32 0), align 8
@program_invocation_short_name = global i8* getelementptr inbounds ([1 x i8]* @.str4, i32 0, i32 0), align 8
@program_invocation_name = global i8* getelementptr inbounds ([1 x i8]* @.str4, i32 0, i32 0), align 8
@__environ = global i8** null, align 8
@__pagesize = global i64 0, align 8
@__uClibc_init.been_there_done_that = internal global i32 0, align 4
@__app_fini = hidden global void ()* null, align 8
@__rtld_fini = hidden global void ()* null, align 8
@.str15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@_stdio_streams = internal global [3 x %struct.__STDIO_FILE_STRUCT.376] [%struct.__STDIO_FILE_STRUCT.376 { i16 544, [2 x i8] zeroinitializer, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.376* bitcast (i8*
@stdin = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@stdout = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@stderr = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 160) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@__stdin = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@__stdout = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@_stdio_openlist = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@errno = global i32 0, align 4
@h_errno = global i32 0, align 4
@.str34 = private unnamed_addr constant [80 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str135 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str236 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str337 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [71 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

@__progname = alias weak i8** @program_invocation_short_name
@__progname_full = alias weak i8** @program_invocation_name
@environ = alias weak i8*** @__environ

; Function Attrs: nounwind uwtable
define i32 @__user_main() #0 {
  %1 = alloca i32, align 4
  %N = alloca i32, align 4
  %twoN = alloca i32, align 4
  %x = alloca [8 x i32], align 16
  store i32 0, i32* %1
  store i32 4, i32* %N, align 4, !dbg !368
  %2 = load i32* %N, align 4, !dbg !369
  %3 = mul nsw i32 2, %2, !dbg !369
  store i32 %3, i32* %twoN, align 4, !dbg !369
  %4 = getelementptr inbounds [8 x i32]* %x, i32 0, i32 0, !dbg !370
  %5 = bitcast i32* %4 to i8*, !dbg !370
  call void @klee_make_symbolic(i8* %5, i64 32, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)), !dbg !370
  %6 = getelementptr inbounds [8 x i32]* %x, i32 0, i32 0, !dbg !371
  %7 = bitcast i32* %6 to i8*, !dbg !371
  call void @klee_track_error(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)), !dbg !371
  %8 = load i32* %twoN, align 4, !dbg !372
  %9 = getelementptr inbounds [8 x i32]* %x, i32 0, i32 0, !dbg !372
  call void @FFT_transform(i32 %8, i32* %9), !dbg !372
  %10 = load i32* %twoN, align 4, !dbg !373
  %11 = getelementptr inbounds [8 x i32]* %x, i32 0, i32 0, !dbg !373
  call void @FFT_inverse(i32 %10, i32* %11), !dbg !373
  ret i32 0, !dbg !374
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_track_error(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @FFT_transform(i32 %N, i32* %data) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 %N, i32* %1, align 4
  store i32* %data, i32** %2, align 8
  %3 = load i32* %1, align 4, !dbg !375
  %4 = load i32** %2, align 8, !dbg !375
  call void @FFT_transform_internal(i32 %3, i32* %4, i32 -1), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: nounwind uwtable
define void @FFT_inverse(i32 %N, i32* %data) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %n = alloca i32, align 4
  %norm = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %N, i32* %1, align 4
  store i32* %data, i32** %2, align 8
  %3 = load i32* %1, align 4, !dbg !377
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !377
  %4 = sdiv i32 %3, 2, !dbg !377
  store i32 %4, i32* %n, align 4, !dbg !377
  store i32 0, i32* %norm, align 4, !dbg !378
  store i32 0, i32* %i, align 4, !dbg !379
  %5 = load i32* %1, align 4, !dbg !380
  %6 = load i32** %2, align 8, !dbg !380
  call void @FFT_transform_internal(i32 %5, i32* %6, i32 1), !dbg !380
  %7 = load i32* %n, align 4, !dbg !381
  %int_cast_to_i641 = zext i32 %7 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !381
  %8 = sdiv i32 1, %7, !dbg !381
  store i32 %8, i32* %norm, align 4, !dbg !381
  store i32 0, i32* %i, align 4, !dbg !382
  br label %9, !dbg !382

; <label>:9                                       ; preds = %13, %0
  %10 = load i32* %i, align 4, !dbg !382
  %11 = load i32* %1, align 4, !dbg !382
  %12 = icmp slt i32 %10, %11, !dbg !382
  br i1 %12, label %13, label %23, !dbg !382

; <label>:13                                      ; preds = %9
  %14 = load i32* %norm, align 4, !dbg !384
  %15 = load i32* %i, align 4, !dbg !384
  %16 = sext i32 %15 to i64, !dbg !384
  %17 = load i32** %2, align 8, !dbg !384
  %18 = getelementptr inbounds i32* %17, i64 %16, !dbg !384
  %19 = load i32* %18, align 4, !dbg !384
  %20 = mul nsw i32 %19, %14, !dbg !384
  store i32 %20, i32* %18, align 4, !dbg !384
  %21 = load i32* %i, align 4, !dbg !382
  %22 = add nsw i32 %21, 1, !dbg !382
  store i32 %22, i32* %i, align 4, !dbg !382
  br label %9, !dbg !382

; <label>:23                                      ; preds = %9
  %24 = load i32* %1, align 4, !dbg !385
  %25 = sext i32 %24 to i64, !dbg !385
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), double 1.000000e+00), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: nounwind uwtable
define void @FFT_transform_internal(i32 %N, i32* %data, i32 %direction) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %n = alloca i32, align 4
  %bit = alloca i32, align 4
  %logn = alloca i32, align 4
  %dual = alloca i32, align 4
  %w_real = alloca i32, align 4
  %w_imag = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %theta = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %s2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %wd_real = alloca i32, align 4
  %wd_imag = alloca i32, align 4
  %tmp_real = alloca i32, align 4
  %tmp_imag = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %z1_real = alloca i32, align 4
  %z1_imag = alloca i32, align 4
  %wd_real3 = alloca i32, align 4
  %wd_imag4 = alloca i32, align 4
  store i32 %N, i32* %1, align 4
  store i32* %data, i32** %2, align 8
  store i32 %direction, i32* %3, align 4
  %4 = load i32* %1, align 4, !dbg !387
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !387
  %5 = sdiv i32 %4, 2, !dbg !387
  store i32 %5, i32* %n, align 4, !dbg !387
  store i32 0, i32* %bit, align 4, !dbg !388
  store i32 1, i32* %dual, align 4, !dbg !389
  %6 = load i32* %n, align 4, !dbg !390
  %7 = icmp eq i32 %6, 1, !dbg !390
  br i1 %7, label %220, label %8, !dbg !390

; <label>:8                                       ; preds = %0
  %9 = load i32* %n, align 4, !dbg !392
  %10 = call i32 @int_log2(i32 %9), !dbg !392
  store i32 %10, i32* %logn, align 4, !dbg !392
  %11 = load i32* %1, align 4, !dbg !393
  %12 = icmp eq i32 %11, 0, !dbg !393
  br i1 %12, label %220, label %13, !dbg !393

; <label>:13                                      ; preds = %8
  %14 = load i32* %1, align 4, !dbg !395
  %15 = load i32** %2, align 8, !dbg !395
  call void @FFT_bitreverse(i32 %14, i32* %15), !dbg !395
  store i32 0, i32* %bit, align 4, !dbg !396
  br label %16, !dbg !396

; <label>:16                                      ; preds = %215, %13
  %17 = load i32* %bit, align 4, !dbg !396
  %18 = load i32* %logn, align 4, !dbg !396
  %19 = icmp slt i32 %17, %18, !dbg !396
  br i1 %19, label %20, label %220, !dbg !396

; <label>:20                                      ; preds = %16
  store i32 1, i32* %w_real, align 4, !dbg !398
  store i32 0, i32* %w_imag, align 4, !dbg !400
  %21 = load i32* %3, align 4, !dbg !401
  %22 = mul nsw i32 2, %21, !dbg !401
  %23 = mul nsw i32 %22, 3, !dbg !401
  %24 = load i32* %dual, align 4, !dbg !401
  %25 = mul nsw i32 2, %24, !dbg !401
  %int_cast_to_i641 = zext i32 %25 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !401
  %26 = sdiv i32 %23, %25, !dbg !401
  store i32 %26, i32* %theta, align 4, !dbg !401
  %27 = load i32* %3, align 4, !dbg !402
  %28 = sext i32 %27 to i64, !dbg !402
  call void @klee_bound_error(i64 %28, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), double 1.000000e+00), !dbg !402
  %29 = load i32* %theta, align 4, !dbg !403
  %30 = call i32 @sin_func(i32 %29), !dbg !403
  store i32 %30, i32* %s, align 4, !dbg !403
  %31 = load i32* %theta, align 4, !dbg !404
  %int_cast_to_i642 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !404
  %32 = sdiv i32 %31, 2, !dbg !404
  %33 = call i32 @sin_func(i32 %32), !dbg !404
  store i32 %33, i32* %t, align 4, !dbg !404
  %34 = load i32* %t, align 4, !dbg !405
  %35 = mul nsw i32 2, %34, !dbg !405
  %36 = load i32* %t, align 4, !dbg !405
  %37 = mul nsw i32 %35, %36, !dbg !405
  store i32 %37, i32* %s2, align 4, !dbg !405
  store i32 0, i32* %a, align 4, !dbg !406
  store i32 0, i32* %b, align 4, !dbg !406
  br label %38, !dbg !406

; <label>:38                                      ; preds = %42, %20
  %39 = load i32* %b, align 4, !dbg !406
  %40 = load i32* %n, align 4, !dbg !406
  %41 = icmp slt i32 %39, %40, !dbg !406
  br i1 %41, label %42, label %103, !dbg !406

; <label>:42                                      ; preds = %38
  %43 = load i32* %b, align 4, !dbg !408
  %44 = mul nsw i32 2, %43, !dbg !408
  store i32 %44, i32* %i, align 4, !dbg !408
  %45 = load i32* %b, align 4, !dbg !410
  %46 = load i32* %dual, align 4, !dbg !410
  %47 = add nsw i32 %45, %46, !dbg !410
  %48 = mul nsw i32 2, %47, !dbg !410
  store i32 %48, i32* %j, align 4, !dbg !410
  %49 = load i32* %j, align 4, !dbg !411
  %50 = sext i32 %49 to i64, !dbg !411
  %51 = load i32** %2, align 8, !dbg !411
  %52 = getelementptr inbounds i32* %51, i64 %50, !dbg !411
  %53 = load i32* %52, align 4, !dbg !411
  store i32 %53, i32* %wd_real, align 4, !dbg !411
  %54 = load i32* %j, align 4, !dbg !412
  %55 = add nsw i32 %54, 1, !dbg !412
  %56 = sext i32 %55 to i64, !dbg !412
  %57 = load i32** %2, align 8, !dbg !412
  %58 = getelementptr inbounds i32* %57, i64 %56, !dbg !412
  %59 = load i32* %58, align 4, !dbg !412
  store i32 %59, i32* %wd_imag, align 4, !dbg !412
  %60 = load i32* %i, align 4, !dbg !413
  %61 = sext i32 %60 to i64, !dbg !413
  %62 = load i32** %2, align 8, !dbg !413
  %63 = getelementptr inbounds i32* %62, i64 %61, !dbg !413
  %64 = load i32* %63, align 4, !dbg !413
  %65 = load i32* %wd_real, align 4, !dbg !413
  %66 = sub nsw i32 %64, %65, !dbg !413
  %67 = load i32* %j, align 4, !dbg !413
  %68 = sext i32 %67 to i64, !dbg !413
  %69 = load i32** %2, align 8, !dbg !413
  %70 = getelementptr inbounds i32* %69, i64 %68, !dbg !413
  store i32 %66, i32* %70, align 4, !dbg !413
  %71 = load i32* %i, align 4, !dbg !414
  %72 = add nsw i32 %71, 1, !dbg !414
  %73 = sext i32 %72 to i64, !dbg !414
  %74 = load i32** %2, align 8, !dbg !414
  %75 = getelementptr inbounds i32* %74, i64 %73, !dbg !414
  %76 = load i32* %75, align 4, !dbg !414
  %77 = load i32* %wd_imag, align 4, !dbg !414
  %78 = sub nsw i32 %76, %77, !dbg !414
  %79 = load i32* %j, align 4, !dbg !414
  %80 = add nsw i32 %79, 1, !dbg !414
  %81 = sext i32 %80 to i64, !dbg !414
  %82 = load i32** %2, align 8, !dbg !414
  %83 = getelementptr inbounds i32* %82, i64 %81, !dbg !414
  store i32 %78, i32* %83, align 4, !dbg !414
  %84 = load i32* %wd_real, align 4, !dbg !415
  %85 = load i32* %i, align 4, !dbg !415
  %86 = sext i32 %85 to i64, !dbg !415
  %87 = load i32** %2, align 8, !dbg !415
  %88 = getelementptr inbounds i32* %87, i64 %86, !dbg !415
  %89 = load i32* %88, align 4, !dbg !415
  %90 = add nsw i32 %89, %84, !dbg !415
  store i32 %90, i32* %88, align 4, !dbg !415
  %91 = load i32* %wd_imag, align 4, !dbg !416
  %92 = load i32* %i, align 4, !dbg !416
  %93 = add nsw i32 %92, 1, !dbg !416
  %94 = sext i32 %93 to i64, !dbg !416
  %95 = load i32** %2, align 8, !dbg !416
  %96 = getelementptr inbounds i32* %95, i64 %94, !dbg !416
  %97 = load i32* %96, align 4, !dbg !416
  %98 = add nsw i32 %97, %91, !dbg !416
  store i32 %98, i32* %96, align 4, !dbg !416
  %99 = load i32* %dual, align 4, !dbg !406
  %100 = mul nsw i32 2, %99, !dbg !406
  %101 = load i32* %b, align 4, !dbg !406
  %102 = add nsw i32 %101, %100, !dbg !406
  store i32 %102, i32* %b, align 4, !dbg !406
  br label %38, !dbg !406

; <label>:103                                     ; preds = %38
  store i32 1, i32* %a, align 4, !dbg !417
  br label %104, !dbg !417

; <label>:104                                     ; preds = %212, %103
  %105 = load i32* %a, align 4, !dbg !417
  %106 = load i32* %dual, align 4, !dbg !417
  %107 = icmp slt i32 %105, %106, !dbg !417
  br i1 %107, label %108, label %215, !dbg !417

; <label>:108                                     ; preds = %104
  %109 = load i32* %w_real, align 4, !dbg !419
  %110 = load i32* %s, align 4, !dbg !419
  %111 = load i32* %w_imag, align 4, !dbg !419
  %112 = mul nsw i32 %110, %111, !dbg !419
  %113 = sub nsw i32 %109, %112, !dbg !419
  %114 = load i32* %s2, align 4, !dbg !419
  %115 = load i32* %w_real, align 4, !dbg !419
  %116 = mul nsw i32 %114, %115, !dbg !419
  %117 = sub nsw i32 %113, %116, !dbg !419
  store i32 %117, i32* %tmp_real, align 4, !dbg !419
  %118 = load i32* %w_imag, align 4, !dbg !422
  %119 = load i32* %s, align 4, !dbg !422
  %120 = load i32* %w_real, align 4, !dbg !422
  %121 = mul nsw i32 %119, %120, !dbg !422
  %122 = add nsw i32 %118, %121, !dbg !422
  %123 = load i32* %s2, align 4, !dbg !422
  %124 = load i32* %w_imag, align 4, !dbg !422
  %125 = mul nsw i32 %123, %124, !dbg !422
  %126 = sub nsw i32 %122, %125, !dbg !422
  store i32 %126, i32* %tmp_imag, align 4, !dbg !422
  %127 = load i32* %tmp_real, align 4, !dbg !423
  store i32 %127, i32* %w_real, align 4, !dbg !423
  %128 = load i32* %tmp_imag, align 4, !dbg !424
  store i32 %128, i32* %w_imag, align 4, !dbg !424
  store i32 0, i32* %b, align 4, !dbg !425
  br label %129, !dbg !425

; <label>:129                                     ; preds = %133, %108
  %130 = load i32* %b, align 4, !dbg !425
  %131 = load i32* %n, align 4, !dbg !425
  %132 = icmp slt i32 %130, %131, !dbg !425
  br i1 %132, label %133, label %212, !dbg !425

; <label>:133                                     ; preds = %129
  %134 = load i32* %b, align 4, !dbg !427
  %135 = load i32* %a, align 4, !dbg !427
  %136 = add nsw i32 %134, %135, !dbg !427
  %137 = mul nsw i32 2, %136, !dbg !427
  store i32 %137, i32* %i1, align 4, !dbg !427
  %138 = load i32* %b, align 4, !dbg !429
  %139 = load i32* %a, align 4, !dbg !429
  %140 = add nsw i32 %138, %139, !dbg !429
  %141 = load i32* %dual, align 4, !dbg !429
  %142 = add nsw i32 %140, %141, !dbg !429
  %143 = mul nsw i32 2, %142, !dbg !429
  store i32 %143, i32* %j2, align 4, !dbg !429
  %144 = load i32* %j2, align 4, !dbg !430
  %145 = sext i32 %144 to i64, !dbg !430
  %146 = load i32** %2, align 8, !dbg !430
  %147 = getelementptr inbounds i32* %146, i64 %145, !dbg !430
  %148 = load i32* %147, align 4, !dbg !430
  store i32 %148, i32* %z1_real, align 4, !dbg !430
  %149 = load i32* %j2, align 4, !dbg !431
  %150 = add nsw i32 %149, 1, !dbg !431
  %151 = sext i32 %150 to i64, !dbg !431
  %152 = load i32** %2, align 8, !dbg !431
  %153 = getelementptr inbounds i32* %152, i64 %151, !dbg !431
  %154 = load i32* %153, align 4, !dbg !431
  store i32 %154, i32* %z1_imag, align 4, !dbg !431
  %155 = load i32* %w_real, align 4, !dbg !432
  %156 = load i32* %z1_real, align 4, !dbg !432
  %157 = mul nsw i32 %155, %156, !dbg !432
  %158 = load i32* %w_imag, align 4, !dbg !432
  %159 = load i32* %z1_imag, align 4, !dbg !432
  %160 = mul nsw i32 %158, %159, !dbg !432
  %161 = sub nsw i32 %157, %160, !dbg !432
  store i32 %161, i32* %wd_real3, align 4, !dbg !432
  %162 = load i32* %w_real, align 4, !dbg !433
  %163 = load i32* %z1_imag, align 4, !dbg !433
  %164 = mul nsw i32 %162, %163, !dbg !433
  %165 = load i32* %w_imag, align 4, !dbg !433
  %166 = load i32* %z1_real, align 4, !dbg !433
  %167 = mul nsw i32 %165, %166, !dbg !433
  %168 = add nsw i32 %164, %167, !dbg !433
  store i32 %168, i32* %wd_imag4, align 4, !dbg !433
  %169 = load i32* %i1, align 4, !dbg !434
  %170 = sext i32 %169 to i64, !dbg !434
  %171 = load i32** %2, align 8, !dbg !434
  %172 = getelementptr inbounds i32* %171, i64 %170, !dbg !434
  %173 = load i32* %172, align 4, !dbg !434
  %174 = load i32* %wd_real3, align 4, !dbg !434
  %175 = sub nsw i32 %173, %174, !dbg !434
  %176 = load i32* %j2, align 4, !dbg !434
  %177 = sext i32 %176 to i64, !dbg !434
  %178 = load i32** %2, align 8, !dbg !434
  %179 = getelementptr inbounds i32* %178, i64 %177, !dbg !434
  store i32 %175, i32* %179, align 4, !dbg !434
  %180 = load i32* %i1, align 4, !dbg !435
  %181 = add nsw i32 %180, 1, !dbg !435
  %182 = sext i32 %181 to i64, !dbg !435
  %183 = load i32** %2, align 8, !dbg !435
  %184 = getelementptr inbounds i32* %183, i64 %182, !dbg !435
  %185 = load i32* %184, align 4, !dbg !435
  %186 = load i32* %wd_imag4, align 4, !dbg !435
  %187 = sub nsw i32 %185, %186, !dbg !435
  %188 = load i32* %j2, align 4, !dbg !435
  %189 = add nsw i32 %188, 1, !dbg !435
  %190 = sext i32 %189 to i64, !dbg !435
  %191 = load i32** %2, align 8, !dbg !435
  %192 = getelementptr inbounds i32* %191, i64 %190, !dbg !435
  store i32 %187, i32* %192, align 4, !dbg !435
  %193 = load i32* %wd_real3, align 4, !dbg !436
  %194 = load i32* %i1, align 4, !dbg !436
  %195 = sext i32 %194 to i64, !dbg !436
  %196 = load i32** %2, align 8, !dbg !436
  %197 = getelementptr inbounds i32* %196, i64 %195, !dbg !436
  %198 = load i32* %197, align 4, !dbg !436
  %199 = add nsw i32 %198, %193, !dbg !436
  store i32 %199, i32* %197, align 4, !dbg !436
  %200 = load i32* %wd_imag4, align 4, !dbg !437
  %201 = load i32* %i1, align 4, !dbg !437
  %202 = add nsw i32 %201, 1, !dbg !437
  %203 = sext i32 %202 to i64, !dbg !437
  %204 = load i32** %2, align 8, !dbg !437
  %205 = getelementptr inbounds i32* %204, i64 %203, !dbg !437
  %206 = load i32* %205, align 4, !dbg !437
  %207 = add nsw i32 %206, %200, !dbg !437
  store i32 %207, i32* %205, align 4, !dbg !437
  %208 = load i32* %dual, align 4, !dbg !425
  %209 = mul nsw i32 2, %208, !dbg !425
  %210 = load i32* %b, align 4, !dbg !425
  %211 = add nsw i32 %210, %209, !dbg !425
  store i32 %211, i32* %b, align 4, !dbg !425
  br label %129, !dbg !425

; <label>:212                                     ; preds = %129
  %213 = load i32* %a, align 4, !dbg !417
  %214 = add nsw i32 %213, 1, !dbg !417
  store i32 %214, i32* %a, align 4, !dbg !417
  br label %104, !dbg !417

; <label>:215                                     ; preds = %104
  %216 = load i32* %bit, align 4, !dbg !396
  %217 = add nsw i32 %216, 1, !dbg !396
  store i32 %217, i32* %bit, align 4, !dbg !396
  %218 = load i32* %dual, align 4, !dbg !396
  %219 = mul nsw i32 %218, 2, !dbg !396
  store i32 %219, i32* %dual, align 4, !dbg !396
  br label %16, !dbg !396

; <label>:220                                     ; preds = %8, %0, %16
  ret void, !dbg !438
}

; Function Attrs: nounwind uwtable
define i32 @int_log2(i32 %n) #0 {
  %1 = alloca i32, align 4
  %k = alloca i32, align 4
  %log = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store i32 1, i32* %k, align 4, !dbg !439
  store i32 0, i32* %log, align 4, !dbg !440
  store i32 1, i32* %temp, align 4, !dbg !441
  br label %2, !dbg !442

; <label>:2                                       ; preds = %6, %0
  %3 = load i32* %k, align 4, !dbg !442
  %4 = load i32* %1, align 4, !dbg !442
  %5 = icmp slt i32 %3, %4, !dbg !442
  br i1 %5, label %6, label %13, !dbg !442

; <label>:6                                       ; preds = %2
  %7 = load i32* %temp, align 4, !dbg !444
  %8 = mul nsw i32 %7, 2, !dbg !444
  store i32 %8, i32* %temp, align 4, !dbg !444
  %9 = load i32* %k, align 4, !dbg !442
  %10 = mul nsw i32 %9, 2, !dbg !442
  store i32 %10, i32* %k, align 4, !dbg !442
  %11 = load i32* %log, align 4, !dbg !442
  %12 = add nsw i32 %11, 1, !dbg !442
  store i32 %12, i32* %log, align 4, !dbg !442
  br label %2, !dbg !442

; <label>:13                                      ; preds = %2
  %14 = load i32* %1, align 4, !dbg !446
  %15 = load i32* %temp, align 4, !dbg !446
  %16 = icmp ne i32 %14, %15, !dbg !446
  br i1 %16, label %17, label %18, !dbg !446

; <label>:17                                      ; preds = %13
  call void @exit(i32 1) #12, !dbg !448
  unreachable, !dbg !448

; <label>:18                                      ; preds = %13
  %19 = load i32* %log, align 4, !dbg !450
  ret i32 %19, !dbg !450
}

; Function Attrs: nounwind uwtable
define void @FFT_bitreverse(i32 %N, i32* %data) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %n = alloca i32, align 4
  %nm1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp_real = alloca i32, align 4
  %tmp_imag = alloca i32, align 4
  store i32 %N, i32* %1, align 4
  store i32* %data, i32** %2, align 8
  %3 = load i32* %1, align 4, !dbg !451
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !451
  %4 = sdiv i32 %3, 2, !dbg !451
  store i32 %4, i32* %n, align 4, !dbg !451
  %5 = load i32* %n, align 4, !dbg !452
  %6 = sub nsw i32 %5, 1, !dbg !452
  store i32 %6, i32* %nm1, align 4, !dbg !452
  store i32 0, i32* %i, align 4, !dbg !453
  store i32 0, i32* %j, align 4, !dbg !454
  br label %7, !dbg !455

; <label>:7                                       ; preds = %78, %0
  %8 = load i32* %i, align 4, !dbg !455
  %9 = load i32* %nm1, align 4, !dbg !455
  %10 = icmp slt i32 %8, %9, !dbg !455
  br i1 %10, label %11, label %82, !dbg !455

; <label>:11                                      ; preds = %7
  %12 = load i32* %i, align 4, !dbg !457
  %13 = mul nsw i32 %12, 2, !dbg !457
  store i32 %13, i32* %ii, align 4, !dbg !457
  %14 = load i32* %j, align 4, !dbg !459
  %15 = mul nsw i32 %14, 2, !dbg !459
  store i32 %15, i32* %jj, align 4, !dbg !459
  %16 = load i32* %n, align 4, !dbg !460
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !460
  %17 = sdiv i32 %16, 2, !dbg !460
  store i32 %17, i32* %k, align 4, !dbg !460
  %18 = load i32* %i, align 4, !dbg !461
  %19 = load i32* %j, align 4, !dbg !461
  %20 = icmp slt i32 %18, %19, !dbg !461
  br i1 %20, label %21, label %68, !dbg !461

; <label>:21                                      ; preds = %11
  %22 = load i32* %jj, align 4, !dbg !461
  %23 = load i32* %1, align 4, !dbg !461
  %24 = icmp slt i32 %22, %23, !dbg !461
  br i1 %24, label %25, label %68, !dbg !461

; <label>:25                                      ; preds = %21
  %26 = load i32* %ii, align 4, !dbg !463
  %27 = sext i32 %26 to i64, !dbg !463
  %28 = load i32** %2, align 8, !dbg !463
  %29 = getelementptr inbounds i32* %28, i64 %27, !dbg !463
  %30 = load i32* %29, align 4, !dbg !463
  store i32 %30, i32* %tmp_real, align 4, !dbg !463
  %31 = load i32* %ii, align 4, !dbg !465
  %32 = add nsw i32 %31, 1, !dbg !465
  %33 = sext i32 %32 to i64, !dbg !465
  %34 = load i32** %2, align 8, !dbg !465
  %35 = getelementptr inbounds i32* %34, i64 %33, !dbg !465
  %36 = load i32* %35, align 4, !dbg !465
  store i32 %36, i32* %tmp_imag, align 4, !dbg !465
  %37 = load i32* %jj, align 4, !dbg !466
  %38 = sext i32 %37 to i64, !dbg !466
  %39 = load i32** %2, align 8, !dbg !466
  %40 = getelementptr inbounds i32* %39, i64 %38, !dbg !466
  %41 = load i32* %40, align 4, !dbg !466
  %42 = load i32* %ii, align 4, !dbg !466
  %43 = sext i32 %42 to i64, !dbg !466
  %44 = load i32** %2, align 8, !dbg !466
  %45 = getelementptr inbounds i32* %44, i64 %43, !dbg !466
  store i32 %41, i32* %45, align 4, !dbg !466
  %46 = load i32* %jj, align 4, !dbg !467
  %47 = add nsw i32 %46, 1, !dbg !467
  %48 = sext i32 %47 to i64, !dbg !467
  %49 = load i32** %2, align 8, !dbg !467
  %50 = getelementptr inbounds i32* %49, i64 %48, !dbg !467
  %51 = load i32* %50, align 4, !dbg !467
  %52 = load i32* %ii, align 4, !dbg !467
  %53 = add nsw i32 %52, 1, !dbg !467
  %54 = sext i32 %53 to i64, !dbg !467
  %55 = load i32** %2, align 8, !dbg !467
  %56 = getelementptr inbounds i32* %55, i64 %54, !dbg !467
  store i32 %51, i32* %56, align 4, !dbg !467
  %57 = load i32* %tmp_real, align 4, !dbg !468
  %58 = load i32* %jj, align 4, !dbg !468
  %59 = sext i32 %58 to i64, !dbg !468
  %60 = load i32** %2, align 8, !dbg !468
  %61 = getelementptr inbounds i32* %60, i64 %59, !dbg !468
  store i32 %57, i32* %61, align 4, !dbg !468
  %62 = load i32* %tmp_imag, align 4, !dbg !469
  %63 = load i32* %jj, align 4, !dbg !469
  %64 = add nsw i32 %63, 1, !dbg !469
  %65 = sext i32 %64 to i64, !dbg !469
  %66 = load i32** %2, align 8, !dbg !469
  %67 = getelementptr inbounds i32* %66, i64 %65, !dbg !469
  store i32 %62, i32* %67, align 4, !dbg !469
  br label %68, !dbg !470

; <label>:68                                      ; preds = %11, %21, %25, %74
  %69 = load i32* %k, align 4, !dbg !471
  %70 = load i32* %j, align 4, !dbg !471
  %71 = icmp sle i32 %69, %70, !dbg !471
  %72 = load i32* %k, align 4, !dbg !472
  %73 = load i32* %j, align 4, !dbg !472
  br i1 %71, label %74, label %78, !dbg !471

; <label>:74                                      ; preds = %68
  %75 = sub nsw i32 %73, %72, !dbg !472
  store i32 %75, i32* %j, align 4, !dbg !472
  %76 = load i32* %k, align 4, !dbg !474
  %int_cast_to_i642 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !474
  %77 = sdiv i32 %76, 2, !dbg !474
  store i32 %77, i32* %k, align 4, !dbg !474
  br label %68, !dbg !475

; <label>:78                                      ; preds = %68
  %79 = add nsw i32 %73, %72, !dbg !476
  store i32 %79, i32* %j, align 4, !dbg !476
  %80 = load i32* %i, align 4, !dbg !455
  %81 = add nsw i32 %80, 1, !dbg !455
  store i32 %81, i32* %i, align 4, !dbg !455
  br label %7, !dbg !455

; <label>:82                                      ; preds = %7
  ret void, !dbg !477
}

declare void @klee_bound_error(i64, i8*, double) #2

; Function Attrs: nounwind uwtable
define i32 @sin_func(i32 %x) #0 {
  %1 = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  %2 = load i32* %1, align 4, !dbg !478
  %int_cast_to_i64 = zext i32 6 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !478
  %3 = sdiv i32 %2, 6, !dbg !478
  store i32 %3, i32* %n, align 4, !dbg !478
  %4 = load i32* %1, align 4, !dbg !479
  %5 = load i32* %n, align 4, !dbg !479
  %6 = mul nsw i32 %5, 6, !dbg !479
  %7 = sub nsw i32 %4, %6, !dbg !479
  %8 = call i32 @rrsin(i32 %7), !dbg !479
  ret i32 %8, !dbg !479
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @rrsin(i32 %x) #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %xx = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  store i32 1, i32* %a, align 4, !dbg !480
  %2 = load i32* %1, align 4, !dbg !480
  %3 = load i32* %1, align 4, !dbg !480
  %4 = mul nsw i32 %2, %3, !dbg !480
  store i32 %4, i32* %xx, align 4, !dbg !480
  store i32 21, i32* %i, align 4, !dbg !481
  br label %5, !dbg !481

; <label>:5                                       ; preds = %8, %0
  %6 = load i32* %i, align 4, !dbg !481
  %7 = icmp slt i32 2, %6, !dbg !481
  br i1 %7, label %8, label %20, !dbg !481

; <label>:8                                       ; preds = %5
  %9 = load i32* %a, align 4, !dbg !483
  %10 = load i32* %xx, align 4, !dbg !483
  %11 = mul nsw i32 %9, %10, !dbg !483
  %12 = load i32* %i, align 4, !dbg !483
  %13 = load i32* %i, align 4, !dbg !483
  %14 = sub nsw i32 %13, 1, !dbg !483
  %15 = mul nsw i32 %12, %14, !dbg !483
  %int_cast_to_i64 = zext i32 %15 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !483
  %16 = sdiv i32 %11, %15, !dbg !483
  %17 = sub nsw i32 1, %16, !dbg !483
  store i32 %17, i32* %a, align 4, !dbg !483
  %18 = load i32* %i, align 4, !dbg !481
  %19 = sub nsw i32 %18, 2, !dbg !481
  store i32 %19, i32* %i, align 4, !dbg !481
  br label %5, !dbg !481

; <label>:20                                      ; preds = %5
  %21 = load i32* %1, align 4, !dbg !484
  %22 = load i32* %a, align 4, !dbg !484
  %23 = mul nsw i32 %21, %22, !dbg !484
  ret i32 %23, !dbg !484
}

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
entry:
  %0 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !485
  %tobool = icmp ne i32 %0, 0, !dbg !485
  br i1 %tobool, label %if.end3, label %if.end, !dbg !485

if.end:                                           ; preds = %entry
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !487
  %inc = add nsw i32 %1, 1, !dbg !487
  store i32 %inc, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !487
  store i64 4096, i64* @__pagesize, align 8, !dbg !488
  %tobool1 = icmp ne i64 1, 0, !dbg !489
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !489

if.then2:                                         ; preds = %if.end
  call void @_stdio_init() #13, !dbg !491
  br label %if.end3, !dbg !491

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !492
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !493
  %cmp = icmp ne void ()* %0, null, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !493

if.then:                                          ; preds = %entry
  %1 = load void ()** @__app_fini, align 8, !dbg !495
  call void %1() #13, !dbg !495
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  %2 = load void ()** @__rtld_fini, align 8, !dbg !496
  %cmp1 = icmp ne void ()* %2, null, !dbg !496
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !496

if.then2:                                         ; preds = %if.end
  %3 = load void ()** @__rtld_fini, align 8, !dbg !498
  call void %3() #13, !dbg !498
  br label %if.end3, !dbg !498

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !499
}

; Function Attrs: noreturn nounwind uwtable
define void @__uClibc_main(i32 (i32, i8**, i8**)* %main, i32 %argc, i8** %argv, void ()* %app_init, void ()* %app_fini, void ()* %rtld_fini, i8* %stack_end) #4 {
entry:
  %main.addr = alloca i32 (i32, i8**, i8**)*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %app_init.addr = alloca void ()*, align 8
  %app_fini.addr = alloca void ()*, align 8
  %rtld_fini.addr = alloca void ()*, align 8
  %stack_end.addr = alloca i8*, align 8
  %aux_dat = alloca i64*, align 8
  %auxvt = alloca [15 x %struct.Elf64_auxv_t], align 16
  %auxv_entry = alloca %struct.Elf64_auxv_t*, align 8
  store i32 (i32, i8**, i8**)* %main, i32 (i32, i8**, i8**)** %main.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store void ()* %app_init, void ()** %app_init.addr, align 8
  store void ()* %app_fini, void ()** %app_fini.addr, align 8
  store void ()* %rtld_fini, void ()** %rtld_fini.addr, align 8
  store i8* %stack_end, i8** %stack_end.addr, align 8
  %0 = load i8** %stack_end.addr, align 8, !dbg !500
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !500
  %1 = load void ()** %rtld_fini.addr, align 8, !dbg !501
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !501
  %2 = load i32* %argc.addr, align 4, !dbg !502
  %add = add nsw i32 %2, 1, !dbg !502
  %idxprom = sext i32 %add to i64, !dbg !502
  %3 = load i8*** %argv.addr, align 8, !dbg !502
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !502
  store i8** %arrayidx, i8*** @__environ, align 8, !dbg !502
  %4 = load i8*** @__environ, align 8, !dbg !503
  %5 = bitcast i8** %4 to i8*, !dbg !503
  %6 = load i8*** %argv.addr, align 8, !dbg !503
  %7 = load i8** %6, align 8, !dbg !503
  %cmp = icmp eq i8* %5, %7, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !503

if.then:                                          ; preds = %entry
  %8 = load i32* %argc.addr, align 4, !dbg !505
  %idxprom1 = sext i32 %8 to i64, !dbg !505
  %9 = load i8*** %argv.addr, align 8, !dbg !505
  %arrayidx2 = getelementptr inbounds i8** %9, i64 %idxprom1, !dbg !505
  store i8** %arrayidx2, i8*** @__environ, align 8, !dbg !505
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !508
  %10 = bitcast %struct.Elf64_auxv_t* %arraydecay to i8*, !dbg !508
  %call = call i8* @memset(i8* %10, i32 0, i64 240) #14, !dbg !508
  %11 = load i8*** @__environ, align 8, !dbg !509
  %12 = bitcast i8** %11 to i64*, !dbg !509
  store i64* %12, i64** %aux_dat, align 8, !dbg !509
  br label %while.cond, !dbg !510

while.cond:                                       ; preds = %while.cond, %if.end
  %13 = load i64** %aux_dat, align 8, !dbg !510
  %14 = load i64* %13, align 8, !dbg !510
  %tobool = icmp ne i64 %14, 0, !dbg !510
  %15 = load i64** %aux_dat, align 8, !dbg !511
  %incdec.ptr = getelementptr inbounds i64* %15, i32 1, !dbg !511
  store i64* %incdec.ptr, i64** %aux_dat, align 8, !dbg !511
  br i1 %tobool, label %while.cond, label %while.cond4, !dbg !510

while.cond4:                                      ; preds = %while.cond, %if.end12
  %16 = load i64** %aux_dat, align 8, !dbg !513
  %17 = load i64* %16, align 8, !dbg !513
  %tobool5 = icmp ne i64 %17, 0, !dbg !513
  br i1 %tobool5, label %while.body6, label %while.end13, !dbg !513

while.body6:                                      ; preds = %while.cond4
  %18 = load i64** %aux_dat, align 8, !dbg !514
  %19 = bitcast i64* %18 to %struct.Elf64_auxv_t*, !dbg !514
  store %struct.Elf64_auxv_t* %19, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !514
  %20 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !516
  %a_type = getelementptr inbounds %struct.Elf64_auxv_t* %20, i32 0, i32 0, !dbg !516
  %21 = load i64* %a_type, align 8, !dbg !516
  %cmp7 = icmp ule i64 %21, 14, !dbg !516
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !516

if.then8:                                         ; preds = %while.body6
  %22 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !518
  %a_type9 = getelementptr inbounds %struct.Elf64_auxv_t* %22, i32 0, i32 0, !dbg !518
  %23 = load i64* %a_type9, align 8, !dbg !518
  %arrayidx10 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %23, !dbg !518
  %24 = bitcast %struct.Elf64_auxv_t* %arrayidx10 to i8*, !dbg !518
  %25 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !518
  %26 = bitcast %struct.Elf64_auxv_t* %25 to i8*, !dbg !518
  %call11 = call i8* @memcpy(i8* %24, i8* %26, i64 16) #14, !dbg !518
  br label %if.end12, !dbg !520

if.end12:                                         ; preds = %if.then8, %while.body6
  %27 = load i64** %aux_dat, align 8, !dbg !521
  %add.ptr = getelementptr inbounds i64* %27, i64 2, !dbg !521
  store i64* %add.ptr, i64** %aux_dat, align 8, !dbg !521
  br label %while.cond4, !dbg !522

while.end13:                                      ; preds = %while.cond4
  call void @__uClibc_init() #13, !dbg !523
  %arrayidx14 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !524
  %a_un = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx14, i32 0, i32 1, !dbg !524
  %a_val = bitcast %union.anon.120* %a_un to i64*, !dbg !524
  %28 = load i64* %a_val, align 8, !dbg !524
  %tobool15 = icmp ne i64 %28, 0, !dbg !524
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !524

cond.true:                                        ; preds = %while.end13
  %arrayidx16 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !524
  %a_un17 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx16, i32 0, i32 1, !dbg !524
  %a_val18 = bitcast %union.anon.120* %a_un17 to i64*, !dbg !524
  %29 = load i64* %a_val18, align 8, !dbg !524
  br label %cond.end, !dbg !524

cond.end:                                         ; preds = %while.end13, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 4096, %while.end13 ], !dbg !524
  store i64 %cond, i64* @__pagesize, align 8, !dbg !524
  %arrayidx19 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !525
  %a_un20 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx19, i32 0, i32 1, !dbg !525
  %a_val21 = bitcast %union.anon.120* %a_un20 to i64*, !dbg !525
  %30 = load i64* %a_val21, align 8, !dbg !525
  %cmp22 = icmp eq i64 %30, -1, !dbg !525
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !525

land.lhs.true:                                    ; preds = %cond.end
  %call23 = call i32 @__check_suid() #13, !dbg !525
  %tobool24 = icmp ne i32 %call23, 0, !dbg !525
  br i1 %tobool24, label %if.then45, label %lor.lhs.false, !dbg !525

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %arrayidx25 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !525
  %a_un26 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx25, i32 0, i32 1, !dbg !525
  %a_val27 = bitcast %union.anon.120* %a_un26 to i64*, !dbg !525
  %31 = load i64* %a_val27, align 8, !dbg !525
  %cmp28 = icmp ne i64 %31, -1, !dbg !525
  br i1 %cmp28, label %land.lhs.true29, label %if.end46, !dbg !525

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !525
  %a_un31 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx30, i32 0, i32 1, !dbg !525
  %a_val32 = bitcast %union.anon.120* %a_un31 to i64*, !dbg !525
  %32 = load i64* %a_val32, align 8, !dbg !525
  %arrayidx33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !525
  %a_un34 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx33, i32 0, i32 1, !dbg !525
  %a_val35 = bitcast %union.anon.120* %a_un34 to i64*, !dbg !525
  %33 = load i64* %a_val35, align 8, !dbg !525
  %cmp36 = icmp ne i64 %32, %33, !dbg !525
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !525

lor.lhs.false37:                                  ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !525
  %a_un39 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx38, i32 0, i32 1, !dbg !525
  %a_val40 = bitcast %union.anon.120* %a_un39 to i64*, !dbg !525
  %34 = load i64* %a_val40, align 8, !dbg !525
  %arrayidx41 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !525
  %a_un42 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx41, i32 0, i32 1, !dbg !525
  %a_val43 = bitcast %union.anon.120* %a_un42 to i64*, !dbg !525
  %35 = load i64* %a_val43, align 8, !dbg !525
  %cmp44 = icmp ne i64 %34, %35, !dbg !525
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !525

if.then45:                                        ; preds = %lor.lhs.false37, %land.lhs.true29, %land.lhs.true
  call void @__check_one_fd(i32 0, i32 131072) #13, !dbg !527
  call void @__check_one_fd(i32 1, i32 131074) #13, !dbg !529
  call void @__check_one_fd(i32 2, i32 131074) #13, !dbg !530
  br label %if.end46, !dbg !531

if.end46:                                         ; preds = %if.then45, %lor.lhs.false37, %lor.lhs.false
  %36 = load i8*** %argv.addr, align 8, !dbg !532
  %37 = load i8** %36, align 8, !dbg !532
  store i8* %37, i8** @__uclibc_progname, align 8, !dbg !532
  %38 = load i8*** %argv.addr, align 8, !dbg !533
  %39 = load i8** %38, align 8, !dbg !533
  store i8* %39, i8** @program_invocation_name, align 8, !dbg !533
  %40 = load i8*** %argv.addr, align 8, !dbg !534
  %41 = load i8** %40, align 8, !dbg !534
  %call47 = call i8* @strrchr(i8* %41, i32 47) #15, !dbg !534
  store i8* %call47, i8** @program_invocation_short_name, align 8, !dbg !534
  %42 = load i8** @program_invocation_short_name, align 8, !dbg !535
  %cmp48 = icmp ne i8* %42, null, !dbg !535
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !535

if.then49:                                        ; preds = %if.end46
  %43 = load i8** @program_invocation_short_name, align 8, !dbg !537
  %incdec.ptr50 = getelementptr inbounds i8* %43, i32 1, !dbg !537
  store i8* %incdec.ptr50, i8** @program_invocation_short_name, align 8, !dbg !537
  br label %if.end51, !dbg !537

if.else:                                          ; preds = %if.end46
  %44 = load i8** @program_invocation_name, align 8, !dbg !538
  store i8* %44, i8** @program_invocation_short_name, align 8, !dbg !538
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %45 = load void ()** %app_fini.addr, align 8, !dbg !539
  store void ()* %45, void ()** @__app_fini, align 8, !dbg !539
  %46 = load void ()** %app_init.addr, align 8, !dbg !540
  %cmp52 = icmp ne void ()* %46, null, !dbg !540
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !540

if.then53:                                        ; preds = %if.end51
  %47 = load void ()** %app_init.addr, align 8, !dbg !542
  call void %47() #13, !dbg !542
  br label %if.end54, !dbg !544

if.end54:                                         ; preds = %if.then53, %if.end51
  %tobool55 = icmp ne i64 1, 0, !dbg !545
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !545

if.then56:                                        ; preds = %if.end54
  %call57 = call i32* @__errno_location() #16, !dbg !547
  store i32 0, i32* %call57, align 4, !dbg !547
  br label %if.end58, !dbg !547

if.end58:                                         ; preds = %if.then56, %if.end54
  %tobool60 = icmp ne i64 1, 0, !dbg !548
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !548

if.then61:                                        ; preds = %if.end58
  %call62 = call i32* @__h_errno_location() #16, !dbg !550
  store i32 0, i32* %call62, align 4, !dbg !550
  br label %if.end63, !dbg !550

if.end63:                                         ; preds = %if.then61, %if.end58
  %48 = load i32 (i32, i8**, i8**)** %main.addr, align 8, !dbg !551
  %49 = load i32* %argc.addr, align 4, !dbg !551
  %50 = load i8*** %argv.addr, align 8, !dbg !551
  %51 = load i8*** @__environ, align 8, !dbg !551
  %call64 = call i32 %48(i32 %49, i8** %50, i8** %51) #13, !dbg !551
  call void @exit(i32 %call64) #17, !dbg !551
  unreachable, !dbg !551
}

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat.119*) #5

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare i32 @getuid() #5

; Function Attrs: nounwind
declare i32 @geteuid() #5

; Function Attrs: nounwind
declare i32 @getgid() #5

; Function Attrs: nounwind
declare i32 @getegid() #5

; Function Attrs: nounwind uwtable
define internal i32 @__check_suid() #0 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca i32, align 4
  %euid = alloca i32, align 4
  %gid = alloca i32, align 4
  %egid = alloca i32, align 4
  %call = call i32 @getuid() #14, !dbg !552
  store i32 %call, i32* %uid, align 4, !dbg !552
  %call1 = call i32 @geteuid() #14, !dbg !554
  store i32 %call1, i32* %euid, align 4, !dbg !554
  %call2 = call i32 @getgid() #14, !dbg !555
  store i32 %call2, i32* %gid, align 4, !dbg !555
  %call3 = call i32 @getegid() #14, !dbg !556
  store i32 %call3, i32* %egid, align 4, !dbg !556
  %0 = load i32* %uid, align 4, !dbg !557
  %1 = load i32* %euid, align 4, !dbg !557
  %cmp = icmp eq i32 %0, %1, !dbg !557
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !557

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %gid, align 4, !dbg !557
  %3 = load i32* %egid, align 4, !dbg !557
  %cmp4 = icmp eq i32 %2, %3, !dbg !557
  br i1 %cmp4, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !559
  br label %return, !dbg !559

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, !dbg !561
  br label %return, !dbg !561

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval, !dbg !562
  ret i32 %4, !dbg !562
}

; Function Attrs: nounwind uwtable
define internal void @__check_one_fd(i32 %fd, i32 %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %st = alloca %struct.stat.119, align 8
  %nullfd = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !563
  %call = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) #13, !dbg !563
  %cmp = icmp eq i32 %call, -1, !dbg !563
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !563

land.rhs:                                         ; preds = %entry
  %call1 = call i32* @__errno_location() #16, !dbg !563
  %1 = load i32* %call1, align 4, !dbg !563
  %cmp2 = icmp eq i32 %1, 9, !dbg !563
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %lnot = xor i1 %2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %land.end
  %3 = load i32* %mode.addr, align 4, !dbg !565
  %call4 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i32 %3) #13, !dbg !565
  store i32 %call4, i32* %nullfd, align 4, !dbg !565
  %4 = load i32* %nullfd, align 4, !dbg !567
  %5 = load i32* %fd.addr, align 4, !dbg !567
  %cmp5 = icmp ne i32 %4, %5, !dbg !567
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !567

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %fd.addr, align 4, !dbg !567
  %call7 = call i32 @fstat(i32 %6, %struct.stat.119* %st) #14, !dbg !567
  %tobool8 = icmp ne i32 %call7, 0, !dbg !567
  br i1 %tobool8, label %if.then16, label %lor.lhs.false9, !dbg !567

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 3, !dbg !567
  %7 = load i32* %st_mode, align 4, !dbg !567
  %and = and i32 %7, 61440, !dbg !567
  %cmp10 = icmp eq i32 %and, 8192, !dbg !567
  br i1 %cmp10, label %lor.lhs.false12, label %if.then16, !dbg !567

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %st_rdev = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 7, !dbg !567
  %8 = load i64* %st_rdev, align 8, !dbg !567
  %call13 = call i64 @gnu_dev_makedev(i32 1, i32 3) #14, !dbg !569
  %cmp14 = icmp ne i64 %8, %call13, !dbg !569
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !569

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %if.then
  call void @abort() #17, !dbg !570
  unreachable, !dbg !570

if.end17:                                         ; preds = %lor.lhs.false12, %land.end
  ret void, !dbg !572
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #6 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %0 = load i32* %__minor.addr, align 4, !dbg !573
  %and = and i32 %0, 255, !dbg !573
  %1 = load i32* %__major.addr, align 4, !dbg !573
  %and1 = and i32 %1, 4095, !dbg !573
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !573
  %shl = shl i32 %and1, 8, !dbg !573
  %or = or i32 %and, %shl, !dbg !573
  %conv = zext i32 %or to i64, !dbg !573
  %2 = load i32* %__minor.addr, align 4, !dbg !573
  %and2 = and i32 %2, -256, !dbg !573
  %conv3 = zext i32 %and2 to i64, !dbg !573
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !573
  %shl4 = shl i64 %conv3, 12, !dbg !573
  %or5 = or i64 %conv, %shl4, !dbg !573
  %3 = load i32* %__major.addr, align 4, !dbg !573
  %and6 = and i32 %3, -4096, !dbg !573
  %conv7 = zext i32 %and6 to i64, !dbg !573
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !573
  %shl8 = shl i64 %conv7, 32, !dbg !573
  %or9 = or i64 %or5, %shl8, !dbg !573
  ret i64 %or9, !dbg !573
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
entry:
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, align 8, !dbg !575
  store %struct.__STDIO_FILE_STRUCT.376* %0, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !575
  br label %for.cond, !dbg !575

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !575
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT.376* %1, null, !dbg !575
  br i1 %tobool, label %for.body, label %for.end, !dbg !575

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !577
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 0, !dbg !577
  %3 = load i16* %__modeflags, align 2, !dbg !577
  %conv = zext i16 %3 to i32, !dbg !577
  %and = and i32 %conv, 64, !dbg !577
  %tobool1 = icmp ne i32 %and, 0, !dbg !577
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !577

if.then:                                          ; preds = %for.body
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !580
  %call = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* %4) #13, !dbg !580
  br label %for.inc, !dbg !582

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !575
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 9, !dbg !575
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %__nextopen, align 8, !dbg !575
  store %struct.__STDIO_FILE_STRUCT.376* %6, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !575
  br label %for.cond, !dbg !575

for.end:                                          ; preds = %for.cond
  ret void, !dbg !583
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
entry:
  %old_errno = alloca i32, align 4
  %0 = load i32* @errno, align 4, !dbg !584
  store i32 %0, i32* %old_errno, align 4, !dbg !584
  %call = call i32 @isatty(i32 0) #14, !dbg !585
  %sub = sub nsw i32 1, %call, !dbg !585
  %mul = mul i32 %sub, 256, !dbg !585
  %1 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !585
  %conv = zext i16 %1 to i32, !dbg !585
  %xor = xor i32 %conv, %mul, !dbg !585
  %conv1 = trunc i32 %xor to i16, !dbg !585
  store i16 %conv1, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !585
  %call2 = call i32 @isatty(i32 1) #14, !dbg !586
  %sub3 = sub nsw i32 1, %call2, !dbg !586
  %mul4 = mul i32 %sub3, 256, !dbg !586
  %2 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !586
  %conv5 = zext i16 %2 to i32, !dbg !586
  %xor6 = xor i32 %conv5, %mul4, !dbg !586
  %conv7 = trunc i32 %xor6 to i16, !dbg !586
  store i16 %conv7, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !586
  %3 = load i32* %old_errno, align 4, !dbg !587
  store i32 %3, i32* @errno, align 4, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* noalias %stream) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.376* %stream, %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !589
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %0, i32 0, i32 5, !dbg !589
  %1 = load i8** %__bufpos, align 8, !dbg !589
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !589
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 3, !dbg !589
  %3 = load i8** %__bufstart, align 8, !dbg !589
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !589
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !589
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !589
  store i64 %sub.ptr.sub, i64* %bufsize, align 8, !dbg !589
  %cmp = icmp ne i64 %sub.ptr.sub, 0, !dbg !589
  br i1 %cmp, label %if.then, label %if.end, !dbg !589

if.then:                                          ; preds = %entry
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !591
  %__bufstart1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %4, i32 0, i32 3, !dbg !591
  %5 = load i8** %__bufstart1, align 8, !dbg !591
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !591
  %__bufpos2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %6, i32 0, i32 5, !dbg !591
  store i8* %5, i8** %__bufpos2, align 8, !dbg !591
  %7 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !593
  %8 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !593
  %__bufstart3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %8, i32 0, i32 3, !dbg !593
  %9 = load i8** %__bufstart3, align 8, !dbg !593
  %10 = load i64* %bufsize, align 8, !dbg !593
  %call = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.376* %7, i8* %9, i64 %10) #13, !dbg !593
  br label %if.end, !dbg !594

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !595
  %__bufpos4 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %11, i32 0, i32 5, !dbg !595
  %12 = load i8** %__bufpos4, align 8, !dbg !595
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !595
  %__bufstart5 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 3, !dbg !595
  %14 = load i8** %__bufstart5, align 8, !dbg !595
  %sub.ptr.lhs.cast6 = ptrtoint i8* %12 to i64, !dbg !595
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64, !dbg !595
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !595
  ret i64 %sub.ptr.sub8, !dbg !595
}

; Function Attrs: nounwind uwtable
define i8* @memcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %r1 = alloca i8*, align 8
  %r2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s1.addr, align 8, !dbg !596
  store i8* %0, i8** %r1, align 8, !dbg !596
  %1 = load i8** %s2.addr, align 8, !dbg !597
  store i8* %1, i8** %r2, align 8, !dbg !597
  br label %while.cond, !dbg !598

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !598
  %tobool = icmp ne i64 %2, 0, !dbg !598
  br i1 %tobool, label %while.body, label %while.end, !dbg !598

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !599
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !599
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !599
  %4 = load i8* %3, align 1, !dbg !599
  %5 = load i8** %r1, align 8, !dbg !599
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !599
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !599
  store i8 %4, i8* %5, align 1, !dbg !599
  %6 = load i64* %n.addr, align 8, !dbg !601
  %dec = add i64 %6, -1, !dbg !601
  store i64 %dec, i64* %n.addr, align 8, !dbg !601
  br label %while.cond, !dbg !602

while.end:                                        ; preds = %while.cond
  %7 = load i8** %s1.addr, align 8, !dbg !603
  ret i8* %7, !dbg !603
}

; Function Attrs: nounwind uwtable
define i8* @memset(i8* %s, i32 %c, i64 %n) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s.addr, align 8, !dbg !604
  store i8* %0, i8** %p, align 8, !dbg !604
  br label %while.cond, !dbg !605

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %n.addr, align 8, !dbg !605
  %tobool = icmp ne i64 %1, 0, !dbg !605
  br i1 %tobool, label %while.body, label %while.end, !dbg !605

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4, !dbg !606
  %conv = trunc i32 %2 to i8, !dbg !606
  %3 = load i8** %p, align 8, !dbg !606
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !606
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !606
  store i8 %conv, i8* %3, align 1, !dbg !606
  %4 = load i64* %n.addr, align 8, !dbg !608
  %dec = add i64 %4, -1, !dbg !608
  store i64 %dec, i64* %n.addr, align 8, !dbg !608
  br label %while.cond, !dbg !609

while.end:                                        ; preds = %while.cond
  %5 = load i8** %s.addr, align 8, !dbg !610
  ret i8* %5, !dbg !610
}

; Function Attrs: nounwind readonly uwtable
define i8* @strrchr(i8* %s, i32 %c) #7 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* null, i8** %p, align 8, !dbg !611
  br label %do.body, !dbg !612

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8** %s.addr, align 8, !dbg !613
  %1 = load i8* %0, align 1, !dbg !613
  %conv = sext i8 %1 to i32, !dbg !613
  %2 = load i32* %c.addr, align 4, !dbg !613
  %conv1 = trunc i32 %2 to i8, !dbg !613
  %conv2 = sext i8 %conv1 to i32, !dbg !613
  %cmp = icmp eq i32 %conv, %conv2, !dbg !613
  br i1 %cmp, label %if.then, label %do.cond, !dbg !613

if.then:                                          ; preds = %do.body
  %3 = load i8** %s.addr, align 8, !dbg !616
  store i8* %3, i8** %p, align 8, !dbg !616
  br label %do.cond, !dbg !618

do.cond:                                          ; preds = %do.body, %if.then
  %4 = load i8** %s.addr, align 8, !dbg !619
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1, !dbg !619
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !619
  %5 = load i8* %4, align 1, !dbg !619
  %tobool = icmp ne i8 %5, 0, !dbg !619
  br i1 %tobool, label %do.body, label %do.end, !dbg !619

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !620
  ret i8* %6, !dbg !620
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %term = alloca %struct.termios.616, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !621
  %call = call i32 @tcgetattr(i32 %0, %struct.termios.616* %term) #14, !dbg !621
  %cmp = icmp eq i32 %call, 0, !dbg !621
  %conv = zext i1 %cmp to i32, !dbg !621
  ret i32 %conv, !dbg !621
}

; Function Attrs: nounwind uwtable
define i32 @tcgetattr(i32 %fd, %struct.termios.616* %termios_p) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %termios_p.addr = alloca %struct.termios.616*, align 8
  %k_termios = alloca %struct.__kernel_termios, align 4
  %retval1 = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.termios.616* %termios_p, %struct.termios.616** %termios_p.addr, align 8
  %0 = load i32* %fd.addr, align 4, !dbg !622
  %call = call i32 (i32, i64, ...)* @ioctl(i32 %0, i64 21505, %struct.__kernel_termios* %k_termios) #14, !dbg !622
  store i32 %call, i32* %retval1, align 4, !dbg !622
  %c_iflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !623
  %1 = load i32* %c_iflag, align 4, !dbg !623
  %2 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !623
  %c_iflag2 = getelementptr inbounds %struct.termios.616* %2, i32 0, i32 0, !dbg !623
  store i32 %1, i32* %c_iflag2, align 4, !dbg !623
  %c_oflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !624
  %3 = load i32* %c_oflag, align 4, !dbg !624
  %4 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !624
  %c_oflag3 = getelementptr inbounds %struct.termios.616* %4, i32 0, i32 1, !dbg !624
  store i32 %3, i32* %c_oflag3, align 4, !dbg !624
  %c_cflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !625
  %5 = load i32* %c_cflag, align 4, !dbg !625
  %6 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !625
  %c_cflag4 = getelementptr inbounds %struct.termios.616* %6, i32 0, i32 2, !dbg !625
  store i32 %5, i32* %c_cflag4, align 4, !dbg !625
  %c_lflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !626
  %7 = load i32* %c_lflag, align 4, !dbg !626
  %8 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !626
  %c_lflag5 = getelementptr inbounds %struct.termios.616* %8, i32 0, i32 3, !dbg !626
  store i32 %7, i32* %c_lflag5, align 4, !dbg !626
  %c_line = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !627
  %9 = load i8* %c_line, align 1, !dbg !627
  %10 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !627
  %c_line6 = getelementptr inbounds %struct.termios.616* %10, i32 0, i32 4, !dbg !627
  store i8 %9, i8* %c_line6, align 1, !dbg !627
  %11 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !628
  %c_cc = getelementptr inbounds %struct.termios.616* %11, i32 0, i32 5, !dbg !628
  %arrayidx = getelementptr inbounds [32 x i8]* %c_cc, i32 0, i64 0, !dbg !628
  %c_cc7 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !628
  %arrayidx8 = getelementptr inbounds [19 x i8]* %c_cc7, i32 0, i64 0, !dbg !628
  %call9 = call i8* @mempcpy(i8* %arrayidx, i8* %arrayidx8, i64 19) #14, !dbg !628
  %call10 = call i8* @memset(i8* %call9, i32 0, i64 13) #14, !dbg !628
  %12 = load i32* %retval1, align 4, !dbg !631
  ret i32 %12, !dbg !631
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #5

; Function Attrs: nounwind readnone uwtable
define weak i32* @__errno_location() #8 {
entry:
  ret i32* @errno, !dbg !632
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #8 {
entry:
  ret i32* @h_errno, !dbg !633
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.376* %stream, i8* %buf, i64 %bufsize) #0 {
entry:
  %retval = alloca i64, align 8
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %todo = alloca i64, align 8
  %rv = alloca i64, align 8
  %stodo = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.__STDIO_FILE_STRUCT.376* %stream, %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  %0 = load i64* %bufsize.addr, align 8, !dbg !634
  store i64 %0, i64* %todo, align 8, !dbg !634
  br label %do.body, !dbg !635

do.body:                                          ; preds = %if.then3, %entry
  %1 = load i64* %todo, align 8, !dbg !636
  %cmp = icmp eq i64 %1, 0, !dbg !636
  br i1 %cmp, label %if.then, label %if.end, !dbg !636

if.then:                                          ; preds = %do.body
  %2 = load i64* %bufsize.addr, align 8, !dbg !639
  store i64 %2, i64* %retval, !dbg !639
  br label %do.end32, !dbg !639

if.end:                                           ; preds = %do.body
  %3 = load i64* %todo, align 8, !dbg !641
  %cmp1 = icmp ule i64 %3, 9223372036854775807, !dbg !641
  %4 = load i64* %todo, align 8, !dbg !641
  %cond = select i1 %cmp1, i64 %4, i64 9223372036854775807, !dbg !641
  store i64 %cond, i64* %stodo, align 8, !dbg !641
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !642
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 2, !dbg !642
  %6 = load i32* %__filedes, align 4, !dbg !642
  %7 = load i8** %buf.addr, align 8, !dbg !642
  %8 = load i64* %stodo, align 8, !dbg !642
  %call = call i64 @write(i32 %6, i8* %7, i64 %8) #13, !dbg !642
  store i64 %call, i64* %rv, align 8, !dbg !642
  %cmp2 = icmp sge i64 %call, 0, !dbg !642
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !642

if.then3:                                         ; preds = %if.end
  %9 = load i64* %rv, align 8, !dbg !644
  %10 = load i64* %todo, align 8, !dbg !644
  %sub = sub i64 %10, %9, !dbg !644
  store i64 %sub, i64* %todo, align 8, !dbg !644
  %11 = load i64* %rv, align 8, !dbg !646
  %12 = load i8** %buf.addr, align 8, !dbg !646
  %add.ptr = getelementptr inbounds i8* %12, i64 %11, !dbg !646
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !646
  br label %do.body, !dbg !647

if.else:                                          ; preds = %if.end
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !648
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 0, !dbg !648
  %14 = load i16* %__modeflags, align 2, !dbg !648
  %conv = zext i16 %14 to i32, !dbg !648
  %or = or i32 %conv, 8, !dbg !648
  %conv4 = trunc i32 %or to i16, !dbg !648
  store i16 %conv4, i16* %__modeflags, align 2, !dbg !648
  %15 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !650
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %15, i32 0, i32 4, !dbg !650
  %16 = load i8** %__bufend, align 8, !dbg !650
  %17 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !650
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %17, i32 0, i32 3, !dbg !650
  %18 = load i8** %__bufstart, align 8, !dbg !650
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !650
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !650
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !650
  store i64 %sub.ptr.sub, i64* %stodo, align 8, !dbg !650
  %cmp5 = icmp ne i64 %sub.ptr.sub, 0, !dbg !650
  br i1 %cmp5, label %if.then7, label %if.end28, !dbg !650

if.then7:                                         ; preds = %if.else
  %19 = load i64* %stodo, align 8, !dbg !652
  %20 = load i64* %todo, align 8, !dbg !652
  %cmp8 = icmp ugt i64 %19, %20, !dbg !652
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !652

if.then10:                                        ; preds = %if.then7
  %21 = load i64* %todo, align 8, !dbg !655
  store i64 %21, i64* %stodo, align 8, !dbg !655
  br label %if.end11, !dbg !657

if.end11:                                         ; preds = %if.then10, %if.then7
  %22 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !658
  %__bufstart12 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %22, i32 0, i32 3, !dbg !658
  %23 = load i8** %__bufstart12, align 8, !dbg !658
  store i8* %23, i8** %s, align 8, !dbg !658
  br label %do.body13, !dbg !659

do.body13:                                        ; preds = %if.end20, %if.end11
  %24 = load i8** %buf.addr, align 8, !dbg !660
  %25 = load i8* %24, align 1, !dbg !660
  %26 = load i8** %s, align 8, !dbg !660
  store i8 %25, i8* %26, align 1, !dbg !660
  %conv14 = zext i8 %25 to i32, !dbg !660
  %cmp15 = icmp eq i32 %conv14, 10, !dbg !660
  br i1 %cmp15, label %land.lhs.true, label %if.end20, !dbg !660

land.lhs.true:                                    ; preds = %do.body13
  %27 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !660
  %__modeflags17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %27, i32 0, i32 0, !dbg !660
  %28 = load i16* %__modeflags17, align 2, !dbg !660
  %conv18 = zext i16 %28 to i32, !dbg !660
  %and = and i32 %conv18, 256, !dbg !660
  %tobool = icmp ne i32 %and, 0, !dbg !660
  br i1 %tobool, label %do.end, label %if.end20, !dbg !660

if.end20:                                         ; preds = %land.lhs.true, %do.body13
  %29 = load i8** %s, align 8, !dbg !663
  %incdec.ptr = getelementptr inbounds i8* %29, i32 1, !dbg !663
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !663
  %30 = load i8** %buf.addr, align 8, !dbg !664
  %incdec.ptr21 = getelementptr inbounds i8* %30, i32 1, !dbg !664
  store i8* %incdec.ptr21, i8** %buf.addr, align 8, !dbg !664
  %31 = load i64* %stodo, align 8, !dbg !665
  %dec = add nsw i64 %31, -1, !dbg !665
  store i64 %dec, i64* %stodo, align 8, !dbg !665
  %tobool22 = icmp ne i64 %dec, 0, !dbg !665
  br i1 %tobool22, label %do.body13, label %do.end, !dbg !665

do.end:                                           ; preds = %land.lhs.true, %if.end20
  %32 = load i8** %s, align 8, !dbg !666
  %33 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !666
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %33, i32 0, i32 5, !dbg !666
  store i8* %32, i8** %__bufpos, align 8, !dbg !666
  %34 = load i8** %s, align 8, !dbg !667
  %35 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !667
  %__bufstart23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %35, i32 0, i32 3, !dbg !667
  %36 = load i8** %__bufstart23, align 8, !dbg !667
  %sub.ptr.lhs.cast24 = ptrtoint i8* %34 to i64, !dbg !667
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64, !dbg !667
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !667
  %37 = load i64* %todo, align 8, !dbg !667
  %sub27 = sub i64 %37, %sub.ptr.sub26, !dbg !667
  store i64 %sub27, i64* %todo, align 8, !dbg !667
  br label %if.end28, !dbg !668

if.end28:                                         ; preds = %do.end, %if.else
  %38 = load i64* %bufsize.addr, align 8, !dbg !669
  %39 = load i64* %todo, align 8, !dbg !669
  %sub29 = sub i64 %38, %39, !dbg !669
  store i64 %sub29, i64* %retval, !dbg !669
  br label %do.end32, !dbg !669

do.end32:                                         ; preds = %if.end28, %if.then
  %40 = load i64* %retval, !dbg !670
  ret i64 %40, !dbg !670
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @mempcpy(i8* noalias %s1, i8* noalias %s2, i64 %n) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %r1 = alloca i8*, align 8
  %r2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %s1.addr, align 8, !dbg !671
  store i8* %0, i8** %r1, align 8, !dbg !671
  %1 = load i8** %s2.addr, align 8, !dbg !672
  store i8* %1, i8** %r2, align 8, !dbg !672
  br label %while.cond, !dbg !673

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !673
  %tobool = icmp ne i64 %2, 0, !dbg !673
  br i1 %tobool, label %while.body, label %while.end, !dbg !673

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !674
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !674
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !674
  %4 = load i8* %3, align 1, !dbg !674
  %5 = load i8** %r1, align 8, !dbg !674
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !674
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !674
  store i8 %4, i8* %5, align 1, !dbg !674
  %6 = load i64* %n.addr, align 8, !dbg !676
  %dec = add i64 %6, -1, !dbg !676
  store i64 %dec, i64* %n.addr, align 8, !dbg !676
  br label %while.cond, !dbg !677

while.end:                                        ; preds = %while.cond
  %7 = load i8** %r1, align 8, !dbg !678
  ret i8* %7, !dbg !678
}

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #9 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !679
  br i1 %cmp, label %if.then, label %if.end, !dbg !679

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str34, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str236, i64 0, i64 0)) #17, !dbg !681
  unreachable, !dbg !681

if.end:                                           ; preds = %entry
  ret void, !dbg !682
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #9 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !683
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #14, !dbg !683
  %1 = load i32* %x, align 4, !dbg !684, !tbaa !685
  ret i32 %1, !dbg !684
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #9 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !689
  br i1 %cmp, label %if.end, label %if.then, !dbg !689

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str337, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #17, !dbg !691
  unreachable, !dbg !691

if.end:                                           ; preds = %entry
  ret void, !dbg !693
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #9 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !694
  br i1 %cmp, label %if.end, label %if.then, !dbg !694

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #17, !dbg !696
  unreachable, !dbg !696

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !697
  %cmp1 = icmp eq i32 %add, %end, !dbg !697
  br i1 %cmp1, label %return, label %if.else, !dbg !697

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !699
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #14, !dbg !699
  %cmp3 = icmp eq i32 %start, 0, !dbg !701
  %1 = load i32* %x, align 4, !dbg !703, !tbaa !685
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !701

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !703
  %conv6 = zext i1 %cmp5 to i64, !dbg !703
  call void @klee_assume(i64 %conv6) #14, !dbg !703
  br label %if.end14, !dbg !705

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !706
  %conv10 = zext i1 %cmp8 to i64, !dbg !706
  call void @klee_assume(i64 %conv10) #14, !dbg !706
  %2 = load i32* %x, align 4, !dbg !708, !tbaa !685
  %cmp11 = icmp slt i32 %2, %end, !dbg !708
  %conv13 = zext i1 %cmp11 to i64, !dbg !708
  call void @klee_assume(i64 %conv13) #14, !dbg !708
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !709, !tbaa !685
  br label %return, !dbg !709

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !710
}

declare void @klee_assume(i64) #11

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #9 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !711
  br i1 %cmp, label %return, label %if.end, !dbg !711

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !713
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !713

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !715
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !715

while.body.preheader:                             ; preds = %while.cond.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %0 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %scevgep37 = getelementptr i8* %src, i64 %0
  %scevgep = getelementptr i8* %dst, i64 %0
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep37, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end39 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep136 = getelementptr i8* %dst, i64 %index
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !715
  %wide.load = load <16 x i8>* %1, align 1, !dbg !715
  %next.gep.sum610 = or i64 %index, 16, !dbg !715
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !715
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !715
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !715
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !715
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !715
  %next.gep136.sum627 = or i64 %index, 16, !dbg !715
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !715
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !715
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !715
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !717

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %while.body.preheader
  %resume.val = phi i8* [ %src, %while.body.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val38 = phi i8* [ %dst, %while.body.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end39, %vector.body ]
  %resume.val40 = phi i64 [ %count, %while.body.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %return, label %while.body

while.body:                                       ; preds = %while.body, %middle.block
  %b.030 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val, %middle.block ]
  %a.029 = phi i8* [ %incdec.ptr3, %while.body ], [ %resume.val38, %middle.block ]
  %count.addr.028 = phi i64 [ %dec, %while.body ], [ %resume.val40, %middle.block ]
  %dec = add i64 %count.addr.028, -1, !dbg !715
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !715
  %8 = load i8* %b.030, align 1, !dbg !715, !tbaa !720
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !715
  store i8 %8, i8* %a.029, align 1, !dbg !715, !tbaa !720
  %tobool = icmp eq i64 %dec, 0, !dbg !715
  br i1 %tobool, label %return, label %while.body, !dbg !715, !llvm.loop !721

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !722
  %tobool832 = icmp eq i64 %count, 0, !dbg !724
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !724

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !725
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !722
  %n.vec241 = and i64 %count, -32
  %cmp.zero243 = icmp eq i64 %n.vec241, 0
  %9 = add i64 %count, -1
  br i1 %cmp.zero243, label %middle.block236, label %vector.memcheck250

vector.memcheck250:                               ; preds = %while.body9.lr.ph
  %scevgep245 = getelementptr i8* %src, i64 %9
  %scevgep244 = getelementptr i8* %dst, i64 %9
  %bound1247 = icmp ule i8* %scevgep245, %dst
  %bound0246 = icmp ule i8* %scevgep244, %src
  %memcheck.conflict249 = and i1 %bound0246, %bound1247
  %add.ptr5.sum = sub i64 %sub, %n.vec241
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %add.ptr5.sum
  %add.ptr.sum = sub i64 %sub, %n.vec241
  %rev.ptr.ind.end255 = getelementptr i8* %dst, i64 %add.ptr.sum
  %rev.ind.end257 = sub i64 %count, %n.vec241
  br i1 %memcheck.conflict249, label %middle.block236, label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.memcheck250
  %index238 = phi i64 [ %index.next260, %vector.body235 ], [ 0, %vector.memcheck250 ]
  %add.ptr5.sum465 = sub i64 %sub, %index238
  %add.ptr.sum497 = sub i64 %sub, %index238
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !724
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !724
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !724
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !724
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !724
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !724
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !724
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !724
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !724
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !724
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !724
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !724
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !724
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !724
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !724
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !724
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !724
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !724
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !724
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !724
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !726

middle.block236:                                  ; preds = %vector.body235, %vector.memcheck250, %while.body9.lr.ph
  %resume.val251 = phi i8* [ %add.ptr5, %while.body9.lr.ph ], [ %add.ptr5, %vector.memcheck250 ], [ %rev.ptr.ind.end, %vector.body235 ]
  %resume.val253 = phi i8* [ %add.ptr, %while.body9.lr.ph ], [ %add.ptr, %vector.memcheck250 ], [ %rev.ptr.ind.end255, %vector.body235 ]
  %resume.val256 = phi i64 [ %count, %while.body9.lr.ph ], [ %count, %vector.memcheck250 ], [ %rev.ind.end257, %vector.body235 ]
  %new.indc.resume.val258 = phi i64 [ 0, %while.body9.lr.ph ], [ 0, %vector.memcheck250 ], [ %n.vec241, %vector.body235 ]
  %cmp.n259 = icmp eq i64 %new.indc.resume.val258, %count
  br i1 %cmp.n259, label %return, label %while.body9

while.body9:                                      ; preds = %while.body9, %middle.block236
  %b.135 = phi i8* [ %incdec.ptr10, %while.body9 ], [ %resume.val251, %middle.block236 ]
  %a.134 = phi i8* [ %incdec.ptr11, %while.body9 ], [ %resume.val253, %middle.block236 ]
  %count.addr.133 = phi i64 [ %dec7, %while.body9 ], [ %resume.val256, %middle.block236 ]
  %dec7 = add i64 %count.addr.133, -1, !dbg !724
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !724
  %19 = load i8* %b.135, align 1, !dbg !724, !tbaa !720
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !724
  store i8 %19, i8* %a.134, align 1, !dbg !724, !tbaa !720
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !724
  br i1 %tobool8, label %return, label %while.body9, !dbg !724, !llvm.loop !727

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !728
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #4 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #5 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use
attributes #7 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #8 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #9 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin nounwind readonly }
attributes #16 = { nobuiltin nounwind readnone }
attributes #17 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !26, !70, !119, !150, !162, !170, !177, !182, !207, !214, !219, !225, !257, !265, !275, !285, !295, !307, !321, !335, !349}
!llvm.module.flags = !{!364, !365}
!llvm.ident = !{!366, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367, !367}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !23, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"fft.c", metadata !"/home/himeshi/Projects/workspace/FFTTransformScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !16, metadata !19, metadata !20, metadata !21, metadata !22}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 202, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @__user_main, null, null, metadata !2, i32 202} ; [ DW_TAG_subpr
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FFT_transform", metadata !"FFT_transform", metadata !"", i32 218, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*)* @FFT_transform, null, null, metad
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !12}
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FFT_transform_internal", metadata !"FFT_transform_internal", metadata !"", i32 222, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*, i32)* @FFT_tran
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null, metadata !8, metadata !12, metadata !8}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"int_log2", metadata !"int_log2", metadata !"", i32 295, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @int_log2, null, null, metadata !2, i32 295} ; [ 
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8, metadata !8}
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FFT_bitreverse", metadata !"FFT_bitreverse", metadata !"", i32 310, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*)* @FFT_bitreverse, null, null, m
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FFT_inverse", metadata !"FFT_inverse", metadata !"", i32 347, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*)* @FFT_inverse, null, null, metadata !
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rrsin", metadata !"rrsin", metadata !"", i32 363, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @rrsin, null, null, metadata !2, i32 363} ; [ DW_TAG_su
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sin_func", metadata !"sin_func", metadata !"", i32 371, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @sin_func, null, null, metadata !2, i32 371} ; [ 
!23 = metadata !{metadata !24, metadata !25}
!24 = metadata !{i32 786484, i32 0, null, metadata !"PI", metadata !"PI", metadata !"", metadata !5, i32 190, metadata !8, i32 0, i32 1, i32* @PI, null} ; [ DW_TAG_variable ] [PI] [line 190] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"M_TAU", metadata !"M_TAU", metadata !"", metadata !5, i32 192, metadata !8, i32 0, i32 1, i32* @M_TAU, null} ; [ DW_TAG_variable ] [M_TAU] [line 192] [def]
!26 = metadata !{i32 786449, metadata !27, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !28, metadata !56, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!27 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!28 = metadata !{metadata !29, metadata !33, metadata !34, metadata !45, metadata !48, metadata !55}
!29 = metadata !{i32 786478, metadata !27, metadata !30, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadata !2
!30 = metadata !{i32 786473, metadata !27}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!31 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null}
!33 = metadata !{i32 786478, metadata !27, metadata !30, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadata !2
!34 = metadata !{i32 786478, metadata !27, metadata !30, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, void ()
!35 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !37, metadata !8, metadata !40, metadata !43, metadata !43, metadata !43, metadata !44}
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !8, metadata !8, metadata !40, metadata !40}
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!42 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786478, metadata !27, metadata !30, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !46, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, null, m
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !8, metadata !8}
!48 = metadata !{i32 786478, metadata !49, metadata !50, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, null, 
!49 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!50 = metadata !{i32 786473, metadata !49}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !54, metadata !54}
!53 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!54 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!55 = metadata !{i32 786478, metadata !27, metadata !30, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2, i32 
!56 = metadata !{metadata !57, metadata !58, metadata !61, metadata !62, metadata !63, metadata !64, metadata !67, metadata !68, metadata !69}
!57 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !30, i32 52, metadata !44, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!58 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !30, i32 110, metadata !59, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110] [
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!61 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_short_name", metadata !"program_invocation_short_name", metadata !"", metadata !30, i32 112, metadata !59, i32 0, i32 1, i8** @program_invocation_short_name, null} ; [ DW_TAG_variabl
!62 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_name", metadata !"program_invocation_name", metadata !"", metadata !30, i32 113, metadata !59, i32 0, i32 1, i8** @program_invocation_name, null} ; [ DW_TAG_variable ] [program_invoc
!63 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !30, i32 125, metadata !40, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!64 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !30, i32 129, metadata !65, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!65 = metadata !{i32 786454, metadata !27, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!66 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{i32 786484, i32 0, metadata !29, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !30, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ] [b
!68 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !30, i32 244, metadata !43, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!69 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !30, i32 247, metadata !43, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!70 = metadata !{i32 786449, metadata !71, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !72, metadata !76, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!71 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!72 = metadata !{metadata !73, metadata !75}
!73 = metadata !{i32 786478, metadata !71, metadata !74, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, i32 
!74 = metadata !{i32 786473, metadata !71}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!75 = metadata !{i32 786478, metadata !71, metadata !74, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, i32 
!76 = metadata !{metadata !77, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!77 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !74, i32 154, metadata !78, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!79 = metadata !{i32 786454, metadata !71, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!80 = metadata !{i32 786451, metadata !81, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !82, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset
!81 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!82 = metadata !{metadata !83, metadata !85, metadata !90, metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !100, metadata !103}
!83 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!84 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!85 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !86} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !87, metadata !88, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!87 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!90 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!91 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!93 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!94 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!95 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!96 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!97 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!98 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !99} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!100 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !101} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!101 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !102, metadata !88, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!102 = metadata !{i32 786454, metadata !81, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!103 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !104} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!104 = metadata !{i32 786454, metadata !81, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!105 = metadata !{i32 786451, metadata !106, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !107, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!106 = metadata !{metadata !"./include/wchar.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!107 = metadata !{metadata !108, metadata !109}
!108 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!109 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!110 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !74, i32 155, metadata !78, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!111 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !74, i32 156, metadata !78, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!112 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !74, i32 159, metadata !78, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!113 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !74, i32 162, metadata !78, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!114 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !74, i32 180, metadata !78, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdio_
!115 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !74, i32 131, metadata !116, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_std
!116 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !79, metadata !117, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!119 = metadata !{i32 786449, metadata !120, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !121, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!120 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786478, metadata !120, metadata !123, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*)* @
!123 = metadata !{i32 786473, metadata !120}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!124 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !126, metadata !127}
!126 = metadata !{i32 786454, metadata !120, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!127 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!129 = metadata !{i32 786454, metadata !120, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!130 = metadata !{i32 786451, metadata !81, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !131, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !143, metadata !144}
!132 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!133 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !86} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!134 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!137 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!138 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!139 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!140 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!141 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !142} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!143 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !101} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!144 = metadata !{i32 786445, metadata !81, metadata !130, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !145} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!145 = metadata !{i32 786454, metadata !81, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!146 = metadata !{i32 786451, metadata !106, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !147, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!147 = metadata !{metadata !148, metadata !149}
!148 = metadata !{i32 786445, metadata !106, metadata !146, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!149 = metadata !{i32 786445, metadata !106, metadata !146, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!150 = metadata !{i32 786449, metadata !151, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !152, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!151 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 786478, metadata !151, metadata !154, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 
!154 = metadata !{i32 786473, metadata !151}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!155 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{metadata !44, metadata !157, metadata !158, metadata !161}
!157 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!160 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{i32 786454, metadata !151, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!162 = metadata !{i32 786449, metadata !163, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !164, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!163 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786478, metadata !163, metadata !166, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 
!166 = metadata !{i32 786473, metadata !163}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!167 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{metadata !44, metadata !44, metadata !8, metadata !169}
!169 = metadata !{i32 786454, metadata !163, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!170 = metadata !{i32 786449, metadata !171, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !172, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!171 = metadata !{metadata !"libc/string/strrchr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 786478, metadata !171, metadata !174, metadata !"strrchr", metadata !"strrchr", metadata !"", i32 17, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr, null, null, metadata !2, i32 18
!174 = metadata !{i32 786473, metadata !171}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!175 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!176 = metadata !{metadata !41, metadata !59, metadata !8}
!177 = metadata !{i32 786449, metadata !178, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !179, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!178 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!179 = metadata !{metadata !180}
!180 = metadata !{i32 786478, metadata !178, metadata !181, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW_
!181 = metadata !{i32 786473, metadata !178}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/isatty.c]
!182 = metadata !{i32 786449, metadata !183, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !184, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!183 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 786478, metadata !183, metadata !186, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !187, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.616*)* @tcgetattr, null, nu
!186 = metadata !{i32 786473, metadata !183}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!187 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!188 = metadata !{metadata !8, metadata !8, metadata !189}
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !190} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!190 = metadata !{i32 786451, metadata !191, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !192, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!191 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!192 = metadata !{metadata !193, metadata !195, metadata !196, metadata !197, metadata !198, metadata !200, metadata !204, metadata !206}
!193 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !194} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!194 = metadata !{i32 786454, metadata !191, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!195 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !194} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!196 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !194} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!197 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !194} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!198 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !199} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!199 = metadata !{i32 786454, metadata !191, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!200 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !201} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!201 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !199, metadata !202, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!204 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !205} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!205 = metadata !{i32 786454, metadata !191, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!206 = metadata !{i32 786445, metadata !191, metadata !190, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !205} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!207 = metadata !{i32 786449, metadata !208, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !209, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!208 = metadata !{metadata !"libc/misc/internals/__errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786478, metadata !208, metadata !211, metadata !"__errno_location", metadata !"__errno_location", metadata !"", i32 11, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_location, null, null,
!211 = metadata !{i32 786473, metadata !208}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__errno_location.c]
!212 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !12}
!214 = metadata !{i32 786449, metadata !215, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !216, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!215 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786478, metadata !215, metadata !218, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null,
!218 = metadata !{i32 786473, metadata !215}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__h_errno_location.c]
!219 = metadata !{i32 786449, metadata !220, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !221, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!220 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!221 = metadata !{metadata !222, metadata !224}
!222 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !223, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!223 = metadata !{i32 786473, metadata !220}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/errno.c]
!224 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !223, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!225 = metadata !{i32 786449, metadata !226, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !227, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!226 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786478, metadata !226, metadata !229, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*, i8*, i
!229 = metadata !{i32 786473, metadata !226}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!230 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{metadata !232, metadata !233, metadata !255, metadata !232}
!232 = metadata !{i32 786454, metadata !226, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!234 = metadata !{i32 786454, metadata !226, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!235 = metadata !{i32 786451, metadata !81, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !248, metadata !249}
!237 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!238 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !86} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!239 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!240 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!241 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!242 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!243 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!244 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!245 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !92} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!246 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !247} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!248 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !101} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!249 = metadata !{i32 786445, metadata !81, metadata !235, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !250} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!250 = metadata !{i32 786454, metadata !81, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!251 = metadata !{i32 786451, metadata !106, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !252, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!252 = metadata !{metadata !253, metadata !254}
!253 = metadata !{i32 786445, metadata !106, metadata !251, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!254 = metadata !{i32 786445, metadata !106, metadata !251, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!256 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!257 = metadata !{i32 786449, metadata !258, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !259, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!258 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!259 = metadata !{metadata !260}
!260 = metadata !{i32 786478, metadata !258, metadata !261, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !262, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2, i
!261 = metadata !{i32 786473, metadata !258}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!262 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!263 = metadata !{metadata !44, metadata !157, metadata !158, metadata !264}
!264 = metadata !{i32 786454, metadata !258, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!265 = metadata !{i32 786449, metadata !266, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !267, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!266 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!267 = metadata !{metadata !268}
!268 = metadata !{i32 786478, metadata !266, metadata !269, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !270, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!269 = metadata !{i32 786473, metadata !266}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!270 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = metadata !{null, metadata !272}
!272 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786689, metadata !268, metadata !"z", metadata !269, i32 16777228, metadata !272, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!275 = metadata !{i32 786449, metadata !276, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !277, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!276 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!277 = metadata !{metadata !278}
!278 = metadata !{i32 786478, metadata !276, metadata !279, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !282, i32 13}
!279 = metadata !{i32 786473, metadata !276}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c]
!280 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{metadata !8, metadata !59}
!282 = metadata !{metadata !283, metadata !284}
!283 = metadata !{i32 786689, metadata !278, metadata !"name", metadata !279, i32 16777229, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!284 = metadata !{i32 786688, metadata !278, metadata !"x", metadata !279, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!285 = metadata !{i32 786449, metadata !286, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !287, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!286 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!287 = metadata !{metadata !288}
!288 = metadata !{i32 786478, metadata !286, metadata !289, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!289 = metadata !{i32 786473, metadata !286}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!290 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{null, metadata !53, metadata !53}
!292 = metadata !{metadata !293, metadata !294}
!293 = metadata !{i32 786689, metadata !288, metadata !"bitWidth", metadata !289, i32 16777236, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!294 = metadata !{i32 786689, metadata !288, metadata !"shift", metadata !289, i32 33554452, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!295 = metadata !{i32 786449, metadata !296, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !297, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!296 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!297 = metadata !{metadata !298}
!298 = metadata !{i32 786478, metadata !296, metadata !299, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!299 = metadata !{i32 786473, metadata !296}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !8, metadata !8, metadata !8, metadata !59}
!302 = metadata !{metadata !303, metadata !304, metadata !305, metadata !306}
!303 = metadata !{i32 786689, metadata !298, metadata !"start", metadata !299, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!304 = metadata !{i32 786689, metadata !298, metadata !"end", metadata !299, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!305 = metadata !{i32 786689, metadata !298, metadata !"name", metadata !299, i32 50331661, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!306 = metadata !{i32 786688, metadata !298, metadata !"x", metadata !299, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!307 = metadata !{i32 786449, metadata !308, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !309, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!308 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!309 = metadata !{metadata !310}
!310 = metadata !{i32 786478, metadata !308, metadata !311, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !312, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !315, i32
!311 = metadata !{i32 786473, metadata !308}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c]
!312 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{metadata !44, metadata !44, metadata !159, metadata !314}
!314 = metadata !{i32 786454, metadata !308, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !320}
!316 = metadata !{i32 786689, metadata !310, metadata !"destaddr", metadata !311, i32 16777228, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!317 = metadata !{i32 786689, metadata !310, metadata !"srcaddr", metadata !311, i32 33554444, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!318 = metadata !{i32 786689, metadata !310, metadata !"len", metadata !311, i32 50331660, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!319 = metadata !{i32 786688, metadata !310, metadata !"dest", metadata !311, i32 13, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!320 = metadata !{i32 786688, metadata !310, metadata !"src", metadata !311, i32 14, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!321 = metadata !{i32 786449, metadata !322, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !323, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!322 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786478, metadata !322, metadata !325, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !329, 
!325 = metadata !{i32 786473, metadata !322}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!326 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!327 = metadata !{metadata !44, metadata !44, metadata !159, metadata !328}
!328 = metadata !{i32 786454, metadata !322, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!329 = metadata !{metadata !330, metadata !331, metadata !332, metadata !333, metadata !334}
!330 = metadata !{i32 786689, metadata !324, metadata !"dst", metadata !325, i32 16777228, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!331 = metadata !{i32 786689, metadata !324, metadata !"src", metadata !325, i32 33554444, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!332 = metadata !{i32 786689, metadata !324, metadata !"count", metadata !325, i32 50331660, metadata !328, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!333 = metadata !{i32 786688, metadata !324, metadata !"a", metadata !325, i32 13, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!334 = metadata !{i32 786688, metadata !324, metadata !"b", metadata !325, i32 14, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!335 = metadata !{i32 786449, metadata !336, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !337, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!336 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!337 = metadata !{metadata !338}
!338 = metadata !{i32 786478, metadata !336, metadata !339, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !340, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !343, 
!339 = metadata !{i32 786473, metadata !336}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c]
!340 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!341 = metadata !{metadata !44, metadata !44, metadata !159, metadata !342}
!342 = metadata !{i32 786454, metadata !336, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348}
!344 = metadata !{i32 786689, metadata !338, metadata !"destaddr", metadata !339, i32 16777227, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!345 = metadata !{i32 786689, metadata !338, metadata !"srcaddr", metadata !339, i32 33554443, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!346 = metadata !{i32 786689, metadata !338, metadata !"len", metadata !339, i32 50331659, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!347 = metadata !{i32 786688, metadata !338, metadata !"dest", metadata !339, i32 12, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!348 = metadata !{i32 786688, metadata !338, metadata !"src", metadata !339, i32 13, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!349 = metadata !{i32 786449, metadata !350, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !351, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!350 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!351 = metadata !{metadata !352}
!352 = metadata !{i32 786478, metadata !350, metadata !353, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !354, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !357, i32
!353 = metadata !{i32 786473, metadata !350}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c]
!354 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!355 = metadata !{metadata !44, metadata !44, metadata !8, metadata !356}
!356 = metadata !{i32 786454, metadata !350, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!357 = metadata !{metadata !358, metadata !359, metadata !360, metadata !361}
!358 = metadata !{i32 786689, metadata !352, metadata !"dst", metadata !353, i32 16777227, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!359 = metadata !{i32 786689, metadata !352, metadata !"s", metadata !353, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!360 = metadata !{i32 786689, metadata !352, metadata !"count", metadata !353, i32 50331659, metadata !356, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!361 = metadata !{i32 786688, metadata !352, metadata !"a", metadata !353, i32 12, metadata !362, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!362 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !363} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!363 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!364 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!365 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!366 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!367 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!368 = metadata !{i32 204, i32 0, metadata !4, null}
!369 = metadata !{i32 205, i32 0, metadata !4, null}
!370 = metadata !{i32 208, i32 0, metadata !4, null}
!371 = metadata !{i32 210, i32 0, metadata !4, null}
!372 = metadata !{i32 212, i32 0, metadata !4, null}
!373 = metadata !{i32 213, i32 0, metadata !4, null}
!374 = metadata !{i32 215, i32 0, metadata !4, null}
!375 = metadata !{i32 219, i32 0, metadata !9, null}
!376 = metadata !{i32 220, i32 0, metadata !9, null}
!377 = metadata !{i32 348, i32 0, metadata !20, null}
!378 = metadata !{i32 349, i32 0, metadata !20, null}
!379 = metadata !{i32 350, i32 0, metadata !20, null}
!380 = metadata !{i32 351, i32 0, metadata !20, null}
!381 = metadata !{i32 355, i32 0, metadata !20, null}
!382 = metadata !{i32 356, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !20, i32 356, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!384 = metadata !{i32 357, i32 0, metadata !383, null}
!385 = metadata !{i32 359, i32 0, metadata !20, null}
!386 = metadata !{i32 361, i32 0, metadata !20, null}
!387 = metadata !{i32 223, i32 0, metadata !13, null}
!388 = metadata !{i32 224, i32 0, metadata !13, null}
!389 = metadata !{i32 226, i32 0, metadata !13, null}
!390 = metadata !{i32 228, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !13, i32 228, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!392 = metadata !{i32 230, i32 0, metadata !13, null}
!393 = metadata !{i32 232, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !13, i32 232, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!395 = metadata !{i32 236, i32 0, metadata !13, null}
!396 = metadata !{i32 240, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !13, i32 240, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!398 = metadata !{i32 241, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !397, i32 240, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!400 = metadata !{i32 242, i32 0, metadata !399, null}
!401 = metadata !{i32 246, i32 0, metadata !399, null}
!402 = metadata !{i32 247, i32 0, metadata !399, null}
!403 = metadata !{i32 248, i32 0, metadata !399, null}
!404 = metadata !{i32 249, i32 0, metadata !399, null}
!405 = metadata !{i32 250, i32 0, metadata !399, null}
!406 = metadata !{i32 252, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !399, i32 252, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!408 = metadata !{i32 253, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !407, i32 252, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!410 = metadata !{i32 254, i32 0, metadata !409, null}
!411 = metadata !{i32 256, i32 0, metadata !409, null}
!412 = metadata !{i32 257, i32 0, metadata !409, null}
!413 = metadata !{i32 259, i32 0, metadata !409, null}
!414 = metadata !{i32 260, i32 0, metadata !409, null}
!415 = metadata !{i32 261, i32 0, metadata !409, null}
!416 = metadata !{i32 262, i32 0, metadata !409, null}
!417 = metadata !{i32 266, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !399, i32 266, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!419 = metadata !{i32 269, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !421, i32 268, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!421 = metadata !{i32 786443, metadata !1, metadata !418, i32 266, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!422 = metadata !{i32 270, i32 0, metadata !420, null}
!423 = metadata !{i32 271, i32 0, metadata !420, null}
!424 = metadata !{i32 272, i32 0, metadata !420, null}
!425 = metadata !{i32 274, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !421, i32 274, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!427 = metadata !{i32 275, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !426, i32 274, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!429 = metadata !{i32 276, i32 0, metadata !428, null}
!430 = metadata !{i32 278, i32 0, metadata !428, null}
!431 = metadata !{i32 279, i32 0, metadata !428, null}
!432 = metadata !{i32 281, i32 0, metadata !428, null}
!433 = metadata !{i32 282, i32 0, metadata !428, null}
!434 = metadata !{i32 284, i32 0, metadata !428, null}
!435 = metadata !{i32 285, i32 0, metadata !428, null}
!436 = metadata !{i32 286, i32 0, metadata !428, null}
!437 = metadata !{i32 287, i32 0, metadata !428, null}
!438 = metadata !{i32 293, i32 0, metadata !13, null}
!439 = metadata !{i32 296, i32 0, metadata !16, null}
!440 = metadata !{i32 297, i32 0, metadata !16, null}
!441 = metadata !{i32 298, i32 0, metadata !16, null}
!442 = metadata !{i32 299, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !16, i32 299, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!444 = metadata !{i32 300, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !443, i32 299, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!446 = metadata !{i32 303, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !16, i32 303, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!448 = metadata !{i32 305, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !447, i32 303, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!450 = metadata !{i32 307, i32 0, metadata !16, null}
!451 = metadata !{i32 312, i32 0, metadata !19, null}
!452 = metadata !{i32 313, i32 0, metadata !19, null}
!453 = metadata !{i32 314, i32 0, metadata !19, null}
!454 = metadata !{i32 315, i32 0, metadata !19, null}
!455 = metadata !{i32 316, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !19, i32 316, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!457 = metadata !{i32 319, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !456, i32 316, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!459 = metadata !{i32 322, i32 0, metadata !458, null}
!460 = metadata !{i32 325, i32 0, metadata !458, null}
!461 = metadata !{i32 327, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !458, i32 327, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!463 = metadata !{i32 328, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !462, i32 327, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!465 = metadata !{i32 329, i32 0, metadata !464, null}
!466 = metadata !{i32 330, i32 0, metadata !464, null}
!467 = metadata !{i32 331, i32 0, metadata !464, null}
!468 = metadata !{i32 332, i32 0, metadata !464, null}
!469 = metadata !{i32 333, i32 0, metadata !464, null}
!470 = metadata !{i32 334, i32 0, metadata !464, null}
!471 = metadata !{i32 336, i32 0, metadata !458, null}
!472 = metadata !{i32 338, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !458, i32 336, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!474 = metadata !{i32 341, i32 0, metadata !473, null}
!475 = metadata !{i32 342, i32 0, metadata !473, null}
!476 = metadata !{i32 343, i32 0, metadata !458, null}
!477 = metadata !{i32 345, i32 0, metadata !19, null}
!478 = metadata !{i32 372, i32 0, metadata !22, null}
!479 = metadata !{i32 373, i32 0, metadata !22, null}
!480 = metadata !{i32 365, i32 0, metadata !21, null}
!481 = metadata !{i32 366, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !21, i32 366, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/FFTTransformScimark/fft.c]
!483 = metadata !{i32 367, i32 0, metadata !482, null}
!484 = metadata !{i32 368, i32 0, metadata !21, null}
!485 = metadata !{i32 191, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !27, metadata !29, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!487 = metadata !{i32 193, i32 0, metadata !29, null}
!488 = metadata !{i32 197, i32 0, metadata !29, null}
!489 = metadata !{i32 238, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !27, metadata !29, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!491 = metadata !{i32 239, i32 0, metadata !490, null}
!492 = metadata !{i32 240, i32 0, metadata !29, null}
!493 = metadata !{i32 263, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !27, metadata !33, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!495 = metadata !{i32 264, i32 0, metadata !494, null}
!496 = metadata !{i32 266, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !27, metadata !33, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!498 = metadata !{i32 267, i32 0, metadata !497, null}
!499 = metadata !{i32 268, i32 0, metadata !33, null}
!500 = metadata !{i32 288, i32 0, metadata !34, null}
!501 = metadata !{i32 291, i32 0, metadata !34, null}
!502 = metadata !{i32 294, i32 0, metadata !34, null}
!503 = metadata !{i32 298, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !27, metadata !34, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!505 = metadata !{i32 300, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !27, metadata !504, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!507 = metadata !{i32 301, i32 0, metadata !506, null}
!508 = metadata !{i32 305, i32 0, metadata !34, null}
!509 = metadata !{i32 306, i32 0, metadata !34, null}
!510 = metadata !{i32 307, i32 0, metadata !34, null}
!511 = metadata !{i32 308, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !27, metadata !34, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!513 = metadata !{i32 311, i32 0, metadata !34, null}
!514 = metadata !{i32 312, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !27, metadata !34, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!516 = metadata !{i32 313, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !27, metadata !515, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!518 = metadata !{i32 314, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !27, metadata !517, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!520 = metadata !{i32 315, i32 0, metadata !519, null}
!521 = metadata !{i32 316, i32 0, metadata !515, null}
!522 = metadata !{i32 317, i32 0, metadata !515, null}
!523 = metadata !{i32 323, i32 0, metadata !34, null}
!524 = metadata !{i32 327, i32 0, metadata !34, null}
!525 = metadata !{i32 331, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !27, metadata !34, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!527 = metadata !{i32 336, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !27, metadata !526, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!529 = metadata !{i32 337, i32 0, metadata !528, null}
!530 = metadata !{i32 338, i32 0, metadata !528, null}
!531 = metadata !{i32 339, i32 0, metadata !528, null}
!532 = metadata !{i32 342, i32 0, metadata !34, null}
!533 = metadata !{i32 344, i32 0, metadata !34, null}
!534 = metadata !{i32 345, i32 0, metadata !34, null}
!535 = metadata !{i32 346, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !27, metadata !34, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!537 = metadata !{i32 347, i32 0, metadata !536, null}
!538 = metadata !{i32 349, i32 0, metadata !536, null}
!539 = metadata !{i32 354, i32 0, metadata !34, null}
!540 = metadata !{i32 370, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !27, metadata !34, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!542 = metadata !{i32 371, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !27, metadata !541, i32 370, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!544 = metadata !{i32 372, i32 0, metadata !543, null}
!545 = metadata !{i32 391, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !27, metadata !34, i32 391, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!547 = metadata !{i32 392, i32 0, metadata !546, null}
!548 = metadata !{i32 395, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !27, metadata !34, i32 395, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!550 = metadata !{i32 396, i32 0, metadata !549, null}
!551 = metadata !{i32 401, i32 0, metadata !34, null}
!552 = metadata !{i32 160, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !27, metadata !55} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!554 = metadata !{i32 161, i32 0, metadata !553, null}
!555 = metadata !{i32 162, i32 0, metadata !553, null}
!556 = metadata !{i32 163, i32 0, metadata !553, null}
!557 = metadata !{i32 165, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !27, metadata !553, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!559 = metadata !{i32 166, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !27, metadata !558, i32 165, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!561 = metadata !{i32 168, i32 0, metadata !553, null}
!562 = metadata !{i32 169, i32 0, metadata !553, null}
!563 = metadata !{i32 139, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !27, metadata !45, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!565 = metadata !{i32 143, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !27, metadata !564, i32 140, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!567 = metadata !{i32 147, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !27, metadata !566, i32 147, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!569 = metadata !{i32 148, i32 18, metadata !568, null}
!570 = metadata !{i32 150, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !27, metadata !568, i32 149, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!572 = metadata !{i32 153, i32 0, metadata !45, null}
!573 = metadata !{i32 56, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !49, metadata !48} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!575 = metadata !{i32 258, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !71, metadata !73, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!577 = metadata !{i32 261, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !71, metadata !579, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!579 = metadata !{i32 786443, metadata !71, metadata !576, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!580 = metadata !{i32 262, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !71, metadata !578, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!582 = metadata !{i32 263, i32 0, metadata !581, null}
!583 = metadata !{i32 274, i32 0, metadata !73, null}
!584 = metadata !{i32 280, i32 0, metadata !75, null}
!585 = metadata !{i32 282, i32 0, metadata !75, null}
!586 = metadata !{i32 283, i32 0, metadata !75, null}
!587 = metadata !{i32 284, i32 0, metadata !75, null}
!588 = metadata !{i32 291, i32 0, metadata !75, null}
!589 = metadata !{i32 23, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !120, metadata !122, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!591 = metadata !{i32 24, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !120, metadata !590, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!593 = metadata !{i32 25, i32 0, metadata !592, null}
!594 = metadata !{i32 26, i32 0, metadata !592, null}
!595 = metadata !{i32 28, i32 0, metadata !122, null}
!596 = metadata !{i32 20, i32 0, metadata !153, null}
!597 = metadata !{i32 21, i32 0, metadata !153, null}
!598 = metadata !{i32 28, i32 0, metadata !153, null}
!599 = metadata !{i32 29, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !151, metadata !153, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!601 = metadata !{i32 30, i32 0, metadata !600, null}
!602 = metadata !{i32 31, i32 0, metadata !600, null}
!603 = metadata !{i32 34, i32 0, metadata !153, null}
!604 = metadata !{i32 19, i32 0, metadata !165, null}
!605 = metadata !{i32 27, i32 0, metadata !165, null}
!606 = metadata !{i32 28, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !163, metadata !165, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!608 = metadata !{i32 29, i32 0, metadata !607, null}
!609 = metadata !{i32 30, i32 0, metadata !607, null}
!610 = metadata !{i32 32, i32 0, metadata !165, null}
!611 = metadata !{i32 21, i32 0, metadata !173, null}
!612 = metadata !{i32 22, i32 0, metadata !173, null}
!613 = metadata !{i32 23, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !171, metadata !615, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!615 = metadata !{i32 786443, metadata !171, metadata !173, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!616 = metadata !{i32 24, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !171, metadata !614, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!618 = metadata !{i32 25, i32 0, metadata !617, null}
!619 = metadata !{i32 26, i32 0, metadata !615, null}
!620 = metadata !{i32 28, i32 0, metadata !173, null}
!621 = metadata !{i32 30, i32 0, metadata !180, null}
!622 = metadata !{i32 43, i32 0, metadata !185, null}
!623 = metadata !{i32 45, i32 0, metadata !185, null}
!624 = metadata !{i32 46, i32 0, metadata !185, null}
!625 = metadata !{i32 47, i32 0, metadata !185, null}
!626 = metadata !{i32 48, i32 0, metadata !185, null}
!627 = metadata !{i32 49, i32 0, metadata !185, null}
!628 = metadata !{i32 61, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !183, metadata !630, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!630 = metadata !{i32 786443, metadata !183, metadata !185, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!631 = metadata !{i32 79, i32 0, metadata !185, null}
!632 = metadata !{i32 13, i32 0, metadata !210, null}
!633 = metadata !{i32 12, i32 0, metadata !217, null}
!634 = metadata !{i32 44, i32 0, metadata !228, null}
!635 = metadata !{i32 46, i32 0, metadata !228, null}
!636 = metadata !{i32 47, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !226, metadata !638, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!638 = metadata !{i32 786443, metadata !226, metadata !228, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!639 = metadata !{i32 49, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !226, metadata !637, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!641 = metadata !{i32 51, i32 0, metadata !638, null}
!642 = metadata !{i32 52, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !226, metadata !638, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!644 = metadata !{i32 62, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !226, metadata !643, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!646 = metadata !{i32 63, i32 0, metadata !645, null}
!647 = metadata !{i32 101, i32 0, metadata !638, null}
!648 = metadata !{i32 70, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !226, metadata !643, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!650 = metadata !{i32 73, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !226, metadata !649, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!652 = metadata !{i32 76, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !226, metadata !654, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!654 = metadata !{i32 786443, metadata !226, metadata !651, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!655 = metadata !{i32 77, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !226, metadata !653, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!657 = metadata !{i32 78, i32 0, metadata !656, null}
!658 = metadata !{i32 80, i32 0, metadata !654, null}
!659 = metadata !{i32 82, i32 0, metadata !654, null}
!660 = metadata !{i32 83, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !226, metadata !662, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!662 = metadata !{i32 786443, metadata !226, metadata !654, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!663 = metadata !{i32 88, i32 0, metadata !662, null}
!664 = metadata !{i32 89, i32 0, metadata !662, null}
!665 = metadata !{i32 90, i32 0, metadata !662, null}
!666 = metadata !{i32 92, i32 0, metadata !654, null}
!667 = metadata !{i32 94, i32 0, metadata !654, null}
!668 = metadata !{i32 95, i32 0, metadata !654, null}
!669 = metadata !{i32 99, i32 0, metadata !649, null}
!670 = metadata !{i32 102, i32 0, metadata !228, null}
!671 = metadata !{i32 22, i32 0, metadata !260, null}
!672 = metadata !{i32 23, i32 0, metadata !260, null}
!673 = metadata !{i32 30, i32 0, metadata !260, null}
!674 = metadata !{i32 31, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !258, metadata !260, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!676 = metadata !{i32 32, i32 0, metadata !675, null}
!677 = metadata !{i32 33, i32 0, metadata !675, null}
!678 = metadata !{i32 36, i32 0, metadata !260, null}
!679 = metadata !{i32 13, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !266, metadata !268, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!681 = metadata !{i32 14, i32 0, metadata !680, null}
!682 = metadata !{i32 15, i32 0, metadata !268, null}
!683 = metadata !{i32 15, i32 0, metadata !278, null}
!684 = metadata !{i32 16, i32 0, metadata !278, null}
!685 = metadata !{metadata !686, metadata !686, i64 0}
!686 = metadata !{metadata !"int", metadata !687, i64 0}
!687 = metadata !{metadata !"omnipotent char", metadata !688, i64 0}
!688 = metadata !{metadata !"Simple C/C++ TBAA"}
!689 = metadata !{i32 21, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !286, metadata !288, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!691 = metadata !{i32 27, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !286, metadata !690, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!693 = metadata !{i32 29, i32 0, metadata !288, null}
!694 = metadata !{i32 16, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !296, metadata !298, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!696 = metadata !{i32 17, i32 0, metadata !695, null}
!697 = metadata !{i32 19, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !296, metadata !298, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!699 = metadata !{i32 22, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !296, metadata !698, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!701 = metadata !{i32 25, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !296, metadata !700, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!703 = metadata !{i32 26, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !296, metadata !702, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!705 = metadata !{i32 27, i32 0, metadata !704, null}
!706 = metadata !{i32 28, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !296, metadata !702, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!708 = metadata !{i32 29, i32 0, metadata !707, null}
!709 = metadata !{i32 32, i32 0, metadata !700, null}
!710 = metadata !{i32 34, i32 0, metadata !298, null}
!711 = metadata !{i32 16, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !322, metadata !324, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!713 = metadata !{i32 19, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !322, metadata !324, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!715 = metadata !{i32 20, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !322, metadata !714, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!717 = metadata !{metadata !717, metadata !718, metadata !719}
!718 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!719 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!720 = metadata !{metadata !687, metadata !687, i64 0}
!721 = metadata !{metadata !721, metadata !718, metadata !719}
!722 = metadata !{i32 22, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !322, metadata !714, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!724 = metadata !{i32 24, i32 0, metadata !723, null}
!725 = metadata !{i32 23, i32 0, metadata !723, null}
!726 = metadata !{metadata !726, metadata !718, metadata !719}
!727 = metadata !{metadata !727, metadata !718, metadata !719}
!728 = metadata !{i32 28, i32 0, metadata !324, null}
