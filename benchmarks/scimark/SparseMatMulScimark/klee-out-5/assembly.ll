; ModuleID = './sparsematmul.bc'
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
@.str1 = private unnamed_addr constant [13 x i8] c"__arr32__val\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"x_err\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"val_err\00", align 1
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
  %nz = alloca i32, align 4
  %2 = alloca i8*
  %nr = alloca i32, align 4
  %anz = alloca i32, align 4
  %r = alloca i32, align 4
  %cycles = alloca i32, align 4
  %rowr = alloca i32, align 4
  %step = alloca i32, align 4
  %i = alloca i32, align 4
  %3 = alloca i32
  store i32 0, i32* %1
  store i32 10, i32* %N, align 4, !dbg !357
  store i32 50, i32* %nz, align 4, !dbg !358
  %4 = load i32* %N, align 4, !dbg !359
  %5 = zext i32 %4 to i64, !dbg !359
  store i8* null, i8** %2, !dbg !359
  %6 = alloca i32, i64 %5, align 16, !dbg !359
  %7 = load i32* %N, align 4, !dbg !359
  %8 = zext i32 %7 to i64, !dbg !359
  %9 = alloca i32, i64 %8, align 16, !dbg !359
  %10 = load i32* %nz, align 4, !dbg !360
  %11 = load i32* %N, align 4, !dbg !360
  %int_cast_to_i64 = zext i32 %11 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !360
  %12 = sdiv i32 %10, %11, !dbg !360
  store i32 %12, i32* %nr, align 4, !dbg !360
  %13 = load i32* %nr, align 4, !dbg !361
  %14 = load i32* %N, align 4, !dbg !361
  %15 = mul nsw i32 %13, %14, !dbg !361
  store i32 %15, i32* %anz, align 4, !dbg !361
  %16 = load i32* %anz, align 4, !dbg !362
  %17 = zext i32 %16 to i64, !dbg !362
  %18 = alloca i32, i64 %17, align 16, !dbg !362
  %19 = load i32* %nz, align 4, !dbg !363
  %20 = zext i32 %19 to i64, !dbg !363
  %21 = alloca i32, i64 %20, align 16, !dbg !363
  %22 = load i32* %N, align 4, !dbg !364
  %23 = add nsw i32 %22, 1, !dbg !364
  %24 = zext i32 %23 to i64, !dbg !364
  %25 = alloca i32, i64 %24, align 16, !dbg !364
  store i32 0, i32* %r, align 4, !dbg !365
  store i32 1, i32* %cycles, align 4, !dbg !366
  %26 = getelementptr inbounds i32* %25, i64 0, !dbg !367
  store i32 0, i32* %26, align 4, !dbg !367
  %27 = bitcast i32* %6 to i8*, !dbg !368
  call void @klee_make_symbolic(i8* %27, i64 40, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)), !dbg !368
  %28 = bitcast i32* %18 to i8*, !dbg !369
  call void @klee_make_symbolic(i8* %28, i64 200, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0)), !dbg !369
  %29 = bitcast i32* %6 to i8*, !dbg !370
  call void @klee_track_error(i8* %29, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !370
  %30 = bitcast i32* %18 to i8*, !dbg !371
  call void @klee_track_error(i8* %30, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)), !dbg !371
  store i32 0, i32* %r, align 4, !dbg !372
  br label %31, !dbg !372

; <label>:31                                      ; preds = %69, %0
  %32 = load i32* %r, align 4, !dbg !372
  %33 = load i32* %N, align 4, !dbg !372
  %34 = icmp slt i32 %32, %33, !dbg !372
  br i1 %34, label %35, label %72, !dbg !372

; <label>:35                                      ; preds = %31
  %36 = load i32* %r, align 4, !dbg !374
  %37 = sext i32 %36 to i64, !dbg !374
  %38 = getelementptr inbounds i32* %25, i64 %37, !dbg !374
  %39 = load i32* %38, align 4, !dbg !374
  store i32 %39, i32* %rowr, align 4, !dbg !374
  %40 = load i32* %r, align 4, !dbg !376
  %41 = load i32* %nr, align 4, !dbg !376
  %int_cast_to_i641 = zext i32 %41 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !376
  %42 = sdiv i32 %40, %41, !dbg !376
  store i32 %42, i32* %step, align 4, !dbg !376
  store i32 0, i32* %i, align 4, !dbg !377
  %43 = load i32* %rowr, align 4, !dbg !378
  %44 = load i32* %nr, align 4, !dbg !378
  %45 = add nsw i32 %43, %44, !dbg !378
  %46 = load i32* %r, align 4, !dbg !378
  %47 = add nsw i32 %46, 1, !dbg !378
  %48 = sext i32 %47 to i64, !dbg !378
  %49 = getelementptr inbounds i32* %25, i64 %48, !dbg !378
  store i32 %45, i32* %49, align 4, !dbg !378
  %50 = load i32* %step, align 4, !dbg !379
  %51 = icmp slt i32 %50, 1, !dbg !379
  br i1 %51, label %52, label %53, !dbg !379

; <label>:52                                      ; preds = %35
  store i32 1, i32* %step, align 4, !dbg !381
  br label %53, !dbg !381

; <label>:53                                      ; preds = %52, %35
  store i32 0, i32* %i, align 4, !dbg !382
  br label %54, !dbg !382

; <label>:54                                      ; preds = %58, %53
  %55 = load i32* %i, align 4, !dbg !382
  %56 = load i32* %nr, align 4, !dbg !382
  %57 = icmp slt i32 %55, %56, !dbg !382
  br i1 %57, label %58, label %69, !dbg !382

; <label>:58                                      ; preds = %54
  %59 = load i32* %i, align 4, !dbg !384
  %60 = load i32* %step, align 4, !dbg !384
  %61 = mul nsw i32 %59, %60, !dbg !384
  %62 = load i32* %rowr, align 4, !dbg !384
  %63 = load i32* %i, align 4, !dbg !384
  %64 = add nsw i32 %62, %63, !dbg !384
  %65 = sext i32 %64 to i64, !dbg !384
  %66 = getelementptr inbounds i32* %21, i64 %65, !dbg !384
  store i32 %61, i32* %66, align 4, !dbg !384
  %67 = load i32* %i, align 4, !dbg !382
  %68 = add nsw i32 %67, 1, !dbg !382
  store i32 %68, i32* %i, align 4, !dbg !382
  br label %54, !dbg !382

; <label>:69                                      ; preds = %54
  %70 = load i32* %r, align 4, !dbg !372
  %71 = add nsw i32 %70, 1, !dbg !372
  store i32 %71, i32* %r, align 4, !dbg !372
  br label %31, !dbg !372

; <label>:72                                      ; preds = %31
  %73 = load i32* %N, align 4, !dbg !385
  %74 = load i32* %cycles, align 4, !dbg !385
  call void @SparseCompRow_matmult(i32 %73, i32* %9, i32* %18, i32* %25, i32* %21, i32* %6, i32 %74), !dbg !385
  store i32 0, i32* %1, !dbg !386
  store i32 1, i32* %3
  %75 = load i8** %2, !dbg !386
  %76 = load i32* %1, !dbg !387
  ret i32 %76, !dbg !387
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_track_error(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @SparseCompRow_matmult(i32 %M, i32* %y, i32* %val, i32* %row, i32* %col, i32* %x, i32 %NUM_ITERATIONS) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %reps = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %rowR = alloca i32, align 4
  %rowRp1 = alloca i32, align 4
  store i32 %M, i32* %1, align 4
  store i32* %y, i32** %2, align 8
  store i32* %val, i32** %3, align 8
  store i32* %row, i32** %4, align 8
  store i32* %col, i32** %5, align 8
  store i32* %x, i32** %6, align 8
  store i32 %NUM_ITERATIONS, i32* %7, align 4
  store i32 0, i32* %reps, align 4, !dbg !388
  br label %8, !dbg !388

; <label>:8                                       ; preds = %62, %0
  %9 = load i32* %reps, align 4, !dbg !388
  %10 = load i32* %7, align 4, !dbg !388
  %11 = icmp slt i32 %9, %10, !dbg !388
  br i1 %11, label %12, label %65, !dbg !388

; <label>:12                                      ; preds = %8
  store i32 0, i32* %r, align 4, !dbg !390
  br label %13, !dbg !390

; <label>:13                                      ; preds = %54, %12
  %14 = load i32* %r, align 4, !dbg !390
  %15 = load i32* %1, align 4, !dbg !390
  %16 = icmp slt i32 %14, %15, !dbg !390
  br i1 %16, label %17, label %62, !dbg !390

; <label>:17                                      ; preds = %13
  store i32 0, i32* %sum, align 4, !dbg !393
  %18 = load i32* %r, align 4, !dbg !395
  %19 = sext i32 %18 to i64, !dbg !395
  %20 = load i32** %4, align 8, !dbg !395
  %21 = getelementptr inbounds i32* %20, i64 %19, !dbg !395
  %22 = load i32* %21, align 4, !dbg !395
  store i32 %22, i32* %rowR, align 4, !dbg !395
  %23 = load i32* %r, align 4, !dbg !396
  %24 = add nsw i32 %23, 1, !dbg !396
  %25 = sext i32 %24 to i64, !dbg !396
  %26 = load i32** %4, align 8, !dbg !396
  %27 = getelementptr inbounds i32* %26, i64 %25, !dbg !396
  %28 = load i32* %27, align 4, !dbg !396
  store i32 %28, i32* %rowRp1, align 4, !dbg !396
  %29 = load i32* %rowR, align 4, !dbg !397
  store i32 %29, i32* %i, align 4, !dbg !397
  br label %30, !dbg !397

; <label>:30                                      ; preds = %34, %17
  %31 = load i32* %i, align 4, !dbg !397
  %32 = load i32* %rowRp1, align 4, !dbg !397
  %33 = icmp slt i32 %31, %32, !dbg !397
  br i1 %33, label %34, label %54, !dbg !397

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4, !dbg !399
  %36 = sext i32 %35 to i64, !dbg !399
  %37 = load i32** %5, align 8, !dbg !399
  %38 = getelementptr inbounds i32* %37, i64 %36, !dbg !399
  %39 = load i32* %38, align 4, !dbg !399
  %40 = sext i32 %39 to i64, !dbg !399
  %41 = load i32** %6, align 8, !dbg !399
  %42 = getelementptr inbounds i32* %41, i64 %40, !dbg !399
  %43 = load i32* %42, align 4, !dbg !399
  %44 = load i32* %i, align 4, !dbg !399
  %45 = sext i32 %44 to i64, !dbg !399
  %46 = load i32** %3, align 8, !dbg !399
  %47 = getelementptr inbounds i32* %46, i64 %45, !dbg !399
  %48 = load i32* %47, align 4, !dbg !399
  %49 = mul nsw i32 %43, %48, !dbg !399
  %50 = load i32* %sum, align 4, !dbg !399
  %51 = add nsw i32 %50, %49, !dbg !399
  store i32 %51, i32* %sum, align 4, !dbg !399
  %52 = load i32* %i, align 4, !dbg !397
  %53 = add nsw i32 %52, 1, !dbg !397
  store i32 %53, i32* %i, align 4, !dbg !397
  br label %30, !dbg !397

; <label>:54                                      ; preds = %30
  %55 = load i32* %sum, align 4, !dbg !400
  %56 = load i32* %r, align 4, !dbg !400
  %57 = sext i32 %56 to i64, !dbg !400
  %58 = load i32** %2, align 8, !dbg !400
  %59 = getelementptr inbounds i32* %58, i64 %57, !dbg !400
  store i32 %55, i32* %59, align 4, !dbg !400
  %60 = load i32* %r, align 4, !dbg !390
  %61 = add nsw i32 %60, 1, !dbg !390
  store i32 %61, i32* %r, align 4, !dbg !390
  br label %13, !dbg !390

; <label>:62                                      ; preds = %13
  %63 = load i32* %reps, align 4, !dbg !388
  %64 = add nsw i32 %63, 1, !dbg !388
  store i32 %64, i32* %reps, align 4, !dbg !388
  br label %8, !dbg !388

; <label>:65                                      ; preds = %8
  ret void, !dbg !401
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
entry:
  %0 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !402
  %tobool = icmp ne i32 %0, 0, !dbg !402
  br i1 %tobool, label %if.end3, label %if.end, !dbg !402

if.end:                                           ; preds = %entry
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !404
  %inc = add nsw i32 %1, 1, !dbg !404
  store i32 %inc, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !404
  store i64 4096, i64* @__pagesize, align 8, !dbg !405
  %tobool1 = icmp ne i64 1, 0, !dbg !406
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !406

if.then2:                                         ; preds = %if.end
  call void @_stdio_init() #13, !dbg !408
  br label %if.end3, !dbg !408

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !409
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !410
  %cmp = icmp ne void ()* %0, null, !dbg !410
  br i1 %cmp, label %if.then, label %if.end, !dbg !410

if.then:                                          ; preds = %entry
  %1 = load void ()** @__app_fini, align 8, !dbg !412
  call void %1() #13, !dbg !412
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then, %entry
  %2 = load void ()** @__rtld_fini, align 8, !dbg !413
  %cmp1 = icmp ne void ()* %2, null, !dbg !413
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !413

if.then2:                                         ; preds = %if.end
  %3 = load void ()** @__rtld_fini, align 8, !dbg !415
  call void %3() #13, !dbg !415
  br label %if.end3, !dbg !415

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !416
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
  %0 = load i8** %stack_end.addr, align 8, !dbg !417
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !417
  %1 = load void ()** %rtld_fini.addr, align 8, !dbg !418
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !418
  %2 = load i32* %argc.addr, align 4, !dbg !419
  %add = add nsw i32 %2, 1, !dbg !419
  %idxprom = sext i32 %add to i64, !dbg !419
  %3 = load i8*** %argv.addr, align 8, !dbg !419
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !419
  store i8** %arrayidx, i8*** @__environ, align 8, !dbg !419
  %4 = load i8*** @__environ, align 8, !dbg !420
  %5 = bitcast i8** %4 to i8*, !dbg !420
  %6 = load i8*** %argv.addr, align 8, !dbg !420
  %7 = load i8** %6, align 8, !dbg !420
  %cmp = icmp eq i8* %5, %7, !dbg !420
  br i1 %cmp, label %if.then, label %if.end, !dbg !420

if.then:                                          ; preds = %entry
  %8 = load i32* %argc.addr, align 4, !dbg !422
  %idxprom1 = sext i32 %8 to i64, !dbg !422
  %9 = load i8*** %argv.addr, align 8, !dbg !422
  %arrayidx2 = getelementptr inbounds i8** %9, i64 %idxprom1, !dbg !422
  store i8** %arrayidx2, i8*** @__environ, align 8, !dbg !422
  br label %if.end, !dbg !424

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !425
  %10 = bitcast %struct.Elf64_auxv_t* %arraydecay to i8*, !dbg !425
  %call = call i8* @memset(i8* %10, i32 0, i64 240) #14, !dbg !425
  %11 = load i8*** @__environ, align 8, !dbg !426
  %12 = bitcast i8** %11 to i64*, !dbg !426
  store i64* %12, i64** %aux_dat, align 8, !dbg !426
  br label %while.cond, !dbg !427

while.cond:                                       ; preds = %while.cond, %if.end
  %13 = load i64** %aux_dat, align 8, !dbg !427
  %14 = load i64* %13, align 8, !dbg !427
  %tobool = icmp ne i64 %14, 0, !dbg !427
  %15 = load i64** %aux_dat, align 8, !dbg !428
  %incdec.ptr = getelementptr inbounds i64* %15, i32 1, !dbg !428
  store i64* %incdec.ptr, i64** %aux_dat, align 8, !dbg !428
  br i1 %tobool, label %while.cond, label %while.cond4, !dbg !427

while.cond4:                                      ; preds = %while.cond, %if.end12
  %16 = load i64** %aux_dat, align 8, !dbg !430
  %17 = load i64* %16, align 8, !dbg !430
  %tobool5 = icmp ne i64 %17, 0, !dbg !430
  br i1 %tobool5, label %while.body6, label %while.end13, !dbg !430

while.body6:                                      ; preds = %while.cond4
  %18 = load i64** %aux_dat, align 8, !dbg !431
  %19 = bitcast i64* %18 to %struct.Elf64_auxv_t*, !dbg !431
  store %struct.Elf64_auxv_t* %19, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !431
  %20 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !433
  %a_type = getelementptr inbounds %struct.Elf64_auxv_t* %20, i32 0, i32 0, !dbg !433
  %21 = load i64* %a_type, align 8, !dbg !433
  %cmp7 = icmp ule i64 %21, 14, !dbg !433
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !433

if.then8:                                         ; preds = %while.body6
  %22 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !435
  %a_type9 = getelementptr inbounds %struct.Elf64_auxv_t* %22, i32 0, i32 0, !dbg !435
  %23 = load i64* %a_type9, align 8, !dbg !435
  %arrayidx10 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %23, !dbg !435
  %24 = bitcast %struct.Elf64_auxv_t* %arrayidx10 to i8*, !dbg !435
  %25 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !435
  %26 = bitcast %struct.Elf64_auxv_t* %25 to i8*, !dbg !435
  %call11 = call i8* @memcpy(i8* %24, i8* %26, i64 16) #14, !dbg !435
  br label %if.end12, !dbg !437

if.end12:                                         ; preds = %if.then8, %while.body6
  %27 = load i64** %aux_dat, align 8, !dbg !438
  %add.ptr = getelementptr inbounds i64* %27, i64 2, !dbg !438
  store i64* %add.ptr, i64** %aux_dat, align 8, !dbg !438
  br label %while.cond4, !dbg !439

while.end13:                                      ; preds = %while.cond4
  call void @__uClibc_init() #13, !dbg !440
  %arrayidx14 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !441
  %a_un = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx14, i32 0, i32 1, !dbg !441
  %a_val = bitcast %union.anon.120* %a_un to i64*, !dbg !441
  %28 = load i64* %a_val, align 8, !dbg !441
  %tobool15 = icmp ne i64 %28, 0, !dbg !441
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !441

cond.true:                                        ; preds = %while.end13
  %arrayidx16 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !441
  %a_un17 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx16, i32 0, i32 1, !dbg !441
  %a_val18 = bitcast %union.anon.120* %a_un17 to i64*, !dbg !441
  %29 = load i64* %a_val18, align 8, !dbg !441
  br label %cond.end, !dbg !441

cond.end:                                         ; preds = %while.end13, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 4096, %while.end13 ], !dbg !441
  store i64 %cond, i64* @__pagesize, align 8, !dbg !441
  %arrayidx19 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !442
  %a_un20 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx19, i32 0, i32 1, !dbg !442
  %a_val21 = bitcast %union.anon.120* %a_un20 to i64*, !dbg !442
  %30 = load i64* %a_val21, align 8, !dbg !442
  %cmp22 = icmp eq i64 %30, -1, !dbg !442
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !442

land.lhs.true:                                    ; preds = %cond.end
  %call23 = call i32 @__check_suid() #13, !dbg !442
  %tobool24 = icmp ne i32 %call23, 0, !dbg !442
  br i1 %tobool24, label %if.then45, label %lor.lhs.false, !dbg !442

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %arrayidx25 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !442
  %a_un26 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx25, i32 0, i32 1, !dbg !442
  %a_val27 = bitcast %union.anon.120* %a_un26 to i64*, !dbg !442
  %31 = load i64* %a_val27, align 8, !dbg !442
  %cmp28 = icmp ne i64 %31, -1, !dbg !442
  br i1 %cmp28, label %land.lhs.true29, label %if.end46, !dbg !442

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !442
  %a_un31 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx30, i32 0, i32 1, !dbg !442
  %a_val32 = bitcast %union.anon.120* %a_un31 to i64*, !dbg !442
  %32 = load i64* %a_val32, align 8, !dbg !442
  %arrayidx33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !442
  %a_un34 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx33, i32 0, i32 1, !dbg !442
  %a_val35 = bitcast %union.anon.120* %a_un34 to i64*, !dbg !442
  %33 = load i64* %a_val35, align 8, !dbg !442
  %cmp36 = icmp ne i64 %32, %33, !dbg !442
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !442

lor.lhs.false37:                                  ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !442
  %a_un39 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx38, i32 0, i32 1, !dbg !442
  %a_val40 = bitcast %union.anon.120* %a_un39 to i64*, !dbg !442
  %34 = load i64* %a_val40, align 8, !dbg !442
  %arrayidx41 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !442
  %a_un42 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx41, i32 0, i32 1, !dbg !442
  %a_val43 = bitcast %union.anon.120* %a_un42 to i64*, !dbg !442
  %35 = load i64* %a_val43, align 8, !dbg !442
  %cmp44 = icmp ne i64 %34, %35, !dbg !442
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !442

if.then45:                                        ; preds = %lor.lhs.false37, %land.lhs.true29, %land.lhs.true
  call void @__check_one_fd(i32 0, i32 131072) #13, !dbg !444
  call void @__check_one_fd(i32 1, i32 131074) #13, !dbg !446
  call void @__check_one_fd(i32 2, i32 131074) #13, !dbg !447
  br label %if.end46, !dbg !448

if.end46:                                         ; preds = %if.then45, %lor.lhs.false37, %lor.lhs.false
  %36 = load i8*** %argv.addr, align 8, !dbg !449
  %37 = load i8** %36, align 8, !dbg !449
  store i8* %37, i8** @__uclibc_progname, align 8, !dbg !449
  %38 = load i8*** %argv.addr, align 8, !dbg !450
  %39 = load i8** %38, align 8, !dbg !450
  store i8* %39, i8** @program_invocation_name, align 8, !dbg !450
  %40 = load i8*** %argv.addr, align 8, !dbg !451
  %41 = load i8** %40, align 8, !dbg !451
  %call47 = call i8* @strrchr(i8* %41, i32 47) #15, !dbg !451
  store i8* %call47, i8** @program_invocation_short_name, align 8, !dbg !451
  %42 = load i8** @program_invocation_short_name, align 8, !dbg !452
  %cmp48 = icmp ne i8* %42, null, !dbg !452
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !452

if.then49:                                        ; preds = %if.end46
  %43 = load i8** @program_invocation_short_name, align 8, !dbg !454
  %incdec.ptr50 = getelementptr inbounds i8* %43, i32 1, !dbg !454
  store i8* %incdec.ptr50, i8** @program_invocation_short_name, align 8, !dbg !454
  br label %if.end51, !dbg !454

if.else:                                          ; preds = %if.end46
  %44 = load i8** @program_invocation_name, align 8, !dbg !455
  store i8* %44, i8** @program_invocation_short_name, align 8, !dbg !455
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %45 = load void ()** %app_fini.addr, align 8, !dbg !456
  store void ()* %45, void ()** @__app_fini, align 8, !dbg !456
  %46 = load void ()** %app_init.addr, align 8, !dbg !457
  %cmp52 = icmp ne void ()* %46, null, !dbg !457
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !457

if.then53:                                        ; preds = %if.end51
  %47 = load void ()** %app_init.addr, align 8, !dbg !459
  call void %47() #13, !dbg !459
  br label %if.end54, !dbg !461

if.end54:                                         ; preds = %if.then53, %if.end51
  %tobool55 = icmp ne i64 1, 0, !dbg !462
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !462

if.then56:                                        ; preds = %if.end54
  %call57 = call i32* @__errno_location() #16, !dbg !464
  store i32 0, i32* %call57, align 4, !dbg !464
  br label %if.end58, !dbg !464

if.end58:                                         ; preds = %if.then56, %if.end54
  %tobool60 = icmp ne i64 1, 0, !dbg !465
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !465

if.then61:                                        ; preds = %if.end58
  %call62 = call i32* @__h_errno_location() #16, !dbg !467
  store i32 0, i32* %call62, align 4, !dbg !467
  br label %if.end63, !dbg !467

if.end63:                                         ; preds = %if.then61, %if.end58
  %48 = load i32 (i32, i8**, i8**)** %main.addr, align 8, !dbg !468
  %49 = load i32* %argc.addr, align 4, !dbg !468
  %50 = load i8*** %argv.addr, align 8, !dbg !468
  %51 = load i8*** @__environ, align 8, !dbg !468
  %call64 = call i32 %48(i32 %49, i8** %50, i8** %51) #13, !dbg !468
  call void @exit(i32 %call64) #17, !dbg !468
  unreachable, !dbg !468
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @fcntl(i32, i32, ...) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat.119*) #6

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind
declare i32 @getuid() #6

; Function Attrs: nounwind
declare i32 @geteuid() #6

; Function Attrs: nounwind
declare i32 @getgid() #6

; Function Attrs: nounwind
declare i32 @getegid() #6

; Function Attrs: nounwind uwtable
define internal i32 @__check_suid() #0 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca i32, align 4
  %euid = alloca i32, align 4
  %gid = alloca i32, align 4
  %egid = alloca i32, align 4
  %call = call i32 @getuid() #14, !dbg !469
  store i32 %call, i32* %uid, align 4, !dbg !469
  %call1 = call i32 @geteuid() #14, !dbg !471
  store i32 %call1, i32* %euid, align 4, !dbg !471
  %call2 = call i32 @getgid() #14, !dbg !472
  store i32 %call2, i32* %gid, align 4, !dbg !472
  %call3 = call i32 @getegid() #14, !dbg !473
  store i32 %call3, i32* %egid, align 4, !dbg !473
  %0 = load i32* %uid, align 4, !dbg !474
  %1 = load i32* %euid, align 4, !dbg !474
  %cmp = icmp eq i32 %0, %1, !dbg !474
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !474

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %gid, align 4, !dbg !474
  %3 = load i32* %egid, align 4, !dbg !474
  %cmp4 = icmp eq i32 %2, %3, !dbg !474
  br i1 %cmp4, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !476
  br label %return, !dbg !476

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, !dbg !478
  br label %return, !dbg !478

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval, !dbg !479
  ret i32 %4, !dbg !479
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
  %0 = load i32* %fd.addr, align 4, !dbg !480
  %call = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) #13, !dbg !480
  %cmp = icmp eq i32 %call, -1, !dbg !480
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !480

land.rhs:                                         ; preds = %entry
  %call1 = call i32* @__errno_location() #16, !dbg !480
  %1 = load i32* %call1, align 4, !dbg !480
  %cmp2 = icmp eq i32 %1, 9, !dbg !480
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
  %3 = load i32* %mode.addr, align 4, !dbg !482
  %call4 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i32 %3) #13, !dbg !482
  store i32 %call4, i32* %nullfd, align 4, !dbg !482
  %4 = load i32* %nullfd, align 4, !dbg !484
  %5 = load i32* %fd.addr, align 4, !dbg !484
  %cmp5 = icmp ne i32 %4, %5, !dbg !484
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !484

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %fd.addr, align 4, !dbg !484
  %call7 = call i32 @fstat(i32 %6, %struct.stat.119* %st) #14, !dbg !484
  %tobool8 = icmp ne i32 %call7, 0, !dbg !484
  br i1 %tobool8, label %if.then16, label %lor.lhs.false9, !dbg !484

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 3, !dbg !484
  %7 = load i32* %st_mode, align 4, !dbg !484
  %and = and i32 %7, 61440, !dbg !484
  %cmp10 = icmp eq i32 %and, 8192, !dbg !484
  br i1 %cmp10, label %lor.lhs.false12, label %if.then16, !dbg !484

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %st_rdev = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 7, !dbg !484
  %8 = load i64* %st_rdev, align 8, !dbg !484
  %call13 = call i64 @gnu_dev_makedev(i32 1, i32 3) #14, !dbg !486
  %cmp14 = icmp ne i64 %8, %call13, !dbg !486
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !486

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %if.then
  call void @abort() #17, !dbg !487
  unreachable, !dbg !487

if.end17:                                         ; preds = %lor.lhs.false12, %land.end
  ret void, !dbg !489
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #7 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %0 = load i32* %__minor.addr, align 4, !dbg !490
  %and = and i32 %0, 255, !dbg !490
  %1 = load i32* %__major.addr, align 4, !dbg !490
  %and1 = and i32 %1, 4095, !dbg !490
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !490
  %shl = shl i32 %and1, 8, !dbg !490
  %or = or i32 %and, %shl, !dbg !490
  %conv = zext i32 %or to i64, !dbg !490
  %2 = load i32* %__minor.addr, align 4, !dbg !490
  %and2 = and i32 %2, -256, !dbg !490
  %conv3 = zext i32 %and2 to i64, !dbg !490
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !490
  %shl4 = shl i64 %conv3, 12, !dbg !490
  %or5 = or i64 %conv, %shl4, !dbg !490
  %3 = load i32* %__major.addr, align 4, !dbg !490
  %and6 = and i32 %3, -4096, !dbg !490
  %conv7 = zext i32 %and6 to i64, !dbg !490
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !490
  %shl8 = shl i64 %conv7, 32, !dbg !490
  %or9 = or i64 %or5, %shl8, !dbg !490
  ret i64 %or9, !dbg !490
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
entry:
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, align 8, !dbg !492
  store %struct.__STDIO_FILE_STRUCT.376* %0, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !492
  br label %for.cond, !dbg !492

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !492
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT.376* %1, null, !dbg !492
  br i1 %tobool, label %for.body, label %for.end, !dbg !492

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !494
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 0, !dbg !494
  %3 = load i16* %__modeflags, align 2, !dbg !494
  %conv = zext i16 %3 to i32, !dbg !494
  %and = and i32 %conv, 64, !dbg !494
  %tobool1 = icmp ne i32 %and, 0, !dbg !494
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !494

if.then:                                          ; preds = %for.body
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !497
  %call = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* %4) #13, !dbg !497
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !492
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 9, !dbg !492
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %__nextopen, align 8, !dbg !492
  store %struct.__STDIO_FILE_STRUCT.376* %6, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !492
  br label %for.cond, !dbg !492

for.end:                                          ; preds = %for.cond
  ret void, !dbg !500
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
entry:
  %old_errno = alloca i32, align 4
  %0 = load i32* @errno, align 4, !dbg !501
  store i32 %0, i32* %old_errno, align 4, !dbg !501
  %call = call i32 @isatty(i32 0) #14, !dbg !502
  %sub = sub nsw i32 1, %call, !dbg !502
  %mul = mul i32 %sub, 256, !dbg !502
  %1 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !502
  %conv = zext i16 %1 to i32, !dbg !502
  %xor = xor i32 %conv, %mul, !dbg !502
  %conv1 = trunc i32 %xor to i16, !dbg !502
  store i16 %conv1, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !502
  %call2 = call i32 @isatty(i32 1) #14, !dbg !503
  %sub3 = sub nsw i32 1, %call2, !dbg !503
  %mul4 = mul i32 %sub3, 256, !dbg !503
  %2 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !503
  %conv5 = zext i16 %2 to i32, !dbg !503
  %xor6 = xor i32 %conv5, %mul4, !dbg !503
  %conv7 = trunc i32 %xor6 to i16, !dbg !503
  store i16 %conv7, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !503
  %3 = load i32* %old_errno, align 4, !dbg !504
  store i32 %3, i32* @errno, align 4, !dbg !504
  ret void, !dbg !505
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* noalias %stream) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.376* %stream, %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !506
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %0, i32 0, i32 5, !dbg !506
  %1 = load i8** %__bufpos, align 8, !dbg !506
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !506
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 3, !dbg !506
  %3 = load i8** %__bufstart, align 8, !dbg !506
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !506
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !506
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !506
  store i64 %sub.ptr.sub, i64* %bufsize, align 8, !dbg !506
  %cmp = icmp ne i64 %sub.ptr.sub, 0, !dbg !506
  br i1 %cmp, label %if.then, label %if.end, !dbg !506

if.then:                                          ; preds = %entry
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !508
  %__bufstart1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %4, i32 0, i32 3, !dbg !508
  %5 = load i8** %__bufstart1, align 8, !dbg !508
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !508
  %__bufpos2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %6, i32 0, i32 5, !dbg !508
  store i8* %5, i8** %__bufpos2, align 8, !dbg !508
  %7 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !510
  %8 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !510
  %__bufstart3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %8, i32 0, i32 3, !dbg !510
  %9 = load i8** %__bufstart3, align 8, !dbg !510
  %10 = load i64* %bufsize, align 8, !dbg !510
  %call = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.376* %7, i8* %9, i64 %10) #13, !dbg !510
  br label %if.end, !dbg !511

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !512
  %__bufpos4 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %11, i32 0, i32 5, !dbg !512
  %12 = load i8** %__bufpos4, align 8, !dbg !512
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !512
  %__bufstart5 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 3, !dbg !512
  %14 = load i8** %__bufstart5, align 8, !dbg !512
  %sub.ptr.lhs.cast6 = ptrtoint i8* %12 to i64, !dbg !512
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64, !dbg !512
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !512
  ret i64 %sub.ptr.sub8, !dbg !512
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
  %0 = load i8** %s1.addr, align 8, !dbg !513
  store i8* %0, i8** %r1, align 8, !dbg !513
  %1 = load i8** %s2.addr, align 8, !dbg !514
  store i8* %1, i8** %r2, align 8, !dbg !514
  br label %while.cond, !dbg !515

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !515
  %tobool = icmp ne i64 %2, 0, !dbg !515
  br i1 %tobool, label %while.body, label %while.end, !dbg !515

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !516
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !516
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !516
  %4 = load i8* %3, align 1, !dbg !516
  %5 = load i8** %r1, align 8, !dbg !516
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !516
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !516
  store i8 %4, i8* %5, align 1, !dbg !516
  %6 = load i64* %n.addr, align 8, !dbg !518
  %dec = add i64 %6, -1, !dbg !518
  store i64 %dec, i64* %n.addr, align 8, !dbg !518
  br label %while.cond, !dbg !519

while.end:                                        ; preds = %while.cond
  %7 = load i8** %s1.addr, align 8, !dbg !520
  ret i8* %7, !dbg !520
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
  %0 = load i8** %s.addr, align 8, !dbg !521
  store i8* %0, i8** %p, align 8, !dbg !521
  br label %while.cond, !dbg !522

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %n.addr, align 8, !dbg !522
  %tobool = icmp ne i64 %1, 0, !dbg !522
  br i1 %tobool, label %while.body, label %while.end, !dbg !522

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4, !dbg !523
  %conv = trunc i32 %2 to i8, !dbg !523
  %3 = load i8** %p, align 8, !dbg !523
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !523
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !523
  store i8 %conv, i8* %3, align 1, !dbg !523
  %4 = load i64* %n.addr, align 8, !dbg !525
  %dec = add i64 %4, -1, !dbg !525
  store i64 %dec, i64* %n.addr, align 8, !dbg !525
  br label %while.cond, !dbg !526

while.end:                                        ; preds = %while.cond
  %5 = load i8** %s.addr, align 8, !dbg !527
  ret i8* %5, !dbg !527
}

; Function Attrs: nounwind readonly uwtable
define i8* @strrchr(i8* %s, i32 %c) #8 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* null, i8** %p, align 8, !dbg !528
  br label %do.body, !dbg !529

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8** %s.addr, align 8, !dbg !530
  %1 = load i8* %0, align 1, !dbg !530
  %conv = sext i8 %1 to i32, !dbg !530
  %2 = load i32* %c.addr, align 4, !dbg !530
  %conv1 = trunc i32 %2 to i8, !dbg !530
  %conv2 = sext i8 %conv1 to i32, !dbg !530
  %cmp = icmp eq i32 %conv, %conv2, !dbg !530
  br i1 %cmp, label %if.then, label %do.cond, !dbg !530

if.then:                                          ; preds = %do.body
  %3 = load i8** %s.addr, align 8, !dbg !533
  store i8* %3, i8** %p, align 8, !dbg !533
  br label %do.cond, !dbg !535

do.cond:                                          ; preds = %do.body, %if.then
  %4 = load i8** %s.addr, align 8, !dbg !536
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1, !dbg !536
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !536
  %5 = load i8* %4, align 1, !dbg !536
  %tobool = icmp ne i8 %5, 0, !dbg !536
  br i1 %tobool, label %do.body, label %do.end, !dbg !536

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !537
  ret i8* %6, !dbg !537
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %term = alloca %struct.termios.616, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !538
  %call = call i32 @tcgetattr(i32 %0, %struct.termios.616* %term) #14, !dbg !538
  %cmp = icmp eq i32 %call, 0, !dbg !538
  %conv = zext i1 %cmp to i32, !dbg !538
  ret i32 %conv, !dbg !538
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
  %0 = load i32* %fd.addr, align 4, !dbg !539
  %call = call i32 (i32, i64, ...)* @ioctl(i32 %0, i64 21505, %struct.__kernel_termios* %k_termios) #14, !dbg !539
  store i32 %call, i32* %retval1, align 4, !dbg !539
  %c_iflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !540
  %1 = load i32* %c_iflag, align 4, !dbg !540
  %2 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !540
  %c_iflag2 = getelementptr inbounds %struct.termios.616* %2, i32 0, i32 0, !dbg !540
  store i32 %1, i32* %c_iflag2, align 4, !dbg !540
  %c_oflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !541
  %3 = load i32* %c_oflag, align 4, !dbg !541
  %4 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !541
  %c_oflag3 = getelementptr inbounds %struct.termios.616* %4, i32 0, i32 1, !dbg !541
  store i32 %3, i32* %c_oflag3, align 4, !dbg !541
  %c_cflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !542
  %5 = load i32* %c_cflag, align 4, !dbg !542
  %6 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !542
  %c_cflag4 = getelementptr inbounds %struct.termios.616* %6, i32 0, i32 2, !dbg !542
  store i32 %5, i32* %c_cflag4, align 4, !dbg !542
  %c_lflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !543
  %7 = load i32* %c_lflag, align 4, !dbg !543
  %8 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !543
  %c_lflag5 = getelementptr inbounds %struct.termios.616* %8, i32 0, i32 3, !dbg !543
  store i32 %7, i32* %c_lflag5, align 4, !dbg !543
  %c_line = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !544
  %9 = load i8* %c_line, align 1, !dbg !544
  %10 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !544
  %c_line6 = getelementptr inbounds %struct.termios.616* %10, i32 0, i32 4, !dbg !544
  store i8 %9, i8* %c_line6, align 1, !dbg !544
  %11 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !545
  %c_cc = getelementptr inbounds %struct.termios.616* %11, i32 0, i32 5, !dbg !545
  %arrayidx = getelementptr inbounds [32 x i8]* %c_cc, i32 0, i64 0, !dbg !545
  %c_cc7 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !545
  %arrayidx8 = getelementptr inbounds [19 x i8]* %c_cc7, i32 0, i64 0, !dbg !545
  %call9 = call i8* @mempcpy(i8* %arrayidx, i8* %arrayidx8, i64 19) #14, !dbg !545
  %call10 = call i8* @memset(i8* %call9, i32 0, i64 13) #14, !dbg !545
  %12 = load i32* %retval1, align 4, !dbg !548
  ret i32 %12, !dbg !548
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #6

; Function Attrs: nounwind readnone uwtable
define weak i32* @__errno_location() #9 {
entry:
  ret i32* @errno, !dbg !549
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #9 {
entry:
  ret i32* @h_errno, !dbg !550
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
  %0 = load i64* %bufsize.addr, align 8, !dbg !551
  store i64 %0, i64* %todo, align 8, !dbg !551
  br label %do.body, !dbg !552

do.body:                                          ; preds = %if.then3, %entry
  %1 = load i64* %todo, align 8, !dbg !553
  %cmp = icmp eq i64 %1, 0, !dbg !553
  br i1 %cmp, label %if.then, label %if.end, !dbg !553

if.then:                                          ; preds = %do.body
  %2 = load i64* %bufsize.addr, align 8, !dbg !556
  store i64 %2, i64* %retval, !dbg !556
  br label %do.end32, !dbg !556

if.end:                                           ; preds = %do.body
  %3 = load i64* %todo, align 8, !dbg !558
  %cmp1 = icmp ule i64 %3, 9223372036854775807, !dbg !558
  %4 = load i64* %todo, align 8, !dbg !558
  %cond = select i1 %cmp1, i64 %4, i64 9223372036854775807, !dbg !558
  store i64 %cond, i64* %stodo, align 8, !dbg !558
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !559
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 2, !dbg !559
  %6 = load i32* %__filedes, align 4, !dbg !559
  %7 = load i8** %buf.addr, align 8, !dbg !559
  %8 = load i64* %stodo, align 8, !dbg !559
  %call = call i64 @write(i32 %6, i8* %7, i64 %8) #13, !dbg !559
  store i64 %call, i64* %rv, align 8, !dbg !559
  %cmp2 = icmp sge i64 %call, 0, !dbg !559
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !559

if.then3:                                         ; preds = %if.end
  %9 = load i64* %rv, align 8, !dbg !561
  %10 = load i64* %todo, align 8, !dbg !561
  %sub = sub i64 %10, %9, !dbg !561
  store i64 %sub, i64* %todo, align 8, !dbg !561
  %11 = load i64* %rv, align 8, !dbg !563
  %12 = load i8** %buf.addr, align 8, !dbg !563
  %add.ptr = getelementptr inbounds i8* %12, i64 %11, !dbg !563
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !563
  br label %do.body, !dbg !564

if.else:                                          ; preds = %if.end
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !565
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 0, !dbg !565
  %14 = load i16* %__modeflags, align 2, !dbg !565
  %conv = zext i16 %14 to i32, !dbg !565
  %or = or i32 %conv, 8, !dbg !565
  %conv4 = trunc i32 %or to i16, !dbg !565
  store i16 %conv4, i16* %__modeflags, align 2, !dbg !565
  %15 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !567
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %15, i32 0, i32 4, !dbg !567
  %16 = load i8** %__bufend, align 8, !dbg !567
  %17 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !567
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %17, i32 0, i32 3, !dbg !567
  %18 = load i8** %__bufstart, align 8, !dbg !567
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !567
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !567
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !567
  store i64 %sub.ptr.sub, i64* %stodo, align 8, !dbg !567
  %cmp5 = icmp ne i64 %sub.ptr.sub, 0, !dbg !567
  br i1 %cmp5, label %if.then7, label %if.end28, !dbg !567

if.then7:                                         ; preds = %if.else
  %19 = load i64* %stodo, align 8, !dbg !569
  %20 = load i64* %todo, align 8, !dbg !569
  %cmp8 = icmp ugt i64 %19, %20, !dbg !569
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !569

if.then10:                                        ; preds = %if.then7
  %21 = load i64* %todo, align 8, !dbg !572
  store i64 %21, i64* %stodo, align 8, !dbg !572
  br label %if.end11, !dbg !574

if.end11:                                         ; preds = %if.then10, %if.then7
  %22 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !575
  %__bufstart12 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %22, i32 0, i32 3, !dbg !575
  %23 = load i8** %__bufstart12, align 8, !dbg !575
  store i8* %23, i8** %s, align 8, !dbg !575
  br label %do.body13, !dbg !576

do.body13:                                        ; preds = %if.end20, %if.end11
  %24 = load i8** %buf.addr, align 8, !dbg !577
  %25 = load i8* %24, align 1, !dbg !577
  %26 = load i8** %s, align 8, !dbg !577
  store i8 %25, i8* %26, align 1, !dbg !577
  %conv14 = zext i8 %25 to i32, !dbg !577
  %cmp15 = icmp eq i32 %conv14, 10, !dbg !577
  br i1 %cmp15, label %land.lhs.true, label %if.end20, !dbg !577

land.lhs.true:                                    ; preds = %do.body13
  %27 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !577
  %__modeflags17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %27, i32 0, i32 0, !dbg !577
  %28 = load i16* %__modeflags17, align 2, !dbg !577
  %conv18 = zext i16 %28 to i32, !dbg !577
  %and = and i32 %conv18, 256, !dbg !577
  %tobool = icmp ne i32 %and, 0, !dbg !577
  br i1 %tobool, label %do.end, label %if.end20, !dbg !577

if.end20:                                         ; preds = %land.lhs.true, %do.body13
  %29 = load i8** %s, align 8, !dbg !580
  %incdec.ptr = getelementptr inbounds i8* %29, i32 1, !dbg !580
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !580
  %30 = load i8** %buf.addr, align 8, !dbg !581
  %incdec.ptr21 = getelementptr inbounds i8* %30, i32 1, !dbg !581
  store i8* %incdec.ptr21, i8** %buf.addr, align 8, !dbg !581
  %31 = load i64* %stodo, align 8, !dbg !582
  %dec = add nsw i64 %31, -1, !dbg !582
  store i64 %dec, i64* %stodo, align 8, !dbg !582
  %tobool22 = icmp ne i64 %dec, 0, !dbg !582
  br i1 %tobool22, label %do.body13, label %do.end, !dbg !582

do.end:                                           ; preds = %land.lhs.true, %if.end20
  %32 = load i8** %s, align 8, !dbg !583
  %33 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !583
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %33, i32 0, i32 5, !dbg !583
  store i8* %32, i8** %__bufpos, align 8, !dbg !583
  %34 = load i8** %s, align 8, !dbg !584
  %35 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !584
  %__bufstart23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %35, i32 0, i32 3, !dbg !584
  %36 = load i8** %__bufstart23, align 8, !dbg !584
  %sub.ptr.lhs.cast24 = ptrtoint i8* %34 to i64, !dbg !584
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64, !dbg !584
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !584
  %37 = load i64* %todo, align 8, !dbg !584
  %sub27 = sub i64 %37, %sub.ptr.sub26, !dbg !584
  store i64 %sub27, i64* %todo, align 8, !dbg !584
  br label %if.end28, !dbg !585

if.end28:                                         ; preds = %do.end, %if.else
  %38 = load i64* %bufsize.addr, align 8, !dbg !586
  %39 = load i64* %todo, align 8, !dbg !586
  %sub29 = sub i64 %38, %39, !dbg !586
  store i64 %sub29, i64* %retval, !dbg !586
  br label %do.end32, !dbg !586

do.end32:                                         ; preds = %if.end28, %if.then
  %40 = load i64* %retval, !dbg !587
  ret i64 %40, !dbg !587
}

declare i64 @write(i32, i8*, i64) #3

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
  %0 = load i8** %s1.addr, align 8, !dbg !588
  store i8* %0, i8** %r1, align 8, !dbg !588
  %1 = load i8** %s2.addr, align 8, !dbg !589
  store i8* %1, i8** %r2, align 8, !dbg !589
  br label %while.cond, !dbg !590

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !590
  %tobool = icmp ne i64 %2, 0, !dbg !590
  br i1 %tobool, label %while.body, label %while.end, !dbg !590

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !591
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !591
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !591
  %4 = load i8* %3, align 1, !dbg !591
  %5 = load i8** %r1, align 8, !dbg !591
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !591
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !591
  store i8 %4, i8* %5, align 1, !dbg !591
  %6 = load i64* %n.addr, align 8, !dbg !593
  %dec = add i64 %6, -1, !dbg !593
  store i64 %dec, i64* %n.addr, align 8, !dbg !593
  br label %while.cond, !dbg !594

while.end:                                        ; preds = %while.cond
  %7 = load i8** %r1, align 8, !dbg !595
  ret i8* %7, !dbg !595
}

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #10 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !596
  br i1 %cmp, label %if.then, label %if.end, !dbg !596

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str34, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str236, i64 0, i64 0)) #17, !dbg !598
  unreachable, !dbg !598

if.end:                                           ; preds = %entry
  ret void, !dbg !599
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #11

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #10 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !600
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #14, !dbg !600
  %1 = load i32* %x, align 4, !dbg !601, !tbaa !602
  ret i32 %1, !dbg !601
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #10 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !606
  br i1 %cmp, label %if.end, label %if.then, !dbg !606

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str337, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #17, !dbg !608
  unreachable, !dbg !608

if.end:                                           ; preds = %entry
  ret void, !dbg !610
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #10 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !611
  br i1 %cmp, label %if.end, label %if.then, !dbg !611

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #17, !dbg !613
  unreachable, !dbg !613

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !614
  %cmp1 = icmp eq i32 %add, %end, !dbg !614
  br i1 %cmp1, label %return, label %if.else, !dbg !614

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !616
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #14, !dbg !616
  %cmp3 = icmp eq i32 %start, 0, !dbg !618
  %1 = load i32* %x, align 4, !dbg !620, !tbaa !602
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !618

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !620
  %conv6 = zext i1 %cmp5 to i64, !dbg !620
  call void @klee_assume(i64 %conv6) #14, !dbg !620
  br label %if.end14, !dbg !622

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !623
  %conv10 = zext i1 %cmp8 to i64, !dbg !623
  call void @klee_assume(i64 %conv10) #14, !dbg !623
  %2 = load i32* %x, align 4, !dbg !625, !tbaa !602
  %cmp11 = icmp slt i32 %2, %end, !dbg !625
  %conv13 = zext i1 %cmp11 to i64, !dbg !625
  call void @klee_assume(i64 %conv13) #14, !dbg !625
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !626, !tbaa !602
  br label %return, !dbg !626

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !627
}

declare void @klee_assume(i64) #12

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #10 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !628
  br i1 %cmp, label %return, label %if.end, !dbg !628

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !630
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !630

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !632
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !632

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !632
  %wide.load = load <16 x i8>* %1, align 1, !dbg !632
  %next.gep.sum610 = or i64 %index, 16, !dbg !632
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !632
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !632
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !632
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !632
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !632
  %next.gep136.sum627 = or i64 %index, 16, !dbg !632
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !632
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !632
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !632
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !634

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
  %dec = add i64 %count.addr.028, -1, !dbg !632
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !632
  %8 = load i8* %b.030, align 1, !dbg !632, !tbaa !637
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !632
  store i8 %8, i8* %a.029, align 1, !dbg !632, !tbaa !637
  %tobool = icmp eq i64 %dec, 0, !dbg !632
  br i1 %tobool, label %return, label %while.body, !dbg !632, !llvm.loop !638

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !639
  %tobool832 = icmp eq i64 %count, 0, !dbg !641
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !641

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !642
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !639
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !641
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !641
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !641
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !641
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !641
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !641
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !641
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !641
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !641
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !641
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !641
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !641
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !641
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !641
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !641
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !641
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !641
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !641
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !641
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !641
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !643

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !641
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !641
  %19 = load i8* %b.135, align 1, !dbg !641, !tbaa !637
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !641
  store i8 %19, i8* %a.134, align 1, !dbg !641, !tbaa !637
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !641
  br i1 %tobool8, label %return, label %while.body9, !dbg !641, !llvm.loop !644

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !645
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #6 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #7 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use
attributes #8 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #9 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #10 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin nounwind readonly }
attributes #16 = { nobuiltin nounwind readnone }
attributes #17 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !13, !57, !106, !137, !149, !157, !164, !171, !196, !203, !208, !214, !246, !254, !264, !274, !284, !296, !310, !324, !338}
!llvm.module.flags = !{!353, !354}
!llvm.ident = !{!355, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356, !356}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himeshi
!1 = metadata !{metadata !"sparsematmul.c", metadata !"/home/himeshi/Projects/workspace/SparseMatMulScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 91, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @__user_main, null, null, metadata !2, i32 91} ; [ DW_TAG_subprog
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SparseCompRow_matmult", metadata !"SparseCompRow_matmult", metadata !"", i32 135, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*, i32*, i32*, i32*, 
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !8}
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!13 = metadata !{i32 786449, metadata !14, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !15, metadata !43, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!14 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!15 = metadata !{metadata !16, metadata !20, metadata !21, metadata !32, metadata !35, metadata !42}
!16 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadata !2
!17 = metadata !{i32 786473, metadata !14}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null}
!20 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadata !2
!21 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, void ()
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24, metadata !8, metadata !27, metadata !30, metadata !30, metadata !30, metadata !31}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !8, metadata !8, metadata !27, metadata !27}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, null, m
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !8, metadata !8}
!35 = metadata !{i32 786478, metadata !36, metadata !37, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !38, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, null, 
!36 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!37 = metadata !{i32 786473, metadata !36}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !41}
!40 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!41 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!42 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2, i32 
!43 = metadata !{metadata !44, metadata !45, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !55, metadata !56}
!44 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !17, i32 52, metadata !31, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!45 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !17, i32 110, metadata !46, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110] [
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!48 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_short_name", metadata !"program_invocation_short_name", metadata !"", metadata !17, i32 112, metadata !46, i32 0, i32 1, i8** @program_invocation_short_name, null} ; [ DW_TAG_variabl
!49 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_name", metadata !"program_invocation_name", metadata !"", metadata !17, i32 113, metadata !46, i32 0, i32 1, i8** @program_invocation_name, null} ; [ DW_TAG_variable ] [program_invoc
!50 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !17, i32 125, metadata !27, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!51 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !17, i32 129, metadata !52, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!52 = metadata !{i32 786454, metadata !14, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!53 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!54 = metadata !{i32 786484, i32 0, metadata !16, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !17, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ] [b
!55 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !17, i32 244, metadata !30, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!56 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !17, i32 247, metadata !30, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!57 = metadata !{i32 786449, metadata !58, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !59, metadata !63, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!58 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!59 = metadata !{metadata !60, metadata !62}
!60 = metadata !{i32 786478, metadata !58, metadata !61, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, i32 
!61 = metadata !{i32 786473, metadata !58}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!62 = metadata !{i32 786478, metadata !58, metadata !61, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, i32 
!63 = metadata !{metadata !64, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!64 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !61, i32 154, metadata !65, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!66 = metadata !{i32 786454, metadata !58, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!67 = metadata !{i32 786451, metadata !68, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset
!68 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!69 = metadata !{metadata !70, metadata !72, metadata !77, metadata !78, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !87, metadata !90}
!70 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!71 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !73} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !74, metadata !75, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!77 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!78 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!80 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!81 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!82 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!83 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!84 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!85 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !86} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!87 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !88} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !89, metadata !75, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!89 = metadata !{i32 786454, metadata !68, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!90 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !91} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!91 = metadata !{i32 786454, metadata !68, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!92 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!93 = metadata !{metadata !"./include/wchar.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!94 = metadata !{metadata !95, metadata !96}
!95 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!96 = metadata !{i32 786445, metadata !93, metadata !92, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!97 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !61, i32 155, metadata !65, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!98 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !61, i32 156, metadata !65, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!99 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !61, i32 159, metadata !65, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!100 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !61, i32 162, metadata !65, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!101 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !61, i32 180, metadata !65, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdio_
!102 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !61, i32 131, metadata !103, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_std
!103 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !66, metadata !104, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!106 = metadata !{i32 786449, metadata !107, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !108, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!107 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786478, metadata !107, metadata !110, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*)* @
!110 = metadata !{i32 786473, metadata !107}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!111 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786454, metadata !107, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!114 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!116 = metadata !{i32 786454, metadata !107, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!117 = metadata !{i32 786451, metadata !68, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !130, metadata !131}
!119 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!120 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !73} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!121 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!122 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!123 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!124 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!125 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!126 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!127 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!128 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !129} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!130 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !88} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!131 = metadata !{i32 786445, metadata !68, metadata !117, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !132} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!132 = metadata !{i32 786454, metadata !68, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!133 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !134, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!134 = metadata !{metadata !135, metadata !136}
!135 = metadata !{i32 786445, metadata !93, metadata !133, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!136 = metadata !{i32 786445, metadata !93, metadata !133, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!137 = metadata !{i32 786449, metadata !138, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !139, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!138 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 786478, metadata !138, metadata !141, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 
!141 = metadata !{i32 786473, metadata !138}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!142 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !31, metadata !144, metadata !145, metadata !148}
!144 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{i32 786454, metadata !138, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!149 = metadata !{i32 786449, metadata !150, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !151, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!150 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786478, metadata !150, metadata !153, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 
!153 = metadata !{i32 786473, metadata !150}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!154 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !31, metadata !31, metadata !8, metadata !156}
!156 = metadata !{i32 786454, metadata !150, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!157 = metadata !{i32 786449, metadata !158, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !159, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!158 = metadata !{metadata !"libc/string/strrchr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 786478, metadata !158, metadata !161, metadata !"strrchr", metadata !"strrchr", metadata !"", i32 17, metadata !162, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr, null, null, metadata !2, i32 18
!161 = metadata !{i32 786473, metadata !158}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!162 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!163 = metadata !{metadata !28, metadata !46, metadata !8}
!164 = metadata !{i32 786449, metadata !165, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !166, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!165 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 786478, metadata !165, metadata !168, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !169, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW
!168 = metadata !{i32 786473, metadata !165}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/isatty.c]
!169 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{metadata !8, metadata !8}
!171 = metadata !{i32 786449, metadata !172, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !173, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!172 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 786478, metadata !172, metadata !175, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.616*)* @tcgetattr, null, nu
!175 = metadata !{i32 786473, metadata !172}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!176 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{metadata !8, metadata !8, metadata !178}
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!179 = metadata !{i32 786451, metadata !180, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!180 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!181 = metadata !{metadata !182, metadata !184, metadata !185, metadata !186, metadata !187, metadata !189, metadata !193, metadata !195}
!182 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!183 = metadata !{i32 786454, metadata !180, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!184 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!185 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!186 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !183} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!187 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !188} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!188 = metadata !{i32 786454, metadata !180, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!189 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !190} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!190 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !188, metadata !191, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!193 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !194} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!194 = metadata !{i32 786454, metadata !180, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!195 = metadata !{i32 786445, metadata !180, metadata !179, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !194} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!196 = metadata !{i32 786449, metadata !197, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !198, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!197 = metadata !{metadata !"libc/misc/internals/__errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786478, metadata !197, metadata !200, metadata !"__errno_location", metadata !"__errno_location", metadata !"", i32 11, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_location, null, null,
!200 = metadata !{i32 786473, metadata !197}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__errno_location.c]
!201 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{metadata !12}
!203 = metadata !{i32 786449, metadata !204, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !205, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!204 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 786478, metadata !204, metadata !207, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null,
!207 = metadata !{i32 786473, metadata !204}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__h_errno_location.c]
!208 = metadata !{i32 786449, metadata !209, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !210, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!209 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!210 = metadata !{metadata !211, metadata !213}
!211 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !212, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!212 = metadata !{i32 786473, metadata !209}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/errno.c]
!213 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !212, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!214 = metadata !{i32 786449, metadata !215, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !216, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!215 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786478, metadata !215, metadata !218, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*, i8*, i
!218 = metadata !{i32 786473, metadata !215}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!219 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !244, metadata !221}
!221 = metadata !{i32 786454, metadata !215, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!223 = metadata !{i32 786454, metadata !215, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!224 = metadata !{i32 786451, metadata !68, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !225, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !237, metadata !238}
!226 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!227 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !73} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!228 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!229 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!230 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!231 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!232 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!233 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!234 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !79} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!235 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !236} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!237 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !88} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!238 = metadata !{i32 786445, metadata !68, metadata !224, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !239} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!239 = metadata !{i32 786454, metadata !68, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!240 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !241, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!241 = metadata !{metadata !242, metadata !243}
!242 = metadata !{i32 786445, metadata !93, metadata !240, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!243 = metadata !{i32 786445, metadata !93, metadata !240, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!245 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!246 = metadata !{i32 786449, metadata !247, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !248, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!247 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!248 = metadata !{metadata !249}
!249 = metadata !{i32 786478, metadata !247, metadata !250, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !251, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2, i
!250 = metadata !{i32 786473, metadata !247}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!251 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{metadata !31, metadata !144, metadata !145, metadata !253}
!253 = metadata !{i32 786454, metadata !247, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!254 = metadata !{i32 786449, metadata !255, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !256, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!255 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!256 = metadata !{metadata !257}
!257 = metadata !{i32 786478, metadata !255, metadata !258, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !259, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!258 = metadata !{i32 786473, metadata !255}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!259 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = metadata !{null, metadata !261}
!261 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!262 = metadata !{metadata !263}
!263 = metadata !{i32 786689, metadata !257, metadata !"z", metadata !258, i32 16777228, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!264 = metadata !{i32 786449, metadata !265, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !266, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!265 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 786478, metadata !265, metadata !268, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !271, i32 13}
!268 = metadata !{i32 786473, metadata !265}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c]
!269 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !8, metadata !46}
!271 = metadata !{metadata !272, metadata !273}
!272 = metadata !{i32 786689, metadata !267, metadata !"name", metadata !268, i32 16777229, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!273 = metadata !{i32 786688, metadata !267, metadata !"x", metadata !268, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!274 = metadata !{i32 786449, metadata !275, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !276, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!275 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!276 = metadata !{metadata !277}
!277 = metadata !{i32 786478, metadata !275, metadata !278, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !279, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!278 = metadata !{i32 786473, metadata !275}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!279 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!280 = metadata !{null, metadata !40, metadata !40}
!281 = metadata !{metadata !282, metadata !283}
!282 = metadata !{i32 786689, metadata !277, metadata !"bitWidth", metadata !278, i32 16777236, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!283 = metadata !{i32 786689, metadata !277, metadata !"shift", metadata !278, i32 33554452, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!284 = metadata !{i32 786449, metadata !285, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !286, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!285 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!286 = metadata !{metadata !287}
!287 = metadata !{i32 786478, metadata !285, metadata !288, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!288 = metadata !{i32 786473, metadata !285}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!289 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = metadata !{metadata !8, metadata !8, metadata !8, metadata !46}
!291 = metadata !{metadata !292, metadata !293, metadata !294, metadata !295}
!292 = metadata !{i32 786689, metadata !287, metadata !"start", metadata !288, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!293 = metadata !{i32 786689, metadata !287, metadata !"end", metadata !288, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!294 = metadata !{i32 786689, metadata !287, metadata !"name", metadata !288, i32 50331661, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!295 = metadata !{i32 786688, metadata !287, metadata !"x", metadata !288, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!296 = metadata !{i32 786449, metadata !297, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !298, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!297 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786478, metadata !297, metadata !300, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !304, i32
!300 = metadata !{i32 786473, metadata !297}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c]
!301 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{metadata !31, metadata !31, metadata !146, metadata !303}
!303 = metadata !{i32 786454, metadata !297, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!304 = metadata !{metadata !305, metadata !306, metadata !307, metadata !308, metadata !309}
!305 = metadata !{i32 786689, metadata !299, metadata !"destaddr", metadata !300, i32 16777228, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!306 = metadata !{i32 786689, metadata !299, metadata !"srcaddr", metadata !300, i32 33554444, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!307 = metadata !{i32 786689, metadata !299, metadata !"len", metadata !300, i32 50331660, metadata !303, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!308 = metadata !{i32 786688, metadata !299, metadata !"dest", metadata !300, i32 13, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!309 = metadata !{i32 786688, metadata !299, metadata !"src", metadata !300, i32 14, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!310 = metadata !{i32 786449, metadata !311, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !312, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!311 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786478, metadata !311, metadata !314, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !318, 
!314 = metadata !{i32 786473, metadata !311}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!315 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!316 = metadata !{metadata !31, metadata !31, metadata !146, metadata !317}
!317 = metadata !{i32 786454, metadata !311, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!318 = metadata !{metadata !319, metadata !320, metadata !321, metadata !322, metadata !323}
!319 = metadata !{i32 786689, metadata !313, metadata !"dst", metadata !314, i32 16777228, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!320 = metadata !{i32 786689, metadata !313, metadata !"src", metadata !314, i32 33554444, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!321 = metadata !{i32 786689, metadata !313, metadata !"count", metadata !314, i32 50331660, metadata !317, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!322 = metadata !{i32 786688, metadata !313, metadata !"a", metadata !314, i32 13, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!323 = metadata !{i32 786688, metadata !313, metadata !"b", metadata !314, i32 14, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!324 = metadata !{i32 786449, metadata !325, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !326, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!325 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!326 = metadata !{metadata !327}
!327 = metadata !{i32 786478, metadata !325, metadata !328, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !332, 
!328 = metadata !{i32 786473, metadata !325}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c]
!329 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{metadata !31, metadata !31, metadata !146, metadata !331}
!331 = metadata !{i32 786454, metadata !325, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!332 = metadata !{metadata !333, metadata !334, metadata !335, metadata !336, metadata !337}
!333 = metadata !{i32 786689, metadata !327, metadata !"destaddr", metadata !328, i32 16777227, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!334 = metadata !{i32 786689, metadata !327, metadata !"srcaddr", metadata !328, i32 33554443, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!335 = metadata !{i32 786689, metadata !327, metadata !"len", metadata !328, i32 50331659, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!336 = metadata !{i32 786688, metadata !327, metadata !"dest", metadata !328, i32 12, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!337 = metadata !{i32 786688, metadata !327, metadata !"src", metadata !328, i32 13, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!338 = metadata !{i32 786449, metadata !339, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !340, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!339 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!340 = metadata !{metadata !341}
!341 = metadata !{i32 786478, metadata !339, metadata !342, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !343, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !346, i32
!342 = metadata !{i32 786473, metadata !339}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c]
!343 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{metadata !31, metadata !31, metadata !8, metadata !345}
!345 = metadata !{i32 786454, metadata !339, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!346 = metadata !{metadata !347, metadata !348, metadata !349, metadata !350}
!347 = metadata !{i32 786689, metadata !341, metadata !"dst", metadata !342, i32 16777227, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!348 = metadata !{i32 786689, metadata !341, metadata !"s", metadata !342, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!349 = metadata !{i32 786689, metadata !341, metadata !"count", metadata !342, i32 50331659, metadata !345, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!350 = metadata !{i32 786688, metadata !341, metadata !"a", metadata !342, i32 12, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !352} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!352 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!353 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!354 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!355 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!356 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!357 = metadata !{i32 93, i32 0, metadata !4, null}
!358 = metadata !{i32 94, i32 0, metadata !4, null}
!359 = metadata !{i32 95, i32 0, metadata !4, null}
!360 = metadata !{i32 97, i32 0, metadata !4, null}
!361 = metadata !{i32 98, i32 0, metadata !4, null}
!362 = metadata !{i32 100, i32 0, metadata !4, null}
!363 = metadata !{i32 101, i32 0, metadata !4, null}
!364 = metadata !{i32 102, i32 0, metadata !4, null}
!365 = metadata !{i32 104, i32 0, metadata !4, null}
!366 = metadata !{i32 105, i32 0, metadata !4, null}
!367 = metadata !{i32 106, i32 0, metadata !4, null}
!368 = metadata !{i32 109, i32 0, metadata !4, null}
!369 = metadata !{i32 110, i32 0, metadata !4, null}
!370 = metadata !{i32 112, i32 0, metadata !4, null}
!371 = metadata !{i32 113, i32 0, metadata !4, null}
!372 = metadata !{i32 117, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !4, i32 117, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!374 = metadata !{i32 118, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !373, i32 117, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!376 = metadata !{i32 119, i32 0, metadata !375, null}
!377 = metadata !{i32 120, i32 0, metadata !375, null}
!378 = metadata !{i32 122, i32 0, metadata !375, null}
!379 = metadata !{i32 123, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !375, i32 123, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!381 = metadata !{i32 124, i32 0, metadata !380, null}
!382 = metadata !{i32 126, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !375, i32 126, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!384 = metadata !{i32 127, i32 0, metadata !383, null}
!385 = metadata !{i32 130, i32 0, metadata !4, null}
!386 = metadata !{i32 132, i32 0, metadata !4, null}
!387 = metadata !{i32 133, i32 0, metadata !4, null}
!388 = metadata !{i32 144, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !9, i32 144, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!390 = metadata !{i32 146, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !392, i32 146, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!392 = metadata !{i32 786443, metadata !1, metadata !389, i32 144, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!393 = metadata !{i32 147, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !391, i32 146, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!395 = metadata !{i32 148, i32 0, metadata !394, null}
!396 = metadata !{i32 149, i32 0, metadata !394, null}
!397 = metadata !{i32 150, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !394, i32 150, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!399 = metadata !{i32 151, i32 0, metadata !398, null}
!400 = metadata !{i32 152, i32 0, metadata !394, null}
!401 = metadata !{i32 155, i32 0, metadata !9, null}
!402 = metadata !{i32 191, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !14, metadata !16, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!404 = metadata !{i32 193, i32 0, metadata !16, null}
!405 = metadata !{i32 197, i32 0, metadata !16, null}
!406 = metadata !{i32 238, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !14, metadata !16, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!408 = metadata !{i32 239, i32 0, metadata !407, null}
!409 = metadata !{i32 240, i32 0, metadata !16, null}
!410 = metadata !{i32 263, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !14, metadata !20, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!412 = metadata !{i32 264, i32 0, metadata !411, null}
!413 = metadata !{i32 266, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !14, metadata !20, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!415 = metadata !{i32 267, i32 0, metadata !414, null}
!416 = metadata !{i32 268, i32 0, metadata !20, null}
!417 = metadata !{i32 288, i32 0, metadata !21, null}
!418 = metadata !{i32 291, i32 0, metadata !21, null}
!419 = metadata !{i32 294, i32 0, metadata !21, null}
!420 = metadata !{i32 298, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !14, metadata !21, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!422 = metadata !{i32 300, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !14, metadata !421, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!424 = metadata !{i32 301, i32 0, metadata !423, null}
!425 = metadata !{i32 305, i32 0, metadata !21, null}
!426 = metadata !{i32 306, i32 0, metadata !21, null}
!427 = metadata !{i32 307, i32 0, metadata !21, null}
!428 = metadata !{i32 308, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !14, metadata !21, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!430 = metadata !{i32 311, i32 0, metadata !21, null}
!431 = metadata !{i32 312, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !14, metadata !21, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!433 = metadata !{i32 313, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !14, metadata !432, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!435 = metadata !{i32 314, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !14, metadata !434, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!437 = metadata !{i32 315, i32 0, metadata !436, null}
!438 = metadata !{i32 316, i32 0, metadata !432, null}
!439 = metadata !{i32 317, i32 0, metadata !432, null}
!440 = metadata !{i32 323, i32 0, metadata !21, null}
!441 = metadata !{i32 327, i32 0, metadata !21, null}
!442 = metadata !{i32 331, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !14, metadata !21, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!444 = metadata !{i32 336, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !14, metadata !443, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!446 = metadata !{i32 337, i32 0, metadata !445, null}
!447 = metadata !{i32 338, i32 0, metadata !445, null}
!448 = metadata !{i32 339, i32 0, metadata !445, null}
!449 = metadata !{i32 342, i32 0, metadata !21, null}
!450 = metadata !{i32 344, i32 0, metadata !21, null}
!451 = metadata !{i32 345, i32 0, metadata !21, null}
!452 = metadata !{i32 346, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !14, metadata !21, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!454 = metadata !{i32 347, i32 0, metadata !453, null}
!455 = metadata !{i32 349, i32 0, metadata !453, null}
!456 = metadata !{i32 354, i32 0, metadata !21, null}
!457 = metadata !{i32 370, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !14, metadata !21, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!459 = metadata !{i32 371, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !14, metadata !458, i32 370, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!461 = metadata !{i32 372, i32 0, metadata !460, null}
!462 = metadata !{i32 391, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !14, metadata !21, i32 391, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!464 = metadata !{i32 392, i32 0, metadata !463, null}
!465 = metadata !{i32 395, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !14, metadata !21, i32 395, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!467 = metadata !{i32 396, i32 0, metadata !466, null}
!468 = metadata !{i32 401, i32 0, metadata !21, null}
!469 = metadata !{i32 160, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !14, metadata !42} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!471 = metadata !{i32 161, i32 0, metadata !470, null}
!472 = metadata !{i32 162, i32 0, metadata !470, null}
!473 = metadata !{i32 163, i32 0, metadata !470, null}
!474 = metadata !{i32 165, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !14, metadata !470, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!476 = metadata !{i32 166, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !14, metadata !475, i32 165, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!478 = metadata !{i32 168, i32 0, metadata !470, null}
!479 = metadata !{i32 169, i32 0, metadata !470, null}
!480 = metadata !{i32 139, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !14, metadata !32, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!482 = metadata !{i32 143, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !14, metadata !481, i32 140, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!484 = metadata !{i32 147, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !14, metadata !483, i32 147, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!486 = metadata !{i32 148, i32 18, metadata !485, null}
!487 = metadata !{i32 150, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !14, metadata !485, i32 149, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!489 = metadata !{i32 153, i32 0, metadata !32, null}
!490 = metadata !{i32 56, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !36, metadata !35} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!492 = metadata !{i32 258, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !58, metadata !60, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!494 = metadata !{i32 261, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !58, metadata !496, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!496 = metadata !{i32 786443, metadata !58, metadata !493, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!497 = metadata !{i32 262, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !58, metadata !495, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!499 = metadata !{i32 263, i32 0, metadata !498, null}
!500 = metadata !{i32 274, i32 0, metadata !60, null}
!501 = metadata !{i32 280, i32 0, metadata !62, null}
!502 = metadata !{i32 282, i32 0, metadata !62, null}
!503 = metadata !{i32 283, i32 0, metadata !62, null}
!504 = metadata !{i32 284, i32 0, metadata !62, null}
!505 = metadata !{i32 291, i32 0, metadata !62, null}
!506 = metadata !{i32 23, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !107, metadata !109, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!508 = metadata !{i32 24, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !107, metadata !507, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!510 = metadata !{i32 25, i32 0, metadata !509, null}
!511 = metadata !{i32 26, i32 0, metadata !509, null}
!512 = metadata !{i32 28, i32 0, metadata !109, null}
!513 = metadata !{i32 20, i32 0, metadata !140, null}
!514 = metadata !{i32 21, i32 0, metadata !140, null}
!515 = metadata !{i32 28, i32 0, metadata !140, null}
!516 = metadata !{i32 29, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !138, metadata !140, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!518 = metadata !{i32 30, i32 0, metadata !517, null}
!519 = metadata !{i32 31, i32 0, metadata !517, null}
!520 = metadata !{i32 34, i32 0, metadata !140, null}
!521 = metadata !{i32 19, i32 0, metadata !152, null}
!522 = metadata !{i32 27, i32 0, metadata !152, null}
!523 = metadata !{i32 28, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !150, metadata !152, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!525 = metadata !{i32 29, i32 0, metadata !524, null}
!526 = metadata !{i32 30, i32 0, metadata !524, null}
!527 = metadata !{i32 32, i32 0, metadata !152, null}
!528 = metadata !{i32 21, i32 0, metadata !160, null}
!529 = metadata !{i32 22, i32 0, metadata !160, null}
!530 = metadata !{i32 23, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !158, metadata !532, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!532 = metadata !{i32 786443, metadata !158, metadata !160, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!533 = metadata !{i32 24, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !158, metadata !531, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!535 = metadata !{i32 25, i32 0, metadata !534, null}
!536 = metadata !{i32 26, i32 0, metadata !532, null}
!537 = metadata !{i32 28, i32 0, metadata !160, null}
!538 = metadata !{i32 30, i32 0, metadata !167, null}
!539 = metadata !{i32 43, i32 0, metadata !174, null}
!540 = metadata !{i32 45, i32 0, metadata !174, null}
!541 = metadata !{i32 46, i32 0, metadata !174, null}
!542 = metadata !{i32 47, i32 0, metadata !174, null}
!543 = metadata !{i32 48, i32 0, metadata !174, null}
!544 = metadata !{i32 49, i32 0, metadata !174, null}
!545 = metadata !{i32 61, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !172, metadata !547, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!547 = metadata !{i32 786443, metadata !172, metadata !174, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!548 = metadata !{i32 79, i32 0, metadata !174, null}
!549 = metadata !{i32 13, i32 0, metadata !199, null}
!550 = metadata !{i32 12, i32 0, metadata !206, null}
!551 = metadata !{i32 44, i32 0, metadata !217, null}
!552 = metadata !{i32 46, i32 0, metadata !217, null}
!553 = metadata !{i32 47, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !215, metadata !555, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!555 = metadata !{i32 786443, metadata !215, metadata !217, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!556 = metadata !{i32 49, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !215, metadata !554, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!558 = metadata !{i32 51, i32 0, metadata !555, null}
!559 = metadata !{i32 52, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !215, metadata !555, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!561 = metadata !{i32 62, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !215, metadata !560, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!563 = metadata !{i32 63, i32 0, metadata !562, null}
!564 = metadata !{i32 101, i32 0, metadata !555, null}
!565 = metadata !{i32 70, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !215, metadata !560, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!567 = metadata !{i32 73, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !215, metadata !566, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!569 = metadata !{i32 76, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !215, metadata !571, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!571 = metadata !{i32 786443, metadata !215, metadata !568, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!572 = metadata !{i32 77, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !215, metadata !570, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!574 = metadata !{i32 78, i32 0, metadata !573, null}
!575 = metadata !{i32 80, i32 0, metadata !571, null}
!576 = metadata !{i32 82, i32 0, metadata !571, null}
!577 = metadata !{i32 83, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !215, metadata !579, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!579 = metadata !{i32 786443, metadata !215, metadata !571, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!580 = metadata !{i32 88, i32 0, metadata !579, null}
!581 = metadata !{i32 89, i32 0, metadata !579, null}
!582 = metadata !{i32 90, i32 0, metadata !579, null}
!583 = metadata !{i32 92, i32 0, metadata !571, null}
!584 = metadata !{i32 94, i32 0, metadata !571, null}
!585 = metadata !{i32 95, i32 0, metadata !571, null}
!586 = metadata !{i32 99, i32 0, metadata !566, null}
!587 = metadata !{i32 102, i32 0, metadata !217, null}
!588 = metadata !{i32 22, i32 0, metadata !249, null}
!589 = metadata !{i32 23, i32 0, metadata !249, null}
!590 = metadata !{i32 30, i32 0, metadata !249, null}
!591 = metadata !{i32 31, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !247, metadata !249, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!593 = metadata !{i32 32, i32 0, metadata !592, null}
!594 = metadata !{i32 33, i32 0, metadata !592, null}
!595 = metadata !{i32 36, i32 0, metadata !249, null}
!596 = metadata !{i32 13, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !255, metadata !257, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!598 = metadata !{i32 14, i32 0, metadata !597, null}
!599 = metadata !{i32 15, i32 0, metadata !257, null}
!600 = metadata !{i32 15, i32 0, metadata !267, null}
!601 = metadata !{i32 16, i32 0, metadata !267, null}
!602 = metadata !{metadata !603, metadata !603, i64 0}
!603 = metadata !{metadata !"int", metadata !604, i64 0}
!604 = metadata !{metadata !"omnipotent char", metadata !605, i64 0}
!605 = metadata !{metadata !"Simple C/C++ TBAA"}
!606 = metadata !{i32 21, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !275, metadata !277, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!608 = metadata !{i32 27, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !275, metadata !607, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!610 = metadata !{i32 29, i32 0, metadata !277, null}
!611 = metadata !{i32 16, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !285, metadata !287, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!613 = metadata !{i32 17, i32 0, metadata !612, null}
!614 = metadata !{i32 19, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !285, metadata !287, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!616 = metadata !{i32 22, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !285, metadata !615, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!618 = metadata !{i32 25, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !285, metadata !617, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!620 = metadata !{i32 26, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !285, metadata !619, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!622 = metadata !{i32 27, i32 0, metadata !621, null}
!623 = metadata !{i32 28, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !285, metadata !619, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!625 = metadata !{i32 29, i32 0, metadata !624, null}
!626 = metadata !{i32 32, i32 0, metadata !617, null}
!627 = metadata !{i32 34, i32 0, metadata !287, null}
!628 = metadata !{i32 16, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !311, metadata !313, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!630 = metadata !{i32 19, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !311, metadata !313, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!632 = metadata !{i32 20, i32 0, metadata !633, null}
!633 = metadata !{i32 786443, metadata !311, metadata !631, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!634 = metadata !{metadata !634, metadata !635, metadata !636}
!635 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!636 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!637 = metadata !{metadata !604, metadata !604, i64 0}
!638 = metadata !{metadata !638, metadata !635, metadata !636}
!639 = metadata !{i32 22, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !311, metadata !631, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!641 = metadata !{i32 24, i32 0, metadata !640, null}
!642 = metadata !{i32 23, i32 0, metadata !640, null}
!643 = metadata !{metadata !643, metadata !635, metadata !636}
!644 = metadata !{metadata !644, metadata !635, metadata !636}
!645 = metadata !{i32 28, i32 0, metadata !313, null}
