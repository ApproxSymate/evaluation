; ModuleID = './sor.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__STDIO_FILE_STRUCT.376 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.376*, [2 x i32], %struct.__mbstate_t.375 }
%struct.__mbstate_t.375 = type { i32, i32 }
%struct.Elf64_auxv_t = type { i64, %union.anon.120 }
%union.anon.120 = type { i64 }
%struct.stat.119 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.termios.616 = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__kernel_termios = type { i32, i32, i32, i32, i8, [19 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"__arr32__G\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"G_err\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"omega_err\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"num_iterations\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@__libc_stack_end = global i8* null, align 8
@.str6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__uclibc_progname = hidden global i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), align 8
@program_invocation_short_name = global i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), align 8
@program_invocation_name = global i8* getelementptr inbounds ([1 x i8]* @.str6, i32 0, i32 0), align 8
@__environ = global i8** null, align 8
@__pagesize = global i64 0, align 8
@__uClibc_init.been_there_done_that = internal global i32 0, align 4
@__app_fini = hidden global void ()* null, align 8
@__rtld_fini = hidden global void ()* null, align 8
@.str17 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@_stdio_streams = internal global [3 x %struct.__STDIO_FILE_STRUCT.376] [%struct.__STDIO_FILE_STRUCT.376 { i16 544, [2 x i8] zeroinitializer, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.376* bitcast (i8*
@stdin = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@stdout = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@stderr = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 160) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@__stdin = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@__stdout = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@_stdio_openlist = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@errno = global i32 0, align 4
@h_errno = global i32 0, align 4
@.str36 = private unnamed_addr constant [80 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str137 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str238 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str339 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str640 = private unnamed_addr constant [71 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str1741 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

@__progname = alias weak i8** @program_invocation_short_name
@__progname_full = alias weak i8** @program_invocation_name
@environ = alias weak i8*** @__environ

; Function Attrs: nounwind uwtable
define i32 @__user_main() #0 {
  %1 = alloca i32, align 4
  %N = alloca i32, align 4
  %cycles = alloca i32, align 4
  %omega = alloca i32, align 4
  %G = alloca [6 x [6 x i32]], align 16
  store i32 0, i32* %1
  store i32 6, i32* %N, align 4, !dbg !361
  store i32 1, i32* %cycles, align 4, !dbg !362
  %2 = getelementptr inbounds [6 x [6 x i32]]* %G, i32 0, i32 0, !dbg !363
  %3 = bitcast [6 x i32]* %2 to i8*, !dbg !363
  call void @klee_make_symbolic(i8* %3, i64 144, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)), !dbg !363
  %4 = bitcast i32* %omega to i8*, !dbg !364
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)), !dbg !364
  %5 = getelementptr inbounds [6 x [6 x i32]]* %G, i32 0, i32 0, !dbg !365
  %6 = bitcast [6 x i32]* %5 to i8*, !dbg !365
  call void @klee_track_error(i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !365
  %7 = bitcast i32* %omega to i8*, !dbg !366
  call void @klee_track_error(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)), !dbg !366
  %8 = load i32* %N, align 4, !dbg !367
  %9 = load i32* %N, align 4, !dbg !367
  %10 = load i32* %omega, align 4, !dbg !367
  %11 = getelementptr inbounds [6 x [6 x i32]]* %G, i32 0, i32 0, !dbg !367
  %12 = load i32* %cycles, align 4, !dbg !367
  call void @SOR_execute(i32 %8, i32 %9, i32 %10, [6 x i32]* %11, i32 %12), !dbg !367
  ret i32 0, !dbg !368
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_track_error(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @SOR_execute(i32 %M, i32 %N, i32 %omega, [6 x i32]* %G, i32 %num_iterations) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32]*, align 8
  %5 = alloca i32, align 4
  %omega_over_four = alloca i32, align 4
  %one_minus_omega = alloca i32, align 4
  %Mm1 = alloca i32, align 4
  %Nm1 = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Gi = alloca i32*, align 8
  %Gim1 = alloca i32*, align 8
  %Gip1 = alloca i32*, align 8
  store i32 %M, i32* %1, align 4
  store i32 %N, i32* %2, align 4
  store i32 %omega, i32* %3, align 4
  store [6 x i32]* %G, [6 x i32]** %4, align 8
  store i32 %num_iterations, i32* %5, align 4
  %6 = load i32* %3, align 4, !dbg !369
  %int_cast_to_i64 = zext i32 4 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !369
  %7 = sdiv i32 %6, 4, !dbg !369
  store i32 %7, i32* %omega_over_four, align 4, !dbg !369
  %8 = load i32* %3, align 4, !dbg !370
  %9 = sub nsw i32 1, %8, !dbg !370
  store i32 %9, i32* %one_minus_omega, align 4, !dbg !370
  %10 = load i32* %5, align 4, !dbg !371
  %11 = sext i32 %10 to i64, !dbg !371
  call void @klee_bound_error(i64 %11, i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !371
  %12 = load i32* %1, align 4, !dbg !372
  %13 = sext i32 %12 to i64, !dbg !372
  call void @klee_bound_error(i64 %13, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !372
  %14 = load i32* %1, align 4, !dbg !373
  %15 = sub nsw i32 %14, 1, !dbg !373
  store i32 %15, i32* %Mm1, align 4, !dbg !373
  %16 = load i32* %2, align 4, !dbg !374
  %17 = sub nsw i32 %16, 1, !dbg !374
  store i32 %17, i32* %Nm1, align 4, !dbg !374
  store i32 0, i32* %p, align 4, !dbg !375
  br label %18, !dbg !375

; <label>:18                                      ; preds = %94, %0
  %19 = load i32* %p, align 4, !dbg !375
  %20 = load i32* %5, align 4, !dbg !375
  %21 = icmp slt i32 %19, %20, !dbg !375
  br i1 %21, label %22, label %97, !dbg !375

; <label>:22                                      ; preds = %18
  store i32 1, i32* %i, align 4, !dbg !377
  br label %23, !dbg !377

; <label>:23                                      ; preds = %91, %22
  %24 = load i32* %i, align 4, !dbg !377
  %25 = load i32* %Mm1, align 4, !dbg !377
  %26 = icmp slt i32 %24, %25, !dbg !377
  br i1 %26, label %27, label %94, !dbg !377

; <label>:27                                      ; preds = %23
  %28 = load i32* %i, align 4, !dbg !380
  %29 = sext i32 %28 to i64, !dbg !380
  %30 = load [6 x i32]** %4, align 8, !dbg !380
  %31 = getelementptr inbounds [6 x i32]* %30, i64 %29, !dbg !380
  %32 = getelementptr inbounds [6 x i32]* %31, i32 0, i32 0, !dbg !380
  store i32* %32, i32** %Gi, align 8, !dbg !380
  %33 = load i32* %i, align 4, !dbg !382
  %34 = sub nsw i32 %33, 1, !dbg !382
  %35 = sext i32 %34 to i64, !dbg !382
  %36 = load [6 x i32]** %4, align 8, !dbg !382
  %37 = getelementptr inbounds [6 x i32]* %36, i64 %35, !dbg !382
  %38 = getelementptr inbounds [6 x i32]* %37, i32 0, i32 0, !dbg !382
  store i32* %38, i32** %Gim1, align 8, !dbg !382
  %39 = load i32* %i, align 4, !dbg !383
  %40 = add nsw i32 %39, 1, !dbg !383
  %41 = sext i32 %40 to i64, !dbg !383
  %42 = load [6 x i32]** %4, align 8, !dbg !383
  %43 = getelementptr inbounds [6 x i32]* %42, i64 %41, !dbg !383
  %44 = getelementptr inbounds [6 x i32]* %43, i32 0, i32 0, !dbg !383
  store i32* %44, i32** %Gip1, align 8, !dbg !383
  store i32 1, i32* %j, align 4, !dbg !384
  br label %45, !dbg !384

; <label>:45                                      ; preds = %49, %27
  %46 = load i32* %j, align 4, !dbg !384
  %47 = load i32* %Nm1, align 4, !dbg !384
  %48 = icmp slt i32 %46, %47, !dbg !384
  br i1 %48, label %49, label %91, !dbg !384

; <label>:49                                      ; preds = %45
  %50 = load i32* %omega_over_four, align 4, !dbg !386
  %51 = load i32* %j, align 4, !dbg !386
  %52 = sext i32 %51 to i64, !dbg !386
  %53 = load i32** %Gim1, align 8, !dbg !386
  %54 = getelementptr inbounds i32* %53, i64 %52, !dbg !386
  %55 = load i32* %54, align 4, !dbg !386
  %56 = load i32* %j, align 4, !dbg !386
  %57 = sext i32 %56 to i64, !dbg !386
  %58 = load i32** %Gip1, align 8, !dbg !386
  %59 = getelementptr inbounds i32* %58, i64 %57, !dbg !386
  %60 = load i32* %59, align 4, !dbg !386
  %61 = add nsw i32 %55, %60, !dbg !386
  %62 = load i32* %j, align 4, !dbg !386
  %63 = sub nsw i32 %62, 1, !dbg !386
  %64 = sext i32 %63 to i64, !dbg !386
  %65 = load i32** %Gi, align 8, !dbg !386
  %66 = getelementptr inbounds i32* %65, i64 %64, !dbg !386
  %67 = load i32* %66, align 4, !dbg !386
  %68 = add nsw i32 %61, %67, !dbg !386
  %69 = load i32* %j, align 4, !dbg !386
  %70 = add nsw i32 %69, 1, !dbg !386
  %71 = sext i32 %70 to i64, !dbg !386
  %72 = load i32** %Gi, align 8, !dbg !386
  %73 = getelementptr inbounds i32* %72, i64 %71, !dbg !386
  %74 = load i32* %73, align 4, !dbg !386
  %75 = add nsw i32 %68, %74, !dbg !386
  %76 = mul nsw i32 %50, %75, !dbg !386
  %77 = load i32* %one_minus_omega, align 4, !dbg !386
  %78 = load i32* %j, align 4, !dbg !386
  %79 = sext i32 %78 to i64, !dbg !386
  %80 = load i32** %Gi, align 8, !dbg !386
  %81 = getelementptr inbounds i32* %80, i64 %79, !dbg !386
  %82 = load i32* %81, align 4, !dbg !386
  %83 = mul nsw i32 %77, %82, !dbg !386
  %84 = add nsw i32 %76, %83, !dbg !386
  %85 = load i32* %j, align 4, !dbg !386
  %86 = sext i32 %85 to i64, !dbg !386
  %87 = load i32** %Gi, align 8, !dbg !386
  %88 = getelementptr inbounds i32* %87, i64 %86, !dbg !386
  store i32 %84, i32* %88, align 4, !dbg !386
  %89 = load i32* %j, align 4, !dbg !384
  %90 = add nsw i32 %89, 1, !dbg !384
  store i32 %90, i32* %j, align 4, !dbg !384
  br label %45, !dbg !384

; <label>:91                                      ; preds = %45
  %92 = load i32* %i, align 4, !dbg !377
  %93 = add nsw i32 %92, 1, !dbg !377
  store i32 %93, i32* %i, align 4, !dbg !377
  br label %23, !dbg !377

; <label>:94                                      ; preds = %23
  %95 = load i32* %p, align 4, !dbg !375
  %96 = add nsw i32 %95, 1, !dbg !375
  store i32 %96, i32* %p, align 4, !dbg !375
  br label %18, !dbg !375

; <label>:97                                      ; preds = %18
  ret void, !dbg !387
}

declare void @klee_bound_error(i64, i8*, double) #2

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
entry:
  %0 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !388
  %tobool = icmp ne i32 %0, 0, !dbg !388
  br i1 %tobool, label %if.end3, label %if.end, !dbg !388

if.end:                                           ; preds = %entry
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !390
  %inc = add nsw i32 %1, 1, !dbg !390
  store i32 %inc, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !390
  store i64 4096, i64* @__pagesize, align 8, !dbg !391
  %tobool1 = icmp ne i64 1, 0, !dbg !392
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !392

if.then2:                                         ; preds = %if.end
  call void @_stdio_init() #12, !dbg !394
  br label %if.end3, !dbg !394

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !395
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !396
  %cmp = icmp ne void ()* %0, null, !dbg !396
  br i1 %cmp, label %if.then, label %if.end, !dbg !396

if.then:                                          ; preds = %entry
  %1 = load void ()** @__app_fini, align 8, !dbg !398
  call void %1() #12, !dbg !398
  br label %if.end, !dbg !398

if.end:                                           ; preds = %if.then, %entry
  %2 = load void ()** @__rtld_fini, align 8, !dbg !399
  %cmp1 = icmp ne void ()* %2, null, !dbg !399
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !399

if.then2:                                         ; preds = %if.end
  %3 = load void ()** @__rtld_fini, align 8, !dbg !401
  call void %3() #12, !dbg !401
  br label %if.end3, !dbg !401

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !402
}

; Function Attrs: noreturn nounwind uwtable
define void @__uClibc_main(i32 (i32, i8**, i8**)* %main, i32 %argc, i8** %argv, void ()* %app_init, void ()* %app_fini, void ()* %rtld_fini, i8* %stack_end) #3 {
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
  %0 = load i8** %stack_end.addr, align 8, !dbg !403
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !403
  %1 = load void ()** %rtld_fini.addr, align 8, !dbg !404
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !404
  %2 = load i32* %argc.addr, align 4, !dbg !405
  %add = add nsw i32 %2, 1, !dbg !405
  %idxprom = sext i32 %add to i64, !dbg !405
  %3 = load i8*** %argv.addr, align 8, !dbg !405
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !405
  store i8** %arrayidx, i8*** @__environ, align 8, !dbg !405
  %4 = load i8*** @__environ, align 8, !dbg !406
  %5 = bitcast i8** %4 to i8*, !dbg !406
  %6 = load i8*** %argv.addr, align 8, !dbg !406
  %7 = load i8** %6, align 8, !dbg !406
  %cmp = icmp eq i8* %5, %7, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %entry
  %8 = load i32* %argc.addr, align 4, !dbg !408
  %idxprom1 = sext i32 %8 to i64, !dbg !408
  %9 = load i8*** %argv.addr, align 8, !dbg !408
  %arrayidx2 = getelementptr inbounds i8** %9, i64 %idxprom1, !dbg !408
  store i8** %arrayidx2, i8*** @__environ, align 8, !dbg !408
  br label %if.end, !dbg !410

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !411
  %10 = bitcast %struct.Elf64_auxv_t* %arraydecay to i8*, !dbg !411
  %call = call i8* @memset(i8* %10, i32 0, i64 240) #13, !dbg !411
  %11 = load i8*** @__environ, align 8, !dbg !412
  %12 = bitcast i8** %11 to i64*, !dbg !412
  store i64* %12, i64** %aux_dat, align 8, !dbg !412
  br label %while.cond, !dbg !413

while.cond:                                       ; preds = %while.cond, %if.end
  %13 = load i64** %aux_dat, align 8, !dbg !413
  %14 = load i64* %13, align 8, !dbg !413
  %tobool = icmp ne i64 %14, 0, !dbg !413
  %15 = load i64** %aux_dat, align 8, !dbg !414
  %incdec.ptr = getelementptr inbounds i64* %15, i32 1, !dbg !414
  store i64* %incdec.ptr, i64** %aux_dat, align 8, !dbg !414
  br i1 %tobool, label %while.cond, label %while.cond4, !dbg !413

while.cond4:                                      ; preds = %while.cond, %if.end12
  %16 = load i64** %aux_dat, align 8, !dbg !416
  %17 = load i64* %16, align 8, !dbg !416
  %tobool5 = icmp ne i64 %17, 0, !dbg !416
  br i1 %tobool5, label %while.body6, label %while.end13, !dbg !416

while.body6:                                      ; preds = %while.cond4
  %18 = load i64** %aux_dat, align 8, !dbg !417
  %19 = bitcast i64* %18 to %struct.Elf64_auxv_t*, !dbg !417
  store %struct.Elf64_auxv_t* %19, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !417
  %20 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !419
  %a_type = getelementptr inbounds %struct.Elf64_auxv_t* %20, i32 0, i32 0, !dbg !419
  %21 = load i64* %a_type, align 8, !dbg !419
  %cmp7 = icmp ule i64 %21, 14, !dbg !419
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !419

if.then8:                                         ; preds = %while.body6
  %22 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !421
  %a_type9 = getelementptr inbounds %struct.Elf64_auxv_t* %22, i32 0, i32 0, !dbg !421
  %23 = load i64* %a_type9, align 8, !dbg !421
  %arrayidx10 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %23, !dbg !421
  %24 = bitcast %struct.Elf64_auxv_t* %arrayidx10 to i8*, !dbg !421
  %25 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !421
  %26 = bitcast %struct.Elf64_auxv_t* %25 to i8*, !dbg !421
  %call11 = call i8* @memcpy(i8* %24, i8* %26, i64 16) #13, !dbg !421
  br label %if.end12, !dbg !423

if.end12:                                         ; preds = %if.then8, %while.body6
  %27 = load i64** %aux_dat, align 8, !dbg !424
  %add.ptr = getelementptr inbounds i64* %27, i64 2, !dbg !424
  store i64* %add.ptr, i64** %aux_dat, align 8, !dbg !424
  br label %while.cond4, !dbg !425

while.end13:                                      ; preds = %while.cond4
  call void @__uClibc_init() #12, !dbg !426
  %arrayidx14 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !427
  %a_un = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx14, i32 0, i32 1, !dbg !427
  %a_val = bitcast %union.anon.120* %a_un to i64*, !dbg !427
  %28 = load i64* %a_val, align 8, !dbg !427
  %tobool15 = icmp ne i64 %28, 0, !dbg !427
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !427

cond.true:                                        ; preds = %while.end13
  %arrayidx16 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !427
  %a_un17 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx16, i32 0, i32 1, !dbg !427
  %a_val18 = bitcast %union.anon.120* %a_un17 to i64*, !dbg !427
  %29 = load i64* %a_val18, align 8, !dbg !427
  br label %cond.end, !dbg !427

cond.end:                                         ; preds = %while.end13, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 4096, %while.end13 ], !dbg !427
  store i64 %cond, i64* @__pagesize, align 8, !dbg !427
  %arrayidx19 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !428
  %a_un20 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx19, i32 0, i32 1, !dbg !428
  %a_val21 = bitcast %union.anon.120* %a_un20 to i64*, !dbg !428
  %30 = load i64* %a_val21, align 8, !dbg !428
  %cmp22 = icmp eq i64 %30, -1, !dbg !428
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !428

land.lhs.true:                                    ; preds = %cond.end
  %call23 = call i32 @__check_suid() #12, !dbg !428
  %tobool24 = icmp ne i32 %call23, 0, !dbg !428
  br i1 %tobool24, label %if.then45, label %lor.lhs.false, !dbg !428

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %arrayidx25 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !428
  %a_un26 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx25, i32 0, i32 1, !dbg !428
  %a_val27 = bitcast %union.anon.120* %a_un26 to i64*, !dbg !428
  %31 = load i64* %a_val27, align 8, !dbg !428
  %cmp28 = icmp ne i64 %31, -1, !dbg !428
  br i1 %cmp28, label %land.lhs.true29, label %if.end46, !dbg !428

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !428
  %a_un31 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx30, i32 0, i32 1, !dbg !428
  %a_val32 = bitcast %union.anon.120* %a_un31 to i64*, !dbg !428
  %32 = load i64* %a_val32, align 8, !dbg !428
  %arrayidx33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !428
  %a_un34 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx33, i32 0, i32 1, !dbg !428
  %a_val35 = bitcast %union.anon.120* %a_un34 to i64*, !dbg !428
  %33 = load i64* %a_val35, align 8, !dbg !428
  %cmp36 = icmp ne i64 %32, %33, !dbg !428
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !428

lor.lhs.false37:                                  ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !428
  %a_un39 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx38, i32 0, i32 1, !dbg !428
  %a_val40 = bitcast %union.anon.120* %a_un39 to i64*, !dbg !428
  %34 = load i64* %a_val40, align 8, !dbg !428
  %arrayidx41 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !428
  %a_un42 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx41, i32 0, i32 1, !dbg !428
  %a_val43 = bitcast %union.anon.120* %a_un42 to i64*, !dbg !428
  %35 = load i64* %a_val43, align 8, !dbg !428
  %cmp44 = icmp ne i64 %34, %35, !dbg !428
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !428

if.then45:                                        ; preds = %lor.lhs.false37, %land.lhs.true29, %land.lhs.true
  call void @__check_one_fd(i32 0, i32 131072) #12, !dbg !430
  call void @__check_one_fd(i32 1, i32 131074) #12, !dbg !432
  call void @__check_one_fd(i32 2, i32 131074) #12, !dbg !433
  br label %if.end46, !dbg !434

if.end46:                                         ; preds = %if.then45, %lor.lhs.false37, %lor.lhs.false
  %36 = load i8*** %argv.addr, align 8, !dbg !435
  %37 = load i8** %36, align 8, !dbg !435
  store i8* %37, i8** @__uclibc_progname, align 8, !dbg !435
  %38 = load i8*** %argv.addr, align 8, !dbg !436
  %39 = load i8** %38, align 8, !dbg !436
  store i8* %39, i8** @program_invocation_name, align 8, !dbg !436
  %40 = load i8*** %argv.addr, align 8, !dbg !437
  %41 = load i8** %40, align 8, !dbg !437
  %call47 = call i8* @strrchr(i8* %41, i32 47) #14, !dbg !437
  store i8* %call47, i8** @program_invocation_short_name, align 8, !dbg !437
  %42 = load i8** @program_invocation_short_name, align 8, !dbg !438
  %cmp48 = icmp ne i8* %42, null, !dbg !438
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !438

if.then49:                                        ; preds = %if.end46
  %43 = load i8** @program_invocation_short_name, align 8, !dbg !440
  %incdec.ptr50 = getelementptr inbounds i8* %43, i32 1, !dbg !440
  store i8* %incdec.ptr50, i8** @program_invocation_short_name, align 8, !dbg !440
  br label %if.end51, !dbg !440

if.else:                                          ; preds = %if.end46
  %44 = load i8** @program_invocation_name, align 8, !dbg !441
  store i8* %44, i8** @program_invocation_short_name, align 8, !dbg !441
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %45 = load void ()** %app_fini.addr, align 8, !dbg !442
  store void ()* %45, void ()** @__app_fini, align 8, !dbg !442
  %46 = load void ()** %app_init.addr, align 8, !dbg !443
  %cmp52 = icmp ne void ()* %46, null, !dbg !443
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !443

if.then53:                                        ; preds = %if.end51
  %47 = load void ()** %app_init.addr, align 8, !dbg !445
  call void %47() #12, !dbg !445
  br label %if.end54, !dbg !447

if.end54:                                         ; preds = %if.then53, %if.end51
  %tobool55 = icmp ne i64 1, 0, !dbg !448
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !448

if.then56:                                        ; preds = %if.end54
  %call57 = call i32* @__errno_location() #15, !dbg !450
  store i32 0, i32* %call57, align 4, !dbg !450
  br label %if.end58, !dbg !450

if.end58:                                         ; preds = %if.then56, %if.end54
  %tobool60 = icmp ne i64 1, 0, !dbg !451
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !451

if.then61:                                        ; preds = %if.end58
  %call62 = call i32* @__h_errno_location() #15, !dbg !453
  store i32 0, i32* %call62, align 4, !dbg !453
  br label %if.end63, !dbg !453

if.end63:                                         ; preds = %if.then61, %if.end58
  %48 = load i32 (i32, i8**, i8**)** %main.addr, align 8, !dbg !454
  %49 = load i32* %argc.addr, align 4, !dbg !454
  %50 = load i8*** %argv.addr, align 8, !dbg !454
  %51 = load i8*** @__environ, align 8, !dbg !454
  %call64 = call i32 %48(i32 %49, i8** %50, i8** %51) #12, !dbg !454
  call void @exit(i32 %call64) #16, !dbg !454
  unreachable, !dbg !454
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat.119*) #5

; Function Attrs: noreturn nounwind
declare void @abort() #4

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
  %call = call i32 @getuid() #13, !dbg !455
  store i32 %call, i32* %uid, align 4, !dbg !455
  %call1 = call i32 @geteuid() #13, !dbg !457
  store i32 %call1, i32* %euid, align 4, !dbg !457
  %call2 = call i32 @getgid() #13, !dbg !458
  store i32 %call2, i32* %gid, align 4, !dbg !458
  %call3 = call i32 @getegid() #13, !dbg !459
  store i32 %call3, i32* %egid, align 4, !dbg !459
  %0 = load i32* %uid, align 4, !dbg !460
  %1 = load i32* %euid, align 4, !dbg !460
  %cmp = icmp eq i32 %0, %1, !dbg !460
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !460

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %gid, align 4, !dbg !460
  %3 = load i32* %egid, align 4, !dbg !460
  %cmp4 = icmp eq i32 %2, %3, !dbg !460
  br i1 %cmp4, label %if.then, label %if.end, !dbg !460

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !462
  br label %return, !dbg !462

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, !dbg !464
  br label %return, !dbg !464

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval, !dbg !465
  ret i32 %4, !dbg !465
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
  %0 = load i32* %fd.addr, align 4, !dbg !466
  %call = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) #12, !dbg !466
  %cmp = icmp eq i32 %call, -1, !dbg !466
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !466

land.rhs:                                         ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !466
  %1 = load i32* %call1, align 4, !dbg !466
  %cmp2 = icmp eq i32 %1, 9, !dbg !466
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
  %3 = load i32* %mode.addr, align 4, !dbg !468
  %call4 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str17, i32 0, i32 0), i32 %3) #12, !dbg !468
  store i32 %call4, i32* %nullfd, align 4, !dbg !468
  %4 = load i32* %nullfd, align 4, !dbg !470
  %5 = load i32* %fd.addr, align 4, !dbg !470
  %cmp5 = icmp ne i32 %4, %5, !dbg !470
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !470

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %fd.addr, align 4, !dbg !470
  %call7 = call i32 @fstat(i32 %6, %struct.stat.119* %st) #13, !dbg !470
  %tobool8 = icmp ne i32 %call7, 0, !dbg !470
  br i1 %tobool8, label %if.then16, label %lor.lhs.false9, !dbg !470

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 3, !dbg !470
  %7 = load i32* %st_mode, align 4, !dbg !470
  %and = and i32 %7, 61440, !dbg !470
  %cmp10 = icmp eq i32 %and, 8192, !dbg !470
  br i1 %cmp10, label %lor.lhs.false12, label %if.then16, !dbg !470

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %st_rdev = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 7, !dbg !470
  %8 = load i64* %st_rdev, align 8, !dbg !470
  %call13 = call i64 @gnu_dev_makedev(i32 1, i32 3) #13, !dbg !472
  %cmp14 = icmp ne i64 %8, %call13, !dbg !472
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !472

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %if.then
  call void @abort() #16, !dbg !473
  unreachable, !dbg !473

if.end17:                                         ; preds = %lor.lhs.false12, %land.end
  ret void, !dbg !475
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #6 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %0 = load i32* %__minor.addr, align 4, !dbg !476
  %and = and i32 %0, 255, !dbg !476
  %1 = load i32* %__major.addr, align 4, !dbg !476
  %and1 = and i32 %1, 4095, !dbg !476
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !476
  %shl = shl i32 %and1, 8, !dbg !476
  %or = or i32 %and, %shl, !dbg !476
  %conv = zext i32 %or to i64, !dbg !476
  %2 = load i32* %__minor.addr, align 4, !dbg !476
  %and2 = and i32 %2, -256, !dbg !476
  %conv3 = zext i32 %and2 to i64, !dbg !476
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !476
  %shl4 = shl i64 %conv3, 12, !dbg !476
  %or5 = or i64 %conv, %shl4, !dbg !476
  %3 = load i32* %__major.addr, align 4, !dbg !476
  %and6 = and i32 %3, -4096, !dbg !476
  %conv7 = zext i32 %and6 to i64, !dbg !476
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !476
  %shl8 = shl i64 %conv7, 32, !dbg !476
  %or9 = or i64 %or5, %shl8, !dbg !476
  ret i64 %or9, !dbg !476
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
entry:
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, align 8, !dbg !478
  store %struct.__STDIO_FILE_STRUCT.376* %0, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !478
  br label %for.cond, !dbg !478

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !478
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT.376* %1, null, !dbg !478
  br i1 %tobool, label %for.body, label %for.end, !dbg !478

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !480
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 0, !dbg !480
  %3 = load i16* %__modeflags, align 2, !dbg !480
  %conv = zext i16 %3 to i32, !dbg !480
  %and = and i32 %conv, 64, !dbg !480
  %tobool1 = icmp ne i32 %and, 0, !dbg !480
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !480

if.then:                                          ; preds = %for.body
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !483
  %call = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* %4) #12, !dbg !483
  br label %for.inc, !dbg !485

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !478
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 9, !dbg !478
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %__nextopen, align 8, !dbg !478
  store %struct.__STDIO_FILE_STRUCT.376* %6, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !478
  br label %for.cond, !dbg !478

for.end:                                          ; preds = %for.cond
  ret void, !dbg !486
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
entry:
  %old_errno = alloca i32, align 4
  %0 = load i32* @errno, align 4, !dbg !487
  store i32 %0, i32* %old_errno, align 4, !dbg !487
  %call = call i32 @isatty(i32 0) #13, !dbg !488
  %sub = sub nsw i32 1, %call, !dbg !488
  %mul = mul i32 %sub, 256, !dbg !488
  %1 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !488
  %conv = zext i16 %1 to i32, !dbg !488
  %xor = xor i32 %conv, %mul, !dbg !488
  %conv1 = trunc i32 %xor to i16, !dbg !488
  store i16 %conv1, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !488
  %call2 = call i32 @isatty(i32 1) #13, !dbg !489
  %sub3 = sub nsw i32 1, %call2, !dbg !489
  %mul4 = mul i32 %sub3, 256, !dbg !489
  %2 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !489
  %conv5 = zext i16 %2 to i32, !dbg !489
  %xor6 = xor i32 %conv5, %mul4, !dbg !489
  %conv7 = trunc i32 %xor6 to i16, !dbg !489
  store i16 %conv7, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !489
  %3 = load i32* %old_errno, align 4, !dbg !490
  store i32 %3, i32* @errno, align 4, !dbg !490
  ret void, !dbg !491
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* noalias %stream) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.376* %stream, %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !492
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %0, i32 0, i32 5, !dbg !492
  %1 = load i8** %__bufpos, align 8, !dbg !492
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !492
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 3, !dbg !492
  %3 = load i8** %__bufstart, align 8, !dbg !492
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !492
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !492
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !492
  store i64 %sub.ptr.sub, i64* %bufsize, align 8, !dbg !492
  %cmp = icmp ne i64 %sub.ptr.sub, 0, !dbg !492
  br i1 %cmp, label %if.then, label %if.end, !dbg !492

if.then:                                          ; preds = %entry
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !494
  %__bufstart1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %4, i32 0, i32 3, !dbg !494
  %5 = load i8** %__bufstart1, align 8, !dbg !494
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !494
  %__bufpos2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %6, i32 0, i32 5, !dbg !494
  store i8* %5, i8** %__bufpos2, align 8, !dbg !494
  %7 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !496
  %8 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !496
  %__bufstart3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %8, i32 0, i32 3, !dbg !496
  %9 = load i8** %__bufstart3, align 8, !dbg !496
  %10 = load i64* %bufsize, align 8, !dbg !496
  %call = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.376* %7, i8* %9, i64 %10) #12, !dbg !496
  br label %if.end, !dbg !497

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !498
  %__bufpos4 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %11, i32 0, i32 5, !dbg !498
  %12 = load i8** %__bufpos4, align 8, !dbg !498
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !498
  %__bufstart5 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 3, !dbg !498
  %14 = load i8** %__bufstart5, align 8, !dbg !498
  %sub.ptr.lhs.cast6 = ptrtoint i8* %12 to i64, !dbg !498
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64, !dbg !498
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !498
  ret i64 %sub.ptr.sub8, !dbg !498
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
  %0 = load i8** %s1.addr, align 8, !dbg !499
  store i8* %0, i8** %r1, align 8, !dbg !499
  %1 = load i8** %s2.addr, align 8, !dbg !500
  store i8* %1, i8** %r2, align 8, !dbg !500
  br label %while.cond, !dbg !501

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !501
  %tobool = icmp ne i64 %2, 0, !dbg !501
  br i1 %tobool, label %while.body, label %while.end, !dbg !501

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !502
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !502
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !502
  %4 = load i8* %3, align 1, !dbg !502
  %5 = load i8** %r1, align 8, !dbg !502
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !502
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !502
  store i8 %4, i8* %5, align 1, !dbg !502
  %6 = load i64* %n.addr, align 8, !dbg !504
  %dec = add i64 %6, -1, !dbg !504
  store i64 %dec, i64* %n.addr, align 8, !dbg !504
  br label %while.cond, !dbg !505

while.end:                                        ; preds = %while.cond
  %7 = load i8** %s1.addr, align 8, !dbg !506
  ret i8* %7, !dbg !506
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
  %0 = load i8** %s.addr, align 8, !dbg !507
  store i8* %0, i8** %p, align 8, !dbg !507
  br label %while.cond, !dbg !508

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %n.addr, align 8, !dbg !508
  %tobool = icmp ne i64 %1, 0, !dbg !508
  br i1 %tobool, label %while.body, label %while.end, !dbg !508

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4, !dbg !509
  %conv = trunc i32 %2 to i8, !dbg !509
  %3 = load i8** %p, align 8, !dbg !509
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !509
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !509
  store i8 %conv, i8* %3, align 1, !dbg !509
  %4 = load i64* %n.addr, align 8, !dbg !511
  %dec = add i64 %4, -1, !dbg !511
  store i64 %dec, i64* %n.addr, align 8, !dbg !511
  br label %while.cond, !dbg !512

while.end:                                        ; preds = %while.cond
  %5 = load i8** %s.addr, align 8, !dbg !513
  ret i8* %5, !dbg !513
}

; Function Attrs: nounwind readonly uwtable
define i8* @strrchr(i8* %s, i32 %c) #7 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* null, i8** %p, align 8, !dbg !514
  br label %do.body, !dbg !515

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8** %s.addr, align 8, !dbg !516
  %1 = load i8* %0, align 1, !dbg !516
  %conv = sext i8 %1 to i32, !dbg !516
  %2 = load i32* %c.addr, align 4, !dbg !516
  %conv1 = trunc i32 %2 to i8, !dbg !516
  %conv2 = sext i8 %conv1 to i32, !dbg !516
  %cmp = icmp eq i32 %conv, %conv2, !dbg !516
  br i1 %cmp, label %if.then, label %do.cond, !dbg !516

if.then:                                          ; preds = %do.body
  %3 = load i8** %s.addr, align 8, !dbg !519
  store i8* %3, i8** %p, align 8, !dbg !519
  br label %do.cond, !dbg !521

do.cond:                                          ; preds = %do.body, %if.then
  %4 = load i8** %s.addr, align 8, !dbg !522
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1, !dbg !522
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !522
  %5 = load i8* %4, align 1, !dbg !522
  %tobool = icmp ne i8 %5, 0, !dbg !522
  br i1 %tobool, label %do.body, label %do.end, !dbg !522

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !523
  ret i8* %6, !dbg !523
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %term = alloca %struct.termios.616, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !524
  %call = call i32 @tcgetattr(i32 %0, %struct.termios.616* %term) #13, !dbg !524
  %cmp = icmp eq i32 %call, 0, !dbg !524
  %conv = zext i1 %cmp to i32, !dbg !524
  ret i32 %conv, !dbg !524
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
  %0 = load i32* %fd.addr, align 4, !dbg !525
  %call = call i32 (i32, i64, ...)* @ioctl(i32 %0, i64 21505, %struct.__kernel_termios* %k_termios) #13, !dbg !525
  store i32 %call, i32* %retval1, align 4, !dbg !525
  %c_iflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !526
  %1 = load i32* %c_iflag, align 4, !dbg !526
  %2 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !526
  %c_iflag2 = getelementptr inbounds %struct.termios.616* %2, i32 0, i32 0, !dbg !526
  store i32 %1, i32* %c_iflag2, align 4, !dbg !526
  %c_oflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !527
  %3 = load i32* %c_oflag, align 4, !dbg !527
  %4 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !527
  %c_oflag3 = getelementptr inbounds %struct.termios.616* %4, i32 0, i32 1, !dbg !527
  store i32 %3, i32* %c_oflag3, align 4, !dbg !527
  %c_cflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !528
  %5 = load i32* %c_cflag, align 4, !dbg !528
  %6 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !528
  %c_cflag4 = getelementptr inbounds %struct.termios.616* %6, i32 0, i32 2, !dbg !528
  store i32 %5, i32* %c_cflag4, align 4, !dbg !528
  %c_lflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !529
  %7 = load i32* %c_lflag, align 4, !dbg !529
  %8 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !529
  %c_lflag5 = getelementptr inbounds %struct.termios.616* %8, i32 0, i32 3, !dbg !529
  store i32 %7, i32* %c_lflag5, align 4, !dbg !529
  %c_line = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !530
  %9 = load i8* %c_line, align 1, !dbg !530
  %10 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !530
  %c_line6 = getelementptr inbounds %struct.termios.616* %10, i32 0, i32 4, !dbg !530
  store i8 %9, i8* %c_line6, align 1, !dbg !530
  %11 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !531
  %c_cc = getelementptr inbounds %struct.termios.616* %11, i32 0, i32 5, !dbg !531
  %arrayidx = getelementptr inbounds [32 x i8]* %c_cc, i32 0, i64 0, !dbg !531
  %c_cc7 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !531
  %arrayidx8 = getelementptr inbounds [19 x i8]* %c_cc7, i32 0, i64 0, !dbg !531
  %call9 = call i8* @mempcpy(i8* %arrayidx, i8* %arrayidx8, i64 19) #13, !dbg !531
  %call10 = call i8* @memset(i8* %call9, i32 0, i64 13) #13, !dbg !531
  %12 = load i32* %retval1, align 4, !dbg !534
  ret i32 %12, !dbg !534
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #5

; Function Attrs: nounwind readnone uwtable
define weak i32* @__errno_location() #8 {
entry:
  ret i32* @errno, !dbg !535
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #8 {
entry:
  ret i32* @h_errno, !dbg !536
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
  %0 = load i64* %bufsize.addr, align 8, !dbg !537
  store i64 %0, i64* %todo, align 8, !dbg !537
  br label %do.body, !dbg !538

do.body:                                          ; preds = %if.then3, %entry
  %1 = load i64* %todo, align 8, !dbg !539
  %cmp = icmp eq i64 %1, 0, !dbg !539
  br i1 %cmp, label %if.then, label %if.end, !dbg !539

if.then:                                          ; preds = %do.body
  %2 = load i64* %bufsize.addr, align 8, !dbg !542
  store i64 %2, i64* %retval, !dbg !542
  br label %do.end32, !dbg !542

if.end:                                           ; preds = %do.body
  %3 = load i64* %todo, align 8, !dbg !544
  %cmp1 = icmp ule i64 %3, 9223372036854775807, !dbg !544
  %4 = load i64* %todo, align 8, !dbg !544
  %cond = select i1 %cmp1, i64 %4, i64 9223372036854775807, !dbg !544
  store i64 %cond, i64* %stodo, align 8, !dbg !544
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !545
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 2, !dbg !545
  %6 = load i32* %__filedes, align 4, !dbg !545
  %7 = load i8** %buf.addr, align 8, !dbg !545
  %8 = load i64* %stodo, align 8, !dbg !545
  %call = call i64 @write(i32 %6, i8* %7, i64 %8) #12, !dbg !545
  store i64 %call, i64* %rv, align 8, !dbg !545
  %cmp2 = icmp sge i64 %call, 0, !dbg !545
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !545

if.then3:                                         ; preds = %if.end
  %9 = load i64* %rv, align 8, !dbg !547
  %10 = load i64* %todo, align 8, !dbg !547
  %sub = sub i64 %10, %9, !dbg !547
  store i64 %sub, i64* %todo, align 8, !dbg !547
  %11 = load i64* %rv, align 8, !dbg !549
  %12 = load i8** %buf.addr, align 8, !dbg !549
  %add.ptr = getelementptr inbounds i8* %12, i64 %11, !dbg !549
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !549
  br label %do.body, !dbg !550

if.else:                                          ; preds = %if.end
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !551
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 0, !dbg !551
  %14 = load i16* %__modeflags, align 2, !dbg !551
  %conv = zext i16 %14 to i32, !dbg !551
  %or = or i32 %conv, 8, !dbg !551
  %conv4 = trunc i32 %or to i16, !dbg !551
  store i16 %conv4, i16* %__modeflags, align 2, !dbg !551
  %15 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !553
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %15, i32 0, i32 4, !dbg !553
  %16 = load i8** %__bufend, align 8, !dbg !553
  %17 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !553
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %17, i32 0, i32 3, !dbg !553
  %18 = load i8** %__bufstart, align 8, !dbg !553
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !553
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !553
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !553
  store i64 %sub.ptr.sub, i64* %stodo, align 8, !dbg !553
  %cmp5 = icmp ne i64 %sub.ptr.sub, 0, !dbg !553
  br i1 %cmp5, label %if.then7, label %if.end28, !dbg !553

if.then7:                                         ; preds = %if.else
  %19 = load i64* %stodo, align 8, !dbg !555
  %20 = load i64* %todo, align 8, !dbg !555
  %cmp8 = icmp ugt i64 %19, %20, !dbg !555
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !555

if.then10:                                        ; preds = %if.then7
  %21 = load i64* %todo, align 8, !dbg !558
  store i64 %21, i64* %stodo, align 8, !dbg !558
  br label %if.end11, !dbg !560

if.end11:                                         ; preds = %if.then10, %if.then7
  %22 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !561
  %__bufstart12 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %22, i32 0, i32 3, !dbg !561
  %23 = load i8** %__bufstart12, align 8, !dbg !561
  store i8* %23, i8** %s, align 8, !dbg !561
  br label %do.body13, !dbg !562

do.body13:                                        ; preds = %if.end20, %if.end11
  %24 = load i8** %buf.addr, align 8, !dbg !563
  %25 = load i8* %24, align 1, !dbg !563
  %26 = load i8** %s, align 8, !dbg !563
  store i8 %25, i8* %26, align 1, !dbg !563
  %conv14 = zext i8 %25 to i32, !dbg !563
  %cmp15 = icmp eq i32 %conv14, 10, !dbg !563
  br i1 %cmp15, label %land.lhs.true, label %if.end20, !dbg !563

land.lhs.true:                                    ; preds = %do.body13
  %27 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !563
  %__modeflags17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %27, i32 0, i32 0, !dbg !563
  %28 = load i16* %__modeflags17, align 2, !dbg !563
  %conv18 = zext i16 %28 to i32, !dbg !563
  %and = and i32 %conv18, 256, !dbg !563
  %tobool = icmp ne i32 %and, 0, !dbg !563
  br i1 %tobool, label %do.end, label %if.end20, !dbg !563

if.end20:                                         ; preds = %land.lhs.true, %do.body13
  %29 = load i8** %s, align 8, !dbg !566
  %incdec.ptr = getelementptr inbounds i8* %29, i32 1, !dbg !566
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !566
  %30 = load i8** %buf.addr, align 8, !dbg !567
  %incdec.ptr21 = getelementptr inbounds i8* %30, i32 1, !dbg !567
  store i8* %incdec.ptr21, i8** %buf.addr, align 8, !dbg !567
  %31 = load i64* %stodo, align 8, !dbg !568
  %dec = add nsw i64 %31, -1, !dbg !568
  store i64 %dec, i64* %stodo, align 8, !dbg !568
  %tobool22 = icmp ne i64 %dec, 0, !dbg !568
  br i1 %tobool22, label %do.body13, label %do.end, !dbg !568

do.end:                                           ; preds = %land.lhs.true, %if.end20
  %32 = load i8** %s, align 8, !dbg !569
  %33 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !569
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %33, i32 0, i32 5, !dbg !569
  store i8* %32, i8** %__bufpos, align 8, !dbg !569
  %34 = load i8** %s, align 8, !dbg !570
  %35 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !570
  %__bufstart23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %35, i32 0, i32 3, !dbg !570
  %36 = load i8** %__bufstart23, align 8, !dbg !570
  %sub.ptr.lhs.cast24 = ptrtoint i8* %34 to i64, !dbg !570
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64, !dbg !570
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !570
  %37 = load i64* %todo, align 8, !dbg !570
  %sub27 = sub i64 %37, %sub.ptr.sub26, !dbg !570
  store i64 %sub27, i64* %todo, align 8, !dbg !570
  br label %if.end28, !dbg !571

if.end28:                                         ; preds = %do.end, %if.else
  %38 = load i64* %bufsize.addr, align 8, !dbg !572
  %39 = load i64* %todo, align 8, !dbg !572
  %sub29 = sub i64 %38, %39, !dbg !572
  store i64 %sub29, i64* %retval, !dbg !572
  br label %do.end32, !dbg !572

do.end32:                                         ; preds = %if.end28, %if.then
  %40 = load i64* %retval, !dbg !573
  ret i64 %40, !dbg !573
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
  %0 = load i8** %s1.addr, align 8, !dbg !574
  store i8* %0, i8** %r1, align 8, !dbg !574
  %1 = load i8** %s2.addr, align 8, !dbg !575
  store i8* %1, i8** %r2, align 8, !dbg !575
  br label %while.cond, !dbg !576

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !576
  %tobool = icmp ne i64 %2, 0, !dbg !576
  br i1 %tobool, label %while.body, label %while.end, !dbg !576

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !577
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !577
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !577
  %4 = load i8* %3, align 1, !dbg !577
  %5 = load i8** %r1, align 8, !dbg !577
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !577
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !577
  store i8 %4, i8* %5, align 1, !dbg !577
  %6 = load i64* %n.addr, align 8, !dbg !579
  %dec = add i64 %6, -1, !dbg !579
  store i64 %dec, i64* %n.addr, align 8, !dbg !579
  br label %while.cond, !dbg !580

while.end:                                        ; preds = %while.cond
  %7 = load i8** %r1, align 8, !dbg !581
  ret i8* %7, !dbg !581
}

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #9 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !582
  br i1 %cmp, label %if.then, label %if.end, !dbg !582

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str36, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str137, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str238, i64 0, i64 0)) #16, !dbg !584
  unreachable, !dbg !584

if.end:                                           ; preds = %entry
  ret void, !dbg !585
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #9 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !586
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #13, !dbg !586
  %1 = load i32* %x, align 4, !dbg !587, !tbaa !588
  ret i32 %1, !dbg !587
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #9 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !592
  br i1 %cmp, label %if.end, label %if.then, !dbg !592

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str339, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #16, !dbg !594
  unreachable, !dbg !594

if.end:                                           ; preds = %entry
  ret void, !dbg !596
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #9 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !597
  br i1 %cmp, label %if.end, label %if.then, !dbg !597

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str640, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1741, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #16, !dbg !599
  unreachable, !dbg !599

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !600
  %cmp1 = icmp eq i32 %add, %end, !dbg !600
  br i1 %cmp1, label %return, label %if.else, !dbg !600

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !602
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #13, !dbg !602
  %cmp3 = icmp eq i32 %start, 0, !dbg !604
  %1 = load i32* %x, align 4, !dbg !606, !tbaa !588
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !604

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !606
  %conv6 = zext i1 %cmp5 to i64, !dbg !606
  call void @klee_assume(i64 %conv6) #13, !dbg !606
  br label %if.end14, !dbg !608

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !609
  %conv10 = zext i1 %cmp8 to i64, !dbg !609
  call void @klee_assume(i64 %conv10) #13, !dbg !609
  %2 = load i32* %x, align 4, !dbg !611, !tbaa !588
  %cmp11 = icmp slt i32 %2, %end, !dbg !611
  %conv13 = zext i1 %cmp11 to i64, !dbg !611
  call void @klee_assume(i64 %conv13) #13, !dbg !611
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !612, !tbaa !588
  br label %return, !dbg !612

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !613
}

declare void @klee_assume(i64) #11

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #9 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !614
  br i1 %cmp, label %return, label %if.end, !dbg !614

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !616
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !616

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !618
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !618

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !618
  %wide.load = load <16 x i8>* %1, align 1, !dbg !618
  %next.gep.sum610 = or i64 %index, 16, !dbg !618
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !618
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !618
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !618
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !618
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !618
  %next.gep136.sum627 = or i64 %index, 16, !dbg !618
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !618
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !618
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !618
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !620

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
  %dec = add i64 %count.addr.028, -1, !dbg !618
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !618
  %8 = load i8* %b.030, align 1, !dbg !618, !tbaa !623
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !618
  store i8 %8, i8* %a.029, align 1, !dbg !618, !tbaa !623
  %tobool = icmp eq i64 %dec, 0, !dbg !618
  br i1 %tobool, label %return, label %while.body, !dbg !618, !llvm.loop !624

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !625
  %tobool832 = icmp eq i64 %count, 0, !dbg !627
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !627

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !628
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !625
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !627
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !627
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !627
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !627
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !627
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !627
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !627
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !627
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !627
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !627
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !627
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !627
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !627
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !627
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !627
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !627
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !627
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !627
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !627
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !627
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !629

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !627
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !627
  %19 = load i8* %b.135, align 1, !dbg !627, !tbaa !623
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !627
  store i8 %19, i8* %a.134, align 1, !dbg !627, !tbaa !623
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !627
  br i1 %tobool8, label %return, label %while.body9, !dbg !627, !llvm.loop !630

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !631
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #5 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use
attributes #7 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #8 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #9 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin nounwind readonly }
attributes #15 = { nobuiltin nounwind readnone }
attributes #16 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0, !16, !60, !109, !140, !152, !160, !167, !174, !199, !207, !212, !218, !250, !258, !268, !278, !288, !300, !314, !328, !342}
!llvm.module.flags = !{!357, !358}
!llvm.ident = !{!359, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360, !360}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himeshi
!1 = metadata !{metadata !"sor.c", metadata !"/home/himeshi/Projects/workspace/SORScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 136, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @__user_main, null, null, metadata !2, i32 136} ; [ DW_TAG_subpr
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/SORScimark/sor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SOR_execute", metadata !"SOR_execute", metadata !"", i32 153, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, [6 x i32]*, i32)* @SOR_execute, nu
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !12, metadata !8}
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !14, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!16 = metadata !{i32 786449, metadata !17, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !18, metadata !46, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!17 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!18 = metadata !{metadata !19, metadata !23, metadata !24, metadata !35, metadata !38, metadata !45}
!19 = metadata !{i32 786478, metadata !17, metadata !20, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadata !2
!20 = metadata !{i32 786473, metadata !17}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null}
!23 = metadata !{i32 786478, metadata !17, metadata !20, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadata !2
!24 = metadata !{i32 786478, metadata !17, metadata !20, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, void ()
!25 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !27, metadata !8, metadata !30, metadata !33, metadata !33, metadata !33, metadata !34}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !8, metadata !8, metadata !30, metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!35 = metadata !{i32 786478, metadata !17, metadata !20, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, null, m
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !8, metadata !8}
!38 = metadata !{i32 786478, metadata !39, metadata !40, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, null, 
!39 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!40 = metadata !{i32 786473, metadata !39}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !44}
!43 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!45 = metadata !{i32 786478, metadata !17, metadata !20, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2, i32 
!46 = metadata !{metadata !47, metadata !48, metadata !51, metadata !52, metadata !53, metadata !54, metadata !57, metadata !58, metadata !59}
!47 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !20, i32 52, metadata !34, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!48 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !20, i32 110, metadata !49, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110] [
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!50 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!51 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_short_name", metadata !"program_invocation_short_name", metadata !"", metadata !20, i32 112, metadata !49, i32 0, i32 1, i8** @program_invocation_short_name, null} ; [ DW_TAG_variabl
!52 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_name", metadata !"program_invocation_name", metadata !"", metadata !20, i32 113, metadata !49, i32 0, i32 1, i8** @program_invocation_name, null} ; [ DW_TAG_variable ] [program_invoc
!53 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !20, i32 125, metadata !30, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!54 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !20, i32 129, metadata !55, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!55 = metadata !{i32 786454, metadata !17, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!56 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!57 = metadata !{i32 786484, i32 0, metadata !19, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !20, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ] [b
!58 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !20, i32 244, metadata !33, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!59 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !20, i32 247, metadata !33, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!60 = metadata !{i32 786449, metadata !61, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !62, metadata !66, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!61 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!62 = metadata !{metadata !63, metadata !65}
!63 = metadata !{i32 786478, metadata !61, metadata !64, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, i32 
!64 = metadata !{i32 786473, metadata !61}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!65 = metadata !{i32 786478, metadata !61, metadata !64, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, i32 
!66 = metadata !{metadata !67, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!67 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !64, i32 154, metadata !68, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!69 = metadata !{i32 786454, metadata !61, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!70 = metadata !{i32 786451, metadata !71, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset
!71 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!72 = metadata !{metadata !73, metadata !75, metadata !80, metadata !81, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !90, metadata !93}
!73 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !76} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!76 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !77, metadata !78, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!77 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!80 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!81 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!83 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!84 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!85 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!86 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!87 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!88 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !89} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!90 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !91} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !92, metadata !78, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!92 = metadata !{i32 786454, metadata !71, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!93 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !94} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!94 = metadata !{i32 786454, metadata !71, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786451, metadata !96, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !97, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!96 = metadata !{metadata !"./include/wchar.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!99 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !92} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!100 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !64, i32 155, metadata !68, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!101 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !64, i32 156, metadata !68, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!102 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !64, i32 159, metadata !68, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!103 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !64, i32 162, metadata !68, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!104 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !64, i32 180, metadata !68, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdio_
!105 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !64, i32 131, metadata !106, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_std
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !69, metadata !107, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!109 = metadata !{i32 786449, metadata !110, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !111, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!110 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786478, metadata !110, metadata !113, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*)* @
!113 = metadata !{i32 786473, metadata !110}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!114 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786454, metadata !110, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!117 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!119 = metadata !{i32 786454, metadata !110, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!120 = metadata !{i32 786451, metadata !71, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !133, metadata !134}
!122 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!123 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !76} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!124 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!125 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!126 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!127 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!128 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!129 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!130 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!131 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !132} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!133 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !91} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!134 = metadata !{i32 786445, metadata !71, metadata !120, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !135} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!135 = metadata !{i32 786454, metadata !71, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!136 = metadata !{i32 786451, metadata !96, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!137 = metadata !{metadata !138, metadata !139}
!138 = metadata !{i32 786445, metadata !96, metadata !136, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!139 = metadata !{i32 786445, metadata !96, metadata !136, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !92} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!140 = metadata !{i32 786449, metadata !141, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !142, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!141 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786478, metadata !141, metadata !144, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 
!144 = metadata !{i32 786473, metadata !141}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!145 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{metadata !34, metadata !147, metadata !148, metadata !151}
!147 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!150 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{i32 786454, metadata !141, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!152 = metadata !{i32 786449, metadata !153, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !154, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!153 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786478, metadata !153, metadata !156, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 
!156 = metadata !{i32 786473, metadata !153}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!157 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{metadata !34, metadata !34, metadata !8, metadata !159}
!159 = metadata !{i32 786454, metadata !153, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!160 = metadata !{i32 786449, metadata !161, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !162, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!161 = metadata !{metadata !"libc/string/strrchr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 786478, metadata !161, metadata !164, metadata !"strrchr", metadata !"strrchr", metadata !"", i32 17, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr, null, null, metadata !2, i32 18
!164 = metadata !{i32 786473, metadata !161}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!165 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !31, metadata !49, metadata !8}
!167 = metadata !{i32 786449, metadata !168, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !169, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!168 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 786478, metadata !168, metadata !171, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW
!171 = metadata !{i32 786473, metadata !168}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/isatty.c]
!172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !8, metadata !8}
!174 = metadata !{i32 786449, metadata !175, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !176, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!175 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 786478, metadata !175, metadata !178, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.616*)* @tcgetattr, null, nu
!178 = metadata !{i32 786473, metadata !175}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!179 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !8, metadata !8, metadata !181}
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!182 = metadata !{i32 786451, metadata !183, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !184, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!183 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!184 = metadata !{metadata !185, metadata !187, metadata !188, metadata !189, metadata !190, metadata !192, metadata !196, metadata !198}
!185 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!186 = metadata !{i32 786454, metadata !183, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!187 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !186} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!188 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !186} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!189 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !186} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!190 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !191} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!191 = metadata !{i32 786454, metadata !183, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!192 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !193} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!193 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !191, metadata !194, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!194 = metadata !{metadata !195}
!195 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!196 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !197} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!197 = metadata !{i32 786454, metadata !183, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!198 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !197} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!199 = metadata !{i32 786449, metadata !200, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !201, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!200 = metadata !{metadata !"libc/misc/internals/__errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!201 = metadata !{metadata !202}
!202 = metadata !{i32 786478, metadata !200, metadata !203, metadata !"__errno_location", metadata !"__errno_location", metadata !"", i32 11, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_location, null, null,
!203 = metadata !{i32 786473, metadata !200}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__errno_location.c]
!204 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !206}
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!207 = metadata !{i32 786449, metadata !208, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !209, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!208 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786478, metadata !208, metadata !211, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null,
!211 = metadata !{i32 786473, metadata !208}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__h_errno_location.c]
!212 = metadata !{i32 786449, metadata !213, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !214, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!213 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!214 = metadata !{metadata !215, metadata !217}
!215 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !216, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!216 = metadata !{i32 786473, metadata !213}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/errno.c]
!217 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !216, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!218 = metadata !{i32 786449, metadata !219, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !220, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!219 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!220 = metadata !{metadata !221}
!221 = metadata !{i32 786478, metadata !219, metadata !222, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*, i8*, i
!222 = metadata !{i32 786473, metadata !219}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!223 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226, metadata !248, metadata !225}
!225 = metadata !{i32 786454, metadata !219, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!227 = metadata !{i32 786454, metadata !219, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!228 = metadata !{i32 786451, metadata !71, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !229, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!229 = metadata !{metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !241, metadata !242}
!230 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!231 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !76} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!232 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!233 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!234 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!235 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!236 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!237 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!238 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !82} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!239 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !240} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!241 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !91} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!242 = metadata !{i32 786445, metadata !71, metadata !228, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !243} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!243 = metadata !{i32 786454, metadata !71, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!244 = metadata !{i32 786451, metadata !96, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !245, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!245 = metadata !{metadata !246, metadata !247}
!246 = metadata !{i32 786445, metadata !96, metadata !244, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!247 = metadata !{i32 786445, metadata !96, metadata !244, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !92} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!248 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!249 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!250 = metadata !{i32 786449, metadata !251, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !252, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!251 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786478, metadata !251, metadata !254, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2, i
!254 = metadata !{i32 786473, metadata !251}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!255 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{metadata !34, metadata !147, metadata !148, metadata !257}
!257 = metadata !{i32 786454, metadata !251, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!258 = metadata !{i32 786449, metadata !259, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !260, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!259 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!260 = metadata !{metadata !261}
!261 = metadata !{i32 786478, metadata !259, metadata !262, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !263, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!262 = metadata !{i32 786473, metadata !259}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!263 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!264 = metadata !{null, metadata !265}
!265 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!266 = metadata !{metadata !267}
!267 = metadata !{i32 786689, metadata !261, metadata !"z", metadata !262, i32 16777228, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!268 = metadata !{i32 786449, metadata !269, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !270, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!269 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786478, metadata !269, metadata !272, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !275, i32 13}
!272 = metadata !{i32 786473, metadata !269}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c]
!273 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!274 = metadata !{metadata !8, metadata !49}
!275 = metadata !{metadata !276, metadata !277}
!276 = metadata !{i32 786689, metadata !271, metadata !"name", metadata !272, i32 16777229, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!277 = metadata !{i32 786688, metadata !271, metadata !"x", metadata !272, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!278 = metadata !{i32 786449, metadata !279, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !280, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!279 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!280 = metadata !{metadata !281}
!281 = metadata !{i32 786478, metadata !279, metadata !282, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !283, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!282 = metadata !{i32 786473, metadata !279}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!283 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!284 = metadata !{null, metadata !43, metadata !43}
!285 = metadata !{metadata !286, metadata !287}
!286 = metadata !{i32 786689, metadata !281, metadata !"bitWidth", metadata !282, i32 16777236, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!287 = metadata !{i32 786689, metadata !281, metadata !"shift", metadata !282, i32 33554452, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!288 = metadata !{i32 786449, metadata !289, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !290, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!289 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!290 = metadata !{metadata !291}
!291 = metadata !{i32 786478, metadata !289, metadata !292, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!292 = metadata !{i32 786473, metadata !289}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!293 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{metadata !8, metadata !8, metadata !8, metadata !49}
!295 = metadata !{metadata !296, metadata !297, metadata !298, metadata !299}
!296 = metadata !{i32 786689, metadata !291, metadata !"start", metadata !292, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!297 = metadata !{i32 786689, metadata !291, metadata !"end", metadata !292, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!298 = metadata !{i32 786689, metadata !291, metadata !"name", metadata !292, i32 50331661, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!299 = metadata !{i32 786688, metadata !291, metadata !"x", metadata !292, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!300 = metadata !{i32 786449, metadata !301, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !302, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!301 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!302 = metadata !{metadata !303}
!303 = metadata !{i32 786478, metadata !301, metadata !304, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !305, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !308, i32
!304 = metadata !{i32 786473, metadata !301}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c]
!305 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{metadata !34, metadata !34, metadata !149, metadata !307}
!307 = metadata !{i32 786454, metadata !301, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!308 = metadata !{metadata !309, metadata !310, metadata !311, metadata !312, metadata !313}
!309 = metadata !{i32 786689, metadata !303, metadata !"destaddr", metadata !304, i32 16777228, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!310 = metadata !{i32 786689, metadata !303, metadata !"srcaddr", metadata !304, i32 33554444, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!311 = metadata !{i32 786689, metadata !303, metadata !"len", metadata !304, i32 50331660, metadata !307, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!312 = metadata !{i32 786688, metadata !303, metadata !"dest", metadata !304, i32 13, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!313 = metadata !{i32 786688, metadata !303, metadata !"src", metadata !304, i32 14, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!314 = metadata !{i32 786449, metadata !315, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !316, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!315 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!316 = metadata !{metadata !317}
!317 = metadata !{i32 786478, metadata !315, metadata !318, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !322, 
!318 = metadata !{i32 786473, metadata !315}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{metadata !34, metadata !34, metadata !149, metadata !321}
!321 = metadata !{i32 786454, metadata !315, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!322 = metadata !{metadata !323, metadata !324, metadata !325, metadata !326, metadata !327}
!323 = metadata !{i32 786689, metadata !317, metadata !"dst", metadata !318, i32 16777228, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!324 = metadata !{i32 786689, metadata !317, metadata !"src", metadata !318, i32 33554444, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!325 = metadata !{i32 786689, metadata !317, metadata !"count", metadata !318, i32 50331660, metadata !321, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!326 = metadata !{i32 786688, metadata !317, metadata !"a", metadata !318, i32 13, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!327 = metadata !{i32 786688, metadata !317, metadata !"b", metadata !318, i32 14, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!328 = metadata !{i32 786449, metadata !329, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !330, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!329 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786478, metadata !329, metadata !332, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !336, 
!332 = metadata !{i32 786473, metadata !329}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c]
!333 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !34, metadata !34, metadata !149, metadata !335}
!335 = metadata !{i32 786454, metadata !329, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!336 = metadata !{metadata !337, metadata !338, metadata !339, metadata !340, metadata !341}
!337 = metadata !{i32 786689, metadata !331, metadata !"destaddr", metadata !332, i32 16777227, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!338 = metadata !{i32 786689, metadata !331, metadata !"srcaddr", metadata !332, i32 33554443, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!339 = metadata !{i32 786689, metadata !331, metadata !"len", metadata !332, i32 50331659, metadata !335, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!340 = metadata !{i32 786688, metadata !331, metadata !"dest", metadata !332, i32 12, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!341 = metadata !{i32 786688, metadata !331, metadata !"src", metadata !332, i32 13, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!342 = metadata !{i32 786449, metadata !343, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !344, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!343 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!344 = metadata !{metadata !345}
!345 = metadata !{i32 786478, metadata !343, metadata !346, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !347, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !350, i32
!346 = metadata !{i32 786473, metadata !343}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c]
!347 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{metadata !34, metadata !34, metadata !8, metadata !349}
!349 = metadata !{i32 786454, metadata !343, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!350 = metadata !{metadata !351, metadata !352, metadata !353, metadata !354}
!351 = metadata !{i32 786689, metadata !345, metadata !"dst", metadata !346, i32 16777227, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!352 = metadata !{i32 786689, metadata !345, metadata !"s", metadata !346, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!353 = metadata !{i32 786689, metadata !345, metadata !"count", metadata !346, i32 50331659, metadata !349, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!354 = metadata !{i32 786688, metadata !345, metadata !"a", metadata !346, i32 12, metadata !355, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!355 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !356} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!356 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!357 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!358 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!359 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!360 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!361 = metadata !{i32 137, i32 0, metadata !4, null}
!362 = metadata !{i32 138, i32 0, metadata !4, null}
!363 = metadata !{i32 142, i32 0, metadata !4, null}
!364 = metadata !{i32 143, i32 0, metadata !4, null}
!365 = metadata !{i32 145, i32 0, metadata !4, null}
!366 = metadata !{i32 146, i32 0, metadata !4, null}
!367 = metadata !{i32 148, i32 0, metadata !4, null}
!368 = metadata !{i32 150, i32 0, metadata !4, null}
!369 = metadata !{i32 155, i32 0, metadata !9, null}
!370 = metadata !{i32 156, i32 0, metadata !9, null}
!371 = metadata !{i32 158, i32 0, metadata !9, null}
!372 = metadata !{i32 159, i32 0, metadata !9, null}
!373 = metadata !{i32 162, i32 0, metadata !9, null}
!374 = metadata !{i32 163, i32 0, metadata !9, null}
!375 = metadata !{i32 171, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !9, i32 171, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SORScimark/sor.c]
!377 = metadata !{i32 172, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !379, i32 172, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SORScimark/sor.c]
!379 = metadata !{i32 786443, metadata !1, metadata !376, i32 171, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SORScimark/sor.c]
!380 = metadata !{i32 173, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !378, i32 172, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SORScimark/sor.c]
!382 = metadata !{i32 174, i32 0, metadata !381, null}
!383 = metadata !{i32 175, i32 0, metadata !381, null}
!384 = metadata !{i32 176, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !381, i32 176, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SORScimark/sor.c]
!386 = metadata !{i32 177, i32 0, metadata !385, null}
!387 = metadata !{i32 182, i32 0, metadata !9, null}
!388 = metadata !{i32 191, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !17, metadata !19, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!390 = metadata !{i32 193, i32 0, metadata !19, null}
!391 = metadata !{i32 197, i32 0, metadata !19, null}
!392 = metadata !{i32 238, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !17, metadata !19, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!394 = metadata !{i32 239, i32 0, metadata !393, null}
!395 = metadata !{i32 240, i32 0, metadata !19, null}
!396 = metadata !{i32 263, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !17, metadata !23, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!398 = metadata !{i32 264, i32 0, metadata !397, null}
!399 = metadata !{i32 266, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !17, metadata !23, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!401 = metadata !{i32 267, i32 0, metadata !400, null}
!402 = metadata !{i32 268, i32 0, metadata !23, null}
!403 = metadata !{i32 288, i32 0, metadata !24, null}
!404 = metadata !{i32 291, i32 0, metadata !24, null}
!405 = metadata !{i32 294, i32 0, metadata !24, null}
!406 = metadata !{i32 298, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !17, metadata !24, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!408 = metadata !{i32 300, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !17, metadata !407, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!410 = metadata !{i32 301, i32 0, metadata !409, null}
!411 = metadata !{i32 305, i32 0, metadata !24, null}
!412 = metadata !{i32 306, i32 0, metadata !24, null}
!413 = metadata !{i32 307, i32 0, metadata !24, null}
!414 = metadata !{i32 308, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !17, metadata !24, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!416 = metadata !{i32 311, i32 0, metadata !24, null}
!417 = metadata !{i32 312, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !17, metadata !24, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!419 = metadata !{i32 313, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !17, metadata !418, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!421 = metadata !{i32 314, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !17, metadata !420, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!423 = metadata !{i32 315, i32 0, metadata !422, null}
!424 = metadata !{i32 316, i32 0, metadata !418, null}
!425 = metadata !{i32 317, i32 0, metadata !418, null}
!426 = metadata !{i32 323, i32 0, metadata !24, null}
!427 = metadata !{i32 327, i32 0, metadata !24, null}
!428 = metadata !{i32 331, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !17, metadata !24, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!430 = metadata !{i32 336, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !17, metadata !429, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!432 = metadata !{i32 337, i32 0, metadata !431, null}
!433 = metadata !{i32 338, i32 0, metadata !431, null}
!434 = metadata !{i32 339, i32 0, metadata !431, null}
!435 = metadata !{i32 342, i32 0, metadata !24, null}
!436 = metadata !{i32 344, i32 0, metadata !24, null}
!437 = metadata !{i32 345, i32 0, metadata !24, null}
!438 = metadata !{i32 346, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !17, metadata !24, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!440 = metadata !{i32 347, i32 0, metadata !439, null}
!441 = metadata !{i32 349, i32 0, metadata !439, null}
!442 = metadata !{i32 354, i32 0, metadata !24, null}
!443 = metadata !{i32 370, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !17, metadata !24, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!445 = metadata !{i32 371, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !17, metadata !444, i32 370, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!447 = metadata !{i32 372, i32 0, metadata !446, null}
!448 = metadata !{i32 391, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !17, metadata !24, i32 391, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!450 = metadata !{i32 392, i32 0, metadata !449, null}
!451 = metadata !{i32 395, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !17, metadata !24, i32 395, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!453 = metadata !{i32 396, i32 0, metadata !452, null}
!454 = metadata !{i32 401, i32 0, metadata !24, null}
!455 = metadata !{i32 160, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !17, metadata !45} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!457 = metadata !{i32 161, i32 0, metadata !456, null}
!458 = metadata !{i32 162, i32 0, metadata !456, null}
!459 = metadata !{i32 163, i32 0, metadata !456, null}
!460 = metadata !{i32 165, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !17, metadata !456, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!462 = metadata !{i32 166, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !17, metadata !461, i32 165, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!464 = metadata !{i32 168, i32 0, metadata !456, null}
!465 = metadata !{i32 169, i32 0, metadata !456, null}
!466 = metadata !{i32 139, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !17, metadata !35, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!468 = metadata !{i32 143, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !17, metadata !467, i32 140, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!470 = metadata !{i32 147, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !17, metadata !469, i32 147, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!472 = metadata !{i32 148, i32 18, metadata !471, null}
!473 = metadata !{i32 150, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !17, metadata !471, i32 149, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!475 = metadata !{i32 153, i32 0, metadata !35, null}
!476 = metadata !{i32 56, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !39, metadata !38} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!478 = metadata !{i32 258, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !61, metadata !63, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!480 = metadata !{i32 261, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !61, metadata !482, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!482 = metadata !{i32 786443, metadata !61, metadata !479, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!483 = metadata !{i32 262, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !61, metadata !481, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!485 = metadata !{i32 263, i32 0, metadata !484, null}
!486 = metadata !{i32 274, i32 0, metadata !63, null}
!487 = metadata !{i32 280, i32 0, metadata !65, null}
!488 = metadata !{i32 282, i32 0, metadata !65, null}
!489 = metadata !{i32 283, i32 0, metadata !65, null}
!490 = metadata !{i32 284, i32 0, metadata !65, null}
!491 = metadata !{i32 291, i32 0, metadata !65, null}
!492 = metadata !{i32 23, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !110, metadata !112, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!494 = metadata !{i32 24, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !110, metadata !493, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!496 = metadata !{i32 25, i32 0, metadata !495, null}
!497 = metadata !{i32 26, i32 0, metadata !495, null}
!498 = metadata !{i32 28, i32 0, metadata !112, null}
!499 = metadata !{i32 20, i32 0, metadata !143, null}
!500 = metadata !{i32 21, i32 0, metadata !143, null}
!501 = metadata !{i32 28, i32 0, metadata !143, null}
!502 = metadata !{i32 29, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !141, metadata !143, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!504 = metadata !{i32 30, i32 0, metadata !503, null}
!505 = metadata !{i32 31, i32 0, metadata !503, null}
!506 = metadata !{i32 34, i32 0, metadata !143, null}
!507 = metadata !{i32 19, i32 0, metadata !155, null}
!508 = metadata !{i32 27, i32 0, metadata !155, null}
!509 = metadata !{i32 28, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !153, metadata !155, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!511 = metadata !{i32 29, i32 0, metadata !510, null}
!512 = metadata !{i32 30, i32 0, metadata !510, null}
!513 = metadata !{i32 32, i32 0, metadata !155, null}
!514 = metadata !{i32 21, i32 0, metadata !163, null}
!515 = metadata !{i32 22, i32 0, metadata !163, null}
!516 = metadata !{i32 23, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !161, metadata !518, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!518 = metadata !{i32 786443, metadata !161, metadata !163, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!519 = metadata !{i32 24, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !161, metadata !517, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!521 = metadata !{i32 25, i32 0, metadata !520, null}
!522 = metadata !{i32 26, i32 0, metadata !518, null}
!523 = metadata !{i32 28, i32 0, metadata !163, null}
!524 = metadata !{i32 30, i32 0, metadata !170, null}
!525 = metadata !{i32 43, i32 0, metadata !177, null}
!526 = metadata !{i32 45, i32 0, metadata !177, null}
!527 = metadata !{i32 46, i32 0, metadata !177, null}
!528 = metadata !{i32 47, i32 0, metadata !177, null}
!529 = metadata !{i32 48, i32 0, metadata !177, null}
!530 = metadata !{i32 49, i32 0, metadata !177, null}
!531 = metadata !{i32 61, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !175, metadata !533, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!533 = metadata !{i32 786443, metadata !175, metadata !177, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!534 = metadata !{i32 79, i32 0, metadata !177, null}
!535 = metadata !{i32 13, i32 0, metadata !202, null}
!536 = metadata !{i32 12, i32 0, metadata !210, null}
!537 = metadata !{i32 44, i32 0, metadata !221, null}
!538 = metadata !{i32 46, i32 0, metadata !221, null}
!539 = metadata !{i32 47, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !219, metadata !541, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!541 = metadata !{i32 786443, metadata !219, metadata !221, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!542 = metadata !{i32 49, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !219, metadata !540, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!544 = metadata !{i32 51, i32 0, metadata !541, null}
!545 = metadata !{i32 52, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !219, metadata !541, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!547 = metadata !{i32 62, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !219, metadata !546, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!549 = metadata !{i32 63, i32 0, metadata !548, null}
!550 = metadata !{i32 101, i32 0, metadata !541, null}
!551 = metadata !{i32 70, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !219, metadata !546, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!553 = metadata !{i32 73, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !219, metadata !552, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!555 = metadata !{i32 76, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !219, metadata !557, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!557 = metadata !{i32 786443, metadata !219, metadata !554, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!558 = metadata !{i32 77, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !219, metadata !556, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!560 = metadata !{i32 78, i32 0, metadata !559, null}
!561 = metadata !{i32 80, i32 0, metadata !557, null}
!562 = metadata !{i32 82, i32 0, metadata !557, null}
!563 = metadata !{i32 83, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !219, metadata !565, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!565 = metadata !{i32 786443, metadata !219, metadata !557, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!566 = metadata !{i32 88, i32 0, metadata !565, null}
!567 = metadata !{i32 89, i32 0, metadata !565, null}
!568 = metadata !{i32 90, i32 0, metadata !565, null}
!569 = metadata !{i32 92, i32 0, metadata !557, null}
!570 = metadata !{i32 94, i32 0, metadata !557, null}
!571 = metadata !{i32 95, i32 0, metadata !557, null}
!572 = metadata !{i32 99, i32 0, metadata !552, null}
!573 = metadata !{i32 102, i32 0, metadata !221, null}
!574 = metadata !{i32 22, i32 0, metadata !253, null}
!575 = metadata !{i32 23, i32 0, metadata !253, null}
!576 = metadata !{i32 30, i32 0, metadata !253, null}
!577 = metadata !{i32 31, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !251, metadata !253, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!579 = metadata !{i32 32, i32 0, metadata !578, null}
!580 = metadata !{i32 33, i32 0, metadata !578, null}
!581 = metadata !{i32 36, i32 0, metadata !253, null}
!582 = metadata !{i32 13, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !259, metadata !261, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!584 = metadata !{i32 14, i32 0, metadata !583, null}
!585 = metadata !{i32 15, i32 0, metadata !261, null}
!586 = metadata !{i32 15, i32 0, metadata !271, null}
!587 = metadata !{i32 16, i32 0, metadata !271, null}
!588 = metadata !{metadata !589, metadata !589, i64 0}
!589 = metadata !{metadata !"int", metadata !590, i64 0}
!590 = metadata !{metadata !"omnipotent char", metadata !591, i64 0}
!591 = metadata !{metadata !"Simple C/C++ TBAA"}
!592 = metadata !{i32 21, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !279, metadata !281, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!594 = metadata !{i32 27, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !279, metadata !593, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!596 = metadata !{i32 29, i32 0, metadata !281, null}
!597 = metadata !{i32 16, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !289, metadata !291, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!599 = metadata !{i32 17, i32 0, metadata !598, null}
!600 = metadata !{i32 19, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !289, metadata !291, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!602 = metadata !{i32 22, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !289, metadata !601, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!604 = metadata !{i32 25, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !289, metadata !603, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!606 = metadata !{i32 26, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !289, metadata !605, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!608 = metadata !{i32 27, i32 0, metadata !607, null}
!609 = metadata !{i32 28, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !289, metadata !605, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!611 = metadata !{i32 29, i32 0, metadata !610, null}
!612 = metadata !{i32 32, i32 0, metadata !603, null}
!613 = metadata !{i32 34, i32 0, metadata !291, null}
!614 = metadata !{i32 16, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !315, metadata !317, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!616 = metadata !{i32 19, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !315, metadata !317, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!618 = metadata !{i32 20, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !315, metadata !617, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!620 = metadata !{metadata !620, metadata !621, metadata !622}
!621 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!622 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!623 = metadata !{metadata !590, metadata !590, i64 0}
!624 = metadata !{metadata !624, metadata !621, metadata !622}
!625 = metadata !{i32 22, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !315, metadata !617, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!627 = metadata !{i32 24, i32 0, metadata !626, null}
!628 = metadata !{i32 23, i32 0, metadata !626, null}
!629 = metadata !{metadata !629, metadata !621, metadata !622}
!630 = metadata !{metadata !630, metadata !621, metadata !622}
!631 = metadata !{i32 28, i32 0, metadata !317, null}
