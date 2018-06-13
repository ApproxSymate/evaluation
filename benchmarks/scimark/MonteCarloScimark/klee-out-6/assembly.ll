; ModuleID = './montecarlo.bc'
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
@.str1 = private unnamed_addr constant [11 x i8] c"__arr32__y\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"x_err\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"y_err\00", align 1
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
  %under_curve = alloca i32, align 4
  %count = alloca i32, align 4
  %result = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  %y = alloca [3 x i32], align 4
  %Num_samples = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %under_curve, align 4, !dbg !354
  store i32 3, i32* %Num_samples, align 4, !dbg !355
  %2 = getelementptr inbounds [3 x i32]* %x, i32 0, i32 0, !dbg !356
  %3 = bitcast i32* %2 to i8*, !dbg !356
  call void @klee_make_symbolic(i8* %3, i64 12, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)), !dbg !356
  %4 = getelementptr inbounds [3 x i32]* %y, i32 0, i32 0, !dbg !357
  %5 = bitcast i32* %4 to i8*, !dbg !357
  call void @klee_make_symbolic(i8* %5, i64 12, i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !dbg !357
  %6 = bitcast [3 x i32]* %x to i8*, !dbg !358
  call void @klee_track_error(i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !358
  %7 = bitcast [3 x i32]* %y to i8*, !dbg !359
  call void @klee_track_error(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)), !dbg !359
  store i32 0, i32* %count, align 4, !dbg !360
  br label %8, !dbg !360

; <label>:8                                       ; preds = %36, %0
  %9 = load i32* %count, align 4, !dbg !360
  %10 = load i32* %Num_samples, align 4, !dbg !360
  %11 = icmp slt i32 %9, %10, !dbg !360
  br i1 %11, label %12, label %39, !dbg !360

; <label>:12                                      ; preds = %8
  %13 = load i32* %count, align 4, !dbg !362
  %14 = sext i32 %13 to i64, !dbg !362
  %15 = getelementptr inbounds [3 x i32]* %x, i32 0, i64 %14, !dbg !362
  %16 = load i32* %15, align 4, !dbg !362
  %17 = load i32* %count, align 4, !dbg !362
  %18 = sext i32 %17 to i64, !dbg !362
  %19 = getelementptr inbounds [3 x i32]* %x, i32 0, i64 %18, !dbg !362
  %20 = load i32* %19, align 4, !dbg !362
  %21 = mul nsw i32 %16, %20, !dbg !362
  %22 = load i32* %count, align 4, !dbg !362
  %23 = sext i32 %22 to i64, !dbg !362
  %24 = getelementptr inbounds [3 x i32]* %y, i32 0, i64 %23, !dbg !362
  %25 = load i32* %24, align 4, !dbg !362
  %26 = load i32* %count, align 4, !dbg !362
  %27 = sext i32 %26 to i64, !dbg !362
  %28 = getelementptr inbounds [3 x i32]* %y, i32 0, i64 %27, !dbg !362
  %29 = load i32* %28, align 4, !dbg !362
  %30 = mul nsw i32 %25, %29, !dbg !362
  %31 = add nsw i32 %21, %30, !dbg !362
  %32 = icmp sle i32 %31, 1, !dbg !362
  br i1 %32, label %33, label %36, !dbg !362

; <label>:33                                      ; preds = %12
  %34 = load i32* %under_curve, align 4, !dbg !365
  %35 = add nsw i32 %34, 1, !dbg !365
  store i32 %35, i32* %under_curve, align 4, !dbg !365
  br label %36, !dbg !365

; <label>:36                                      ; preds = %12, %33
  %37 = load i32* %count, align 4, !dbg !360
  %38 = add nsw i32 %37, 1, !dbg !360
  store i32 %38, i32* %count, align 4, !dbg !360
  br label %8, !dbg !360

; <label>:39                                      ; preds = %8
  %40 = load i32* %under_curve, align 4, !dbg !366
  %41 = load i32* %Num_samples, align 4, !dbg !366
  %int_cast_to_i64 = zext i32 %41 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !366
  %42 = sdiv i32 %40, %41, !dbg !366
  %43 = mul nsw i32 %42, 4, !dbg !366
  store i32 %43, i32* %result, align 4, !dbg !366
  ret i32 0, !dbg !367
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_track_error(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
entry:
  %0 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !368
  %tobool = icmp ne i32 %0, 0, !dbg !368
  br i1 %tobool, label %if.end3, label %if.end, !dbg !368

if.end:                                           ; preds = %entry
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !370
  %inc = add nsw i32 %1, 1, !dbg !370
  store i32 %inc, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !370
  store i64 4096, i64* @__pagesize, align 8, !dbg !371
  %tobool1 = icmp ne i64 1, 0, !dbg !372
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !372

if.then2:                                         ; preds = %if.end
  call void @_stdio_init() #12, !dbg !374
  br label %if.end3, !dbg !374

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !375
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !376
  %cmp = icmp ne void ()* %0, null, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %1 = load void ()** @__app_fini, align 8, !dbg !378
  call void %1() #12, !dbg !378
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  %2 = load void ()** @__rtld_fini, align 8, !dbg !379
  %cmp1 = icmp ne void ()* %2, null, !dbg !379
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !379

if.then2:                                         ; preds = %if.end
  %3 = load void ()** @__rtld_fini, align 8, !dbg !381
  call void %3() #12, !dbg !381
  br label %if.end3, !dbg !381

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !382
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
  %0 = load i8** %stack_end.addr, align 8, !dbg !383
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !383
  %1 = load void ()** %rtld_fini.addr, align 8, !dbg !384
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !384
  %2 = load i32* %argc.addr, align 4, !dbg !385
  %add = add nsw i32 %2, 1, !dbg !385
  %idxprom = sext i32 %add to i64, !dbg !385
  %3 = load i8*** %argv.addr, align 8, !dbg !385
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !385
  store i8** %arrayidx, i8*** @__environ, align 8, !dbg !385
  %4 = load i8*** @__environ, align 8, !dbg !386
  %5 = bitcast i8** %4 to i8*, !dbg !386
  %6 = load i8*** %argv.addr, align 8, !dbg !386
  %7 = load i8** %6, align 8, !dbg !386
  %cmp = icmp eq i8* %5, %7, !dbg !386
  br i1 %cmp, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %8 = load i32* %argc.addr, align 4, !dbg !388
  %idxprom1 = sext i32 %8 to i64, !dbg !388
  %9 = load i8*** %argv.addr, align 8, !dbg !388
  %arrayidx2 = getelementptr inbounds i8** %9, i64 %idxprom1, !dbg !388
  store i8** %arrayidx2, i8*** @__environ, align 8, !dbg !388
  br label %if.end, !dbg !390

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !391
  %10 = bitcast %struct.Elf64_auxv_t* %arraydecay to i8*, !dbg !391
  %call = call i8* @memset(i8* %10, i32 0, i64 240) #13, !dbg !391
  %11 = load i8*** @__environ, align 8, !dbg !392
  %12 = bitcast i8** %11 to i64*, !dbg !392
  store i64* %12, i64** %aux_dat, align 8, !dbg !392
  br label %while.cond, !dbg !393

while.cond:                                       ; preds = %while.cond, %if.end
  %13 = load i64** %aux_dat, align 8, !dbg !393
  %14 = load i64* %13, align 8, !dbg !393
  %tobool = icmp ne i64 %14, 0, !dbg !393
  %15 = load i64** %aux_dat, align 8, !dbg !394
  %incdec.ptr = getelementptr inbounds i64* %15, i32 1, !dbg !394
  store i64* %incdec.ptr, i64** %aux_dat, align 8, !dbg !394
  br i1 %tobool, label %while.cond, label %while.cond4, !dbg !393

while.cond4:                                      ; preds = %while.cond, %if.end12
  %16 = load i64** %aux_dat, align 8, !dbg !396
  %17 = load i64* %16, align 8, !dbg !396
  %tobool5 = icmp ne i64 %17, 0, !dbg !396
  br i1 %tobool5, label %while.body6, label %while.end13, !dbg !396

while.body6:                                      ; preds = %while.cond4
  %18 = load i64** %aux_dat, align 8, !dbg !397
  %19 = bitcast i64* %18 to %struct.Elf64_auxv_t*, !dbg !397
  store %struct.Elf64_auxv_t* %19, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !397
  %20 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !399
  %a_type = getelementptr inbounds %struct.Elf64_auxv_t* %20, i32 0, i32 0, !dbg !399
  %21 = load i64* %a_type, align 8, !dbg !399
  %cmp7 = icmp ule i64 %21, 14, !dbg !399
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !399

if.then8:                                         ; preds = %while.body6
  %22 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !401
  %a_type9 = getelementptr inbounds %struct.Elf64_auxv_t* %22, i32 0, i32 0, !dbg !401
  %23 = load i64* %a_type9, align 8, !dbg !401
  %arrayidx10 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %23, !dbg !401
  %24 = bitcast %struct.Elf64_auxv_t* %arrayidx10 to i8*, !dbg !401
  %25 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !401
  %26 = bitcast %struct.Elf64_auxv_t* %25 to i8*, !dbg !401
  %call11 = call i8* @memcpy(i8* %24, i8* %26, i64 16) #13, !dbg !401
  br label %if.end12, !dbg !403

if.end12:                                         ; preds = %if.then8, %while.body6
  %27 = load i64** %aux_dat, align 8, !dbg !404
  %add.ptr = getelementptr inbounds i64* %27, i64 2, !dbg !404
  store i64* %add.ptr, i64** %aux_dat, align 8, !dbg !404
  br label %while.cond4, !dbg !405

while.end13:                                      ; preds = %while.cond4
  call void @__uClibc_init() #12, !dbg !406
  %arrayidx14 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !407
  %a_un = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx14, i32 0, i32 1, !dbg !407
  %a_val = bitcast %union.anon.120* %a_un to i64*, !dbg !407
  %28 = load i64* %a_val, align 8, !dbg !407
  %tobool15 = icmp ne i64 %28, 0, !dbg !407
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !407

cond.true:                                        ; preds = %while.end13
  %arrayidx16 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !407
  %a_un17 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx16, i32 0, i32 1, !dbg !407
  %a_val18 = bitcast %union.anon.120* %a_un17 to i64*, !dbg !407
  %29 = load i64* %a_val18, align 8, !dbg !407
  br label %cond.end, !dbg !407

cond.end:                                         ; preds = %while.end13, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 4096, %while.end13 ], !dbg !407
  store i64 %cond, i64* @__pagesize, align 8, !dbg !407
  %arrayidx19 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !408
  %a_un20 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx19, i32 0, i32 1, !dbg !408
  %a_val21 = bitcast %union.anon.120* %a_un20 to i64*, !dbg !408
  %30 = load i64* %a_val21, align 8, !dbg !408
  %cmp22 = icmp eq i64 %30, -1, !dbg !408
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !408

land.lhs.true:                                    ; preds = %cond.end
  %call23 = call i32 @__check_suid() #12, !dbg !408
  %tobool24 = icmp ne i32 %call23, 0, !dbg !408
  br i1 %tobool24, label %if.then45, label %lor.lhs.false, !dbg !408

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %arrayidx25 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !408
  %a_un26 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx25, i32 0, i32 1, !dbg !408
  %a_val27 = bitcast %union.anon.120* %a_un26 to i64*, !dbg !408
  %31 = load i64* %a_val27, align 8, !dbg !408
  %cmp28 = icmp ne i64 %31, -1, !dbg !408
  br i1 %cmp28, label %land.lhs.true29, label %if.end46, !dbg !408

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !408
  %a_un31 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx30, i32 0, i32 1, !dbg !408
  %a_val32 = bitcast %union.anon.120* %a_un31 to i64*, !dbg !408
  %32 = load i64* %a_val32, align 8, !dbg !408
  %arrayidx33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !408
  %a_un34 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx33, i32 0, i32 1, !dbg !408
  %a_val35 = bitcast %union.anon.120* %a_un34 to i64*, !dbg !408
  %33 = load i64* %a_val35, align 8, !dbg !408
  %cmp36 = icmp ne i64 %32, %33, !dbg !408
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !408

lor.lhs.false37:                                  ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !408
  %a_un39 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx38, i32 0, i32 1, !dbg !408
  %a_val40 = bitcast %union.anon.120* %a_un39 to i64*, !dbg !408
  %34 = load i64* %a_val40, align 8, !dbg !408
  %arrayidx41 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !408
  %a_un42 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx41, i32 0, i32 1, !dbg !408
  %a_val43 = bitcast %union.anon.120* %a_un42 to i64*, !dbg !408
  %35 = load i64* %a_val43, align 8, !dbg !408
  %cmp44 = icmp ne i64 %34, %35, !dbg !408
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !408

if.then45:                                        ; preds = %lor.lhs.false37, %land.lhs.true29, %land.lhs.true
  call void @__check_one_fd(i32 0, i32 131072) #12, !dbg !410
  call void @__check_one_fd(i32 1, i32 131074) #12, !dbg !412
  call void @__check_one_fd(i32 2, i32 131074) #12, !dbg !413
  br label %if.end46, !dbg !414

if.end46:                                         ; preds = %if.then45, %lor.lhs.false37, %lor.lhs.false
  %36 = load i8*** %argv.addr, align 8, !dbg !415
  %37 = load i8** %36, align 8, !dbg !415
  store i8* %37, i8** @__uclibc_progname, align 8, !dbg !415
  %38 = load i8*** %argv.addr, align 8, !dbg !416
  %39 = load i8** %38, align 8, !dbg !416
  store i8* %39, i8** @program_invocation_name, align 8, !dbg !416
  %40 = load i8*** %argv.addr, align 8, !dbg !417
  %41 = load i8** %40, align 8, !dbg !417
  %call47 = call i8* @strrchr(i8* %41, i32 47) #14, !dbg !417
  store i8* %call47, i8** @program_invocation_short_name, align 8, !dbg !417
  %42 = load i8** @program_invocation_short_name, align 8, !dbg !418
  %cmp48 = icmp ne i8* %42, null, !dbg !418
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !418

if.then49:                                        ; preds = %if.end46
  %43 = load i8** @program_invocation_short_name, align 8, !dbg !420
  %incdec.ptr50 = getelementptr inbounds i8* %43, i32 1, !dbg !420
  store i8* %incdec.ptr50, i8** @program_invocation_short_name, align 8, !dbg !420
  br label %if.end51, !dbg !420

if.else:                                          ; preds = %if.end46
  %44 = load i8** @program_invocation_name, align 8, !dbg !421
  store i8* %44, i8** @program_invocation_short_name, align 8, !dbg !421
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %45 = load void ()** %app_fini.addr, align 8, !dbg !422
  store void ()* %45, void ()** @__app_fini, align 8, !dbg !422
  %46 = load void ()** %app_init.addr, align 8, !dbg !423
  %cmp52 = icmp ne void ()* %46, null, !dbg !423
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !423

if.then53:                                        ; preds = %if.end51
  %47 = load void ()** %app_init.addr, align 8, !dbg !425
  call void %47() #12, !dbg !425
  br label %if.end54, !dbg !427

if.end54:                                         ; preds = %if.then53, %if.end51
  %tobool55 = icmp ne i64 1, 0, !dbg !428
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !428

if.then56:                                        ; preds = %if.end54
  %call57 = call i32* @__errno_location() #15, !dbg !430
  store i32 0, i32* %call57, align 4, !dbg !430
  br label %if.end58, !dbg !430

if.end58:                                         ; preds = %if.then56, %if.end54
  %tobool60 = icmp ne i64 1, 0, !dbg !431
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !431

if.then61:                                        ; preds = %if.end58
  %call62 = call i32* @__h_errno_location() #15, !dbg !433
  store i32 0, i32* %call62, align 4, !dbg !433
  br label %if.end63, !dbg !433

if.end63:                                         ; preds = %if.then61, %if.end58
  %48 = load i32 (i32, i8**, i8**)** %main.addr, align 8, !dbg !434
  %49 = load i32* %argc.addr, align 4, !dbg !434
  %50 = load i8*** %argv.addr, align 8, !dbg !434
  %51 = load i8*** @__environ, align 8, !dbg !434
  %call64 = call i32 %48(i32 %49, i8** %50, i8** %51) #12, !dbg !434
  call void @exit(i32 %call64) #16, !dbg !434
  unreachable, !dbg !434
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
  %call = call i32 @getuid() #13, !dbg !435
  store i32 %call, i32* %uid, align 4, !dbg !435
  %call1 = call i32 @geteuid() #13, !dbg !437
  store i32 %call1, i32* %euid, align 4, !dbg !437
  %call2 = call i32 @getgid() #13, !dbg !438
  store i32 %call2, i32* %gid, align 4, !dbg !438
  %call3 = call i32 @getegid() #13, !dbg !439
  store i32 %call3, i32* %egid, align 4, !dbg !439
  %0 = load i32* %uid, align 4, !dbg !440
  %1 = load i32* %euid, align 4, !dbg !440
  %cmp = icmp eq i32 %0, %1, !dbg !440
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !440

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %gid, align 4, !dbg !440
  %3 = load i32* %egid, align 4, !dbg !440
  %cmp4 = icmp eq i32 %2, %3, !dbg !440
  br i1 %cmp4, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !442
  br label %return, !dbg !442

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, !dbg !444
  br label %return, !dbg !444

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval, !dbg !445
  ret i32 %4, !dbg !445
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
  %0 = load i32* %fd.addr, align 4, !dbg !446
  %call = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) #12, !dbg !446
  %cmp = icmp eq i32 %call, -1, !dbg !446
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !446

land.rhs:                                         ; preds = %entry
  %call1 = call i32* @__errno_location() #15, !dbg !446
  %1 = load i32* %call1, align 4, !dbg !446
  %cmp2 = icmp eq i32 %1, 9, !dbg !446
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
  %3 = load i32* %mode.addr, align 4, !dbg !448
  %call4 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i32 %3) #12, !dbg !448
  store i32 %call4, i32* %nullfd, align 4, !dbg !448
  %4 = load i32* %nullfd, align 4, !dbg !450
  %5 = load i32* %fd.addr, align 4, !dbg !450
  %cmp5 = icmp ne i32 %4, %5, !dbg !450
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !450

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %fd.addr, align 4, !dbg !450
  %call7 = call i32 @fstat(i32 %6, %struct.stat.119* %st) #13, !dbg !450
  %tobool8 = icmp ne i32 %call7, 0, !dbg !450
  br i1 %tobool8, label %if.then16, label %lor.lhs.false9, !dbg !450

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 3, !dbg !450
  %7 = load i32* %st_mode, align 4, !dbg !450
  %and = and i32 %7, 61440, !dbg !450
  %cmp10 = icmp eq i32 %and, 8192, !dbg !450
  br i1 %cmp10, label %lor.lhs.false12, label %if.then16, !dbg !450

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %st_rdev = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 7, !dbg !450
  %8 = load i64* %st_rdev, align 8, !dbg !450
  %call13 = call i64 @gnu_dev_makedev(i32 1, i32 3) #13, !dbg !452
  %cmp14 = icmp ne i64 %8, %call13, !dbg !452
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !452

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %if.then
  call void @abort() #16, !dbg !453
  unreachable, !dbg !453

if.end17:                                         ; preds = %lor.lhs.false12, %land.end
  ret void, !dbg !455
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #6 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %0 = load i32* %__minor.addr, align 4, !dbg !456
  %and = and i32 %0, 255, !dbg !456
  %1 = load i32* %__major.addr, align 4, !dbg !456
  %and1 = and i32 %1, 4095, !dbg !456
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !456
  %shl = shl i32 %and1, 8, !dbg !456
  %or = or i32 %and, %shl, !dbg !456
  %conv = zext i32 %or to i64, !dbg !456
  %2 = load i32* %__minor.addr, align 4, !dbg !456
  %and2 = and i32 %2, -256, !dbg !456
  %conv3 = zext i32 %and2 to i64, !dbg !456
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !456
  %shl4 = shl i64 %conv3, 12, !dbg !456
  %or5 = or i64 %conv, %shl4, !dbg !456
  %3 = load i32* %__major.addr, align 4, !dbg !456
  %and6 = and i32 %3, -4096, !dbg !456
  %conv7 = zext i32 %and6 to i64, !dbg !456
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !456
  %shl8 = shl i64 %conv7, 32, !dbg !456
  %or9 = or i64 %or5, %shl8, !dbg !456
  ret i64 %or9, !dbg !456
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
entry:
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, align 8, !dbg !458
  store %struct.__STDIO_FILE_STRUCT.376* %0, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !458
  br label %for.cond, !dbg !458

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !458
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT.376* %1, null, !dbg !458
  br i1 %tobool, label %for.body, label %for.end, !dbg !458

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !460
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 0, !dbg !460
  %3 = load i16* %__modeflags, align 2, !dbg !460
  %conv = zext i16 %3 to i32, !dbg !460
  %and = and i32 %conv, 64, !dbg !460
  %tobool1 = icmp ne i32 %and, 0, !dbg !460
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !460

if.then:                                          ; preds = %for.body
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !463
  %call = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* %4) #12, !dbg !463
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !458
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 9, !dbg !458
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %__nextopen, align 8, !dbg !458
  store %struct.__STDIO_FILE_STRUCT.376* %6, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !458
  br label %for.cond, !dbg !458

for.end:                                          ; preds = %for.cond
  ret void, !dbg !466
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
entry:
  %old_errno = alloca i32, align 4
  %0 = load i32* @errno, align 4, !dbg !467
  store i32 %0, i32* %old_errno, align 4, !dbg !467
  %call = call i32 @isatty(i32 0) #13, !dbg !468
  %sub = sub nsw i32 1, %call, !dbg !468
  %mul = mul i32 %sub, 256, !dbg !468
  %1 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !468
  %conv = zext i16 %1 to i32, !dbg !468
  %xor = xor i32 %conv, %mul, !dbg !468
  %conv1 = trunc i32 %xor to i16, !dbg !468
  store i16 %conv1, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !468
  %call2 = call i32 @isatty(i32 1) #13, !dbg !469
  %sub3 = sub nsw i32 1, %call2, !dbg !469
  %mul4 = mul i32 %sub3, 256, !dbg !469
  %2 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !469
  %conv5 = zext i16 %2 to i32, !dbg !469
  %xor6 = xor i32 %conv5, %mul4, !dbg !469
  %conv7 = trunc i32 %xor6 to i16, !dbg !469
  store i16 %conv7, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !469
  %3 = load i32* %old_errno, align 4, !dbg !470
  store i32 %3, i32* @errno, align 4, !dbg !470
  ret void, !dbg !471
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* noalias %stream) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.376* %stream, %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !472
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %0, i32 0, i32 5, !dbg !472
  %1 = load i8** %__bufpos, align 8, !dbg !472
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !472
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 3, !dbg !472
  %3 = load i8** %__bufstart, align 8, !dbg !472
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !472
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !472
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !472
  store i64 %sub.ptr.sub, i64* %bufsize, align 8, !dbg !472
  %cmp = icmp ne i64 %sub.ptr.sub, 0, !dbg !472
  br i1 %cmp, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %entry
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !474
  %__bufstart1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %4, i32 0, i32 3, !dbg !474
  %5 = load i8** %__bufstart1, align 8, !dbg !474
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !474
  %__bufpos2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %6, i32 0, i32 5, !dbg !474
  store i8* %5, i8** %__bufpos2, align 8, !dbg !474
  %7 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !476
  %8 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !476
  %__bufstart3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %8, i32 0, i32 3, !dbg !476
  %9 = load i8** %__bufstart3, align 8, !dbg !476
  %10 = load i64* %bufsize, align 8, !dbg !476
  %call = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.376* %7, i8* %9, i64 %10) #12, !dbg !476
  br label %if.end, !dbg !477

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !478
  %__bufpos4 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %11, i32 0, i32 5, !dbg !478
  %12 = load i8** %__bufpos4, align 8, !dbg !478
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !478
  %__bufstart5 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 3, !dbg !478
  %14 = load i8** %__bufstart5, align 8, !dbg !478
  %sub.ptr.lhs.cast6 = ptrtoint i8* %12 to i64, !dbg !478
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64, !dbg !478
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !478
  ret i64 %sub.ptr.sub8, !dbg !478
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
  %0 = load i8** %s1.addr, align 8, !dbg !479
  store i8* %0, i8** %r1, align 8, !dbg !479
  %1 = load i8** %s2.addr, align 8, !dbg !480
  store i8* %1, i8** %r2, align 8, !dbg !480
  br label %while.cond, !dbg !481

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !481
  %tobool = icmp ne i64 %2, 0, !dbg !481
  br i1 %tobool, label %while.body, label %while.end, !dbg !481

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !482
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !482
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !482
  %4 = load i8* %3, align 1, !dbg !482
  %5 = load i8** %r1, align 8, !dbg !482
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !482
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !482
  store i8 %4, i8* %5, align 1, !dbg !482
  %6 = load i64* %n.addr, align 8, !dbg !484
  %dec = add i64 %6, -1, !dbg !484
  store i64 %dec, i64* %n.addr, align 8, !dbg !484
  br label %while.cond, !dbg !485

while.end:                                        ; preds = %while.cond
  %7 = load i8** %s1.addr, align 8, !dbg !486
  ret i8* %7, !dbg !486
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
  %0 = load i8** %s.addr, align 8, !dbg !487
  store i8* %0, i8** %p, align 8, !dbg !487
  br label %while.cond, !dbg !488

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %n.addr, align 8, !dbg !488
  %tobool = icmp ne i64 %1, 0, !dbg !488
  br i1 %tobool, label %while.body, label %while.end, !dbg !488

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4, !dbg !489
  %conv = trunc i32 %2 to i8, !dbg !489
  %3 = load i8** %p, align 8, !dbg !489
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !489
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !489
  store i8 %conv, i8* %3, align 1, !dbg !489
  %4 = load i64* %n.addr, align 8, !dbg !491
  %dec = add i64 %4, -1, !dbg !491
  store i64 %dec, i64* %n.addr, align 8, !dbg !491
  br label %while.cond, !dbg !492

while.end:                                        ; preds = %while.cond
  %5 = load i8** %s.addr, align 8, !dbg !493
  ret i8* %5, !dbg !493
}

; Function Attrs: nounwind readonly uwtable
define i8* @strrchr(i8* %s, i32 %c) #7 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* null, i8** %p, align 8, !dbg !494
  br label %do.body, !dbg !495

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8** %s.addr, align 8, !dbg !496
  %1 = load i8* %0, align 1, !dbg !496
  %conv = sext i8 %1 to i32, !dbg !496
  %2 = load i32* %c.addr, align 4, !dbg !496
  %conv1 = trunc i32 %2 to i8, !dbg !496
  %conv2 = sext i8 %conv1 to i32, !dbg !496
  %cmp = icmp eq i32 %conv, %conv2, !dbg !496
  br i1 %cmp, label %if.then, label %do.cond, !dbg !496

if.then:                                          ; preds = %do.body
  %3 = load i8** %s.addr, align 8, !dbg !499
  store i8* %3, i8** %p, align 8, !dbg !499
  br label %do.cond, !dbg !501

do.cond:                                          ; preds = %do.body, %if.then
  %4 = load i8** %s.addr, align 8, !dbg !502
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1, !dbg !502
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !502
  %5 = load i8* %4, align 1, !dbg !502
  %tobool = icmp ne i8 %5, 0, !dbg !502
  br i1 %tobool, label %do.body, label %do.end, !dbg !502

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !503
  ret i8* %6, !dbg !503
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %term = alloca %struct.termios.616, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !504
  %call = call i32 @tcgetattr(i32 %0, %struct.termios.616* %term) #13, !dbg !504
  %cmp = icmp eq i32 %call, 0, !dbg !504
  %conv = zext i1 %cmp to i32, !dbg !504
  ret i32 %conv, !dbg !504
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
  %0 = load i32* %fd.addr, align 4, !dbg !505
  %call = call i32 (i32, i64, ...)* @ioctl(i32 %0, i64 21505, %struct.__kernel_termios* %k_termios) #13, !dbg !505
  store i32 %call, i32* %retval1, align 4, !dbg !505
  %c_iflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !506
  %1 = load i32* %c_iflag, align 4, !dbg !506
  %2 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !506
  %c_iflag2 = getelementptr inbounds %struct.termios.616* %2, i32 0, i32 0, !dbg !506
  store i32 %1, i32* %c_iflag2, align 4, !dbg !506
  %c_oflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !507
  %3 = load i32* %c_oflag, align 4, !dbg !507
  %4 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !507
  %c_oflag3 = getelementptr inbounds %struct.termios.616* %4, i32 0, i32 1, !dbg !507
  store i32 %3, i32* %c_oflag3, align 4, !dbg !507
  %c_cflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !508
  %5 = load i32* %c_cflag, align 4, !dbg !508
  %6 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !508
  %c_cflag4 = getelementptr inbounds %struct.termios.616* %6, i32 0, i32 2, !dbg !508
  store i32 %5, i32* %c_cflag4, align 4, !dbg !508
  %c_lflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !509
  %7 = load i32* %c_lflag, align 4, !dbg !509
  %8 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !509
  %c_lflag5 = getelementptr inbounds %struct.termios.616* %8, i32 0, i32 3, !dbg !509
  store i32 %7, i32* %c_lflag5, align 4, !dbg !509
  %c_line = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !510
  %9 = load i8* %c_line, align 1, !dbg !510
  %10 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !510
  %c_line6 = getelementptr inbounds %struct.termios.616* %10, i32 0, i32 4, !dbg !510
  store i8 %9, i8* %c_line6, align 1, !dbg !510
  %11 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !511
  %c_cc = getelementptr inbounds %struct.termios.616* %11, i32 0, i32 5, !dbg !511
  %arrayidx = getelementptr inbounds [32 x i8]* %c_cc, i32 0, i64 0, !dbg !511
  %c_cc7 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !511
  %arrayidx8 = getelementptr inbounds [19 x i8]* %c_cc7, i32 0, i64 0, !dbg !511
  %call9 = call i8* @mempcpy(i8* %arrayidx, i8* %arrayidx8, i64 19) #13, !dbg !511
  %call10 = call i8* @memset(i8* %call9, i32 0, i64 13) #13, !dbg !511
  %12 = load i32* %retval1, align 4, !dbg !514
  ret i32 %12, !dbg !514
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #5

; Function Attrs: nounwind readnone uwtable
define weak i32* @__errno_location() #8 {
entry:
  ret i32* @errno, !dbg !515
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #8 {
entry:
  ret i32* @h_errno, !dbg !516
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
  %0 = load i64* %bufsize.addr, align 8, !dbg !517
  store i64 %0, i64* %todo, align 8, !dbg !517
  br label %do.body, !dbg !518

do.body:                                          ; preds = %if.then3, %entry
  %1 = load i64* %todo, align 8, !dbg !519
  %cmp = icmp eq i64 %1, 0, !dbg !519
  br i1 %cmp, label %if.then, label %if.end, !dbg !519

if.then:                                          ; preds = %do.body
  %2 = load i64* %bufsize.addr, align 8, !dbg !522
  store i64 %2, i64* %retval, !dbg !522
  br label %do.end32, !dbg !522

if.end:                                           ; preds = %do.body
  %3 = load i64* %todo, align 8, !dbg !524
  %cmp1 = icmp ule i64 %3, 9223372036854775807, !dbg !524
  %4 = load i64* %todo, align 8, !dbg !524
  %cond = select i1 %cmp1, i64 %4, i64 9223372036854775807, !dbg !524
  store i64 %cond, i64* %stodo, align 8, !dbg !524
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !525
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 2, !dbg !525
  %6 = load i32* %__filedes, align 4, !dbg !525
  %7 = load i8** %buf.addr, align 8, !dbg !525
  %8 = load i64* %stodo, align 8, !dbg !525
  %call = call i64 @write(i32 %6, i8* %7, i64 %8) #12, !dbg !525
  store i64 %call, i64* %rv, align 8, !dbg !525
  %cmp2 = icmp sge i64 %call, 0, !dbg !525
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !525

if.then3:                                         ; preds = %if.end
  %9 = load i64* %rv, align 8, !dbg !527
  %10 = load i64* %todo, align 8, !dbg !527
  %sub = sub i64 %10, %9, !dbg !527
  store i64 %sub, i64* %todo, align 8, !dbg !527
  %11 = load i64* %rv, align 8, !dbg !529
  %12 = load i8** %buf.addr, align 8, !dbg !529
  %add.ptr = getelementptr inbounds i8* %12, i64 %11, !dbg !529
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !529
  br label %do.body, !dbg !530

if.else:                                          ; preds = %if.end
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !531
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 0, !dbg !531
  %14 = load i16* %__modeflags, align 2, !dbg !531
  %conv = zext i16 %14 to i32, !dbg !531
  %or = or i32 %conv, 8, !dbg !531
  %conv4 = trunc i32 %or to i16, !dbg !531
  store i16 %conv4, i16* %__modeflags, align 2, !dbg !531
  %15 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !533
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %15, i32 0, i32 4, !dbg !533
  %16 = load i8** %__bufend, align 8, !dbg !533
  %17 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !533
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %17, i32 0, i32 3, !dbg !533
  %18 = load i8** %__bufstart, align 8, !dbg !533
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !533
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !533
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !533
  store i64 %sub.ptr.sub, i64* %stodo, align 8, !dbg !533
  %cmp5 = icmp ne i64 %sub.ptr.sub, 0, !dbg !533
  br i1 %cmp5, label %if.then7, label %if.end28, !dbg !533

if.then7:                                         ; preds = %if.else
  %19 = load i64* %stodo, align 8, !dbg !535
  %20 = load i64* %todo, align 8, !dbg !535
  %cmp8 = icmp ugt i64 %19, %20, !dbg !535
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !535

if.then10:                                        ; preds = %if.then7
  %21 = load i64* %todo, align 8, !dbg !538
  store i64 %21, i64* %stodo, align 8, !dbg !538
  br label %if.end11, !dbg !540

if.end11:                                         ; preds = %if.then10, %if.then7
  %22 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !541
  %__bufstart12 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %22, i32 0, i32 3, !dbg !541
  %23 = load i8** %__bufstart12, align 8, !dbg !541
  store i8* %23, i8** %s, align 8, !dbg !541
  br label %do.body13, !dbg !542

do.body13:                                        ; preds = %if.end20, %if.end11
  %24 = load i8** %buf.addr, align 8, !dbg !543
  %25 = load i8* %24, align 1, !dbg !543
  %26 = load i8** %s, align 8, !dbg !543
  store i8 %25, i8* %26, align 1, !dbg !543
  %conv14 = zext i8 %25 to i32, !dbg !543
  %cmp15 = icmp eq i32 %conv14, 10, !dbg !543
  br i1 %cmp15, label %land.lhs.true, label %if.end20, !dbg !543

land.lhs.true:                                    ; preds = %do.body13
  %27 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !543
  %__modeflags17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %27, i32 0, i32 0, !dbg !543
  %28 = load i16* %__modeflags17, align 2, !dbg !543
  %conv18 = zext i16 %28 to i32, !dbg !543
  %and = and i32 %conv18, 256, !dbg !543
  %tobool = icmp ne i32 %and, 0, !dbg !543
  br i1 %tobool, label %do.end, label %if.end20, !dbg !543

if.end20:                                         ; preds = %land.lhs.true, %do.body13
  %29 = load i8** %s, align 8, !dbg !546
  %incdec.ptr = getelementptr inbounds i8* %29, i32 1, !dbg !546
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !546
  %30 = load i8** %buf.addr, align 8, !dbg !547
  %incdec.ptr21 = getelementptr inbounds i8* %30, i32 1, !dbg !547
  store i8* %incdec.ptr21, i8** %buf.addr, align 8, !dbg !547
  %31 = load i64* %stodo, align 8, !dbg !548
  %dec = add nsw i64 %31, -1, !dbg !548
  store i64 %dec, i64* %stodo, align 8, !dbg !548
  %tobool22 = icmp ne i64 %dec, 0, !dbg !548
  br i1 %tobool22, label %do.body13, label %do.end, !dbg !548

do.end:                                           ; preds = %land.lhs.true, %if.end20
  %32 = load i8** %s, align 8, !dbg !549
  %33 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !549
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %33, i32 0, i32 5, !dbg !549
  store i8* %32, i8** %__bufpos, align 8, !dbg !549
  %34 = load i8** %s, align 8, !dbg !550
  %35 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !550
  %__bufstart23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %35, i32 0, i32 3, !dbg !550
  %36 = load i8** %__bufstart23, align 8, !dbg !550
  %sub.ptr.lhs.cast24 = ptrtoint i8* %34 to i64, !dbg !550
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64, !dbg !550
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !550
  %37 = load i64* %todo, align 8, !dbg !550
  %sub27 = sub i64 %37, %sub.ptr.sub26, !dbg !550
  store i64 %sub27, i64* %todo, align 8, !dbg !550
  br label %if.end28, !dbg !551

if.end28:                                         ; preds = %do.end, %if.else
  %38 = load i64* %bufsize.addr, align 8, !dbg !552
  %39 = load i64* %todo, align 8, !dbg !552
  %sub29 = sub i64 %38, %39, !dbg !552
  store i64 %sub29, i64* %retval, !dbg !552
  br label %do.end32, !dbg !552

do.end32:                                         ; preds = %if.end28, %if.then
  %40 = load i64* %retval, !dbg !553
  ret i64 %40, !dbg !553
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
  %0 = load i8** %s1.addr, align 8, !dbg !554
  store i8* %0, i8** %r1, align 8, !dbg !554
  %1 = load i8** %s2.addr, align 8, !dbg !555
  store i8* %1, i8** %r2, align 8, !dbg !555
  br label %while.cond, !dbg !556

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !556
  %tobool = icmp ne i64 %2, 0, !dbg !556
  br i1 %tobool, label %while.body, label %while.end, !dbg !556

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !557
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !557
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !557
  %4 = load i8* %3, align 1, !dbg !557
  %5 = load i8** %r1, align 8, !dbg !557
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !557
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !557
  store i8 %4, i8* %5, align 1, !dbg !557
  %6 = load i64* %n.addr, align 8, !dbg !559
  %dec = add i64 %6, -1, !dbg !559
  store i64 %dec, i64* %n.addr, align 8, !dbg !559
  br label %while.cond, !dbg !560

while.end:                                        ; preds = %while.cond
  %7 = load i8** %r1, align 8, !dbg !561
  ret i8* %7, !dbg !561
}

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #9 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !562
  br i1 %cmp, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str34, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str135, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str236, i64 0, i64 0)) #16, !dbg !564
  unreachable, !dbg !564

if.end:                                           ; preds = %entry
  ret void, !dbg !565
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #9 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !566
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #13, !dbg !566
  %1 = load i32* %x, align 4, !dbg !567, !tbaa !568
  ret i32 %1, !dbg !567
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #9 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !572
  br i1 %cmp, label %if.end, label %if.then, !dbg !572

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str337, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #16, !dbg !574
  unreachable, !dbg !574

if.end:                                           ; preds = %entry
  ret void, !dbg !576
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #9 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !577
  br i1 %cmp, label %if.end, label %if.then, !dbg !577

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #16, !dbg !579
  unreachable, !dbg !579

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !580
  %cmp1 = icmp eq i32 %add, %end, !dbg !580
  br i1 %cmp1, label %return, label %if.else, !dbg !580

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !582
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #13, !dbg !582
  %cmp3 = icmp eq i32 %start, 0, !dbg !584
  %1 = load i32* %x, align 4, !dbg !586, !tbaa !568
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !584

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !586
  %conv6 = zext i1 %cmp5 to i64, !dbg !586
  call void @klee_assume(i64 %conv6) #13, !dbg !586
  br label %if.end14, !dbg !588

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !589
  %conv10 = zext i1 %cmp8 to i64, !dbg !589
  call void @klee_assume(i64 %conv10) #13, !dbg !589
  %2 = load i32* %x, align 4, !dbg !591, !tbaa !568
  %cmp11 = icmp slt i32 %2, %end, !dbg !591
  %conv13 = zext i1 %cmp11 to i64, !dbg !591
  call void @klee_assume(i64 %conv13) #13, !dbg !591
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !592, !tbaa !568
  br label %return, !dbg !592

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !593
}

declare void @klee_assume(i64) #11

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #9 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !594
  br i1 %cmp, label %return, label %if.end, !dbg !594

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !596
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !596

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !598
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !598

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !598
  %wide.load = load <16 x i8>* %1, align 1, !dbg !598
  %next.gep.sum610 = or i64 %index, 16, !dbg !598
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !598
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !598
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !598
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !598
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !598
  %next.gep136.sum627 = or i64 %index, 16, !dbg !598
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !598
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !598
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !598
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !600

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
  %dec = add i64 %count.addr.028, -1, !dbg !598
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !598
  %8 = load i8* %b.030, align 1, !dbg !598, !tbaa !603
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !598
  store i8 %8, i8* %a.029, align 1, !dbg !598, !tbaa !603
  %tobool = icmp eq i64 %dec, 0, !dbg !598
  br i1 %tobool, label %return, label %while.body, !dbg !598, !llvm.loop !604

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !605
  %tobool832 = icmp eq i64 %count, 0, !dbg !607
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !607

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !608
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !605
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !607
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !607
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !607
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !607
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !607
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !607
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !607
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !607
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !607
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !607
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !607
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !607
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !607
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !607
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !607
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !607
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !607
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !607
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !607
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !607
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !609

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !607
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !607
  %19 = load i8* %b.135, align 1, !dbg !607, !tbaa !603
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !607
  store i8 %19, i8* %a.134, align 1, !dbg !607, !tbaa !603
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !607
  br i1 %tobool8, label %return, label %while.body9, !dbg !607, !llvm.loop !610

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !611
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

!llvm.dbg.cu = !{!0, !9, !53, !102, !133, !145, !153, !160, !167, !192, !200, !205, !211, !243, !251, !261, !271, !281, !293, !307, !321, !335}
!llvm.module.flags = !{!350, !351}
!llvm.ident = !{!352, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353, !353}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himeshi
!1 = metadata !{metadata !"montecarlo.c", metadata !"/home/himeshi/Projects/workspace/MonteCarloScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 57, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @__user_main, null, null, metadata !2, i32 57} ; [ DW_TAG_subprog
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786449, metadata !10, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !11, metadata !39, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/ho
!10 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!11 = metadata !{metadata !12, metadata !16, metadata !17, metadata !28, metadata !31, metadata !38}
!12 = metadata !{i32 786478, metadata !10, metadata !13, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadata !2
!13 = metadata !{i32 786473, metadata !10}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null}
!16 = metadata !{i32 786478, metadata !10, metadata !13, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadata !2
!17 = metadata !{i32 786478, metadata !10, metadata !13, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, void ()
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !20, metadata !8, metadata !23, metadata !26, metadata !26, metadata !26, metadata !27}
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !8, metadata !8, metadata !23, metadata !23}
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786478, metadata !10, metadata !13, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !29, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, null, m
!29 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !8, metadata !8}
!31 = metadata !{i32 786478, metadata !32, metadata !33, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, null, 
!32 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!33 = metadata !{i32 786473, metadata !32}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!34 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !36, metadata !37, metadata !37}
!36 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!37 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!38 = metadata !{i32 786478, metadata !10, metadata !13, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2, i32 
!39 = metadata !{metadata !40, metadata !41, metadata !44, metadata !45, metadata !46, metadata !47, metadata !50, metadata !51, metadata !52}
!40 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !13, i32 52, metadata !27, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!41 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !13, i32 110, metadata !42, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110] [
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!44 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_short_name", metadata !"program_invocation_short_name", metadata !"", metadata !13, i32 112, metadata !42, i32 0, i32 1, i8** @program_invocation_short_name, null} ; [ DW_TAG_variabl
!45 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_name", metadata !"program_invocation_name", metadata !"", metadata !13, i32 113, metadata !42, i32 0, i32 1, i8** @program_invocation_name, null} ; [ DW_TAG_variable ] [program_invoc
!46 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !13, i32 125, metadata !23, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!47 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !13, i32 129, metadata !48, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!48 = metadata !{i32 786454, metadata !10, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!49 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786484, i32 0, metadata !12, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !13, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ] [b
!51 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !13, i32 244, metadata !26, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!52 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !13, i32 247, metadata !26, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!53 = metadata !{i32 786449, metadata !54, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !55, metadata !59, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!54 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!55 = metadata !{metadata !56, metadata !58}
!56 = metadata !{i32 786478, metadata !54, metadata !57, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, i32 
!57 = metadata !{i32 786473, metadata !54}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!58 = metadata !{i32 786478, metadata !54, metadata !57, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, i32 
!59 = metadata !{metadata !60, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!60 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !57, i32 154, metadata !61, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!62 = metadata !{i32 786454, metadata !54, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!63 = metadata !{i32 786451, metadata !64, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !65, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset
!64 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!65 = metadata !{metadata !66, metadata !68, metadata !73, metadata !74, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !83, metadata !86}
!66 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!67 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!68 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !69} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !70, metadata !71, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!70 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!73 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!74 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!76 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!77 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!78 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!79 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!80 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!81 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !82} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!83 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !84} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!84 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !85, metadata !71, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!85 = metadata !{i32 786454, metadata !64, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!86 = metadata !{i32 786445, metadata !64, metadata !63, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !87} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!87 = metadata !{i32 786454, metadata !64, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786451, metadata !89, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!89 = metadata !{metadata !"./include/wchar.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!92 = metadata !{i32 786445, metadata !89, metadata !88, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!93 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !57, i32 155, metadata !61, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!94 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !57, i32 156, metadata !61, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!95 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !57, i32 159, metadata !61, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!96 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !57, i32 162, metadata !61, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!97 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !57, i32 180, metadata !61, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdio_o
!98 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !57, i32 131, metadata !99, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_stdio
!99 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !62, metadata !100, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!102 = metadata !{i32 786449, metadata !103, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !104, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!103 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786478, metadata !103, metadata !106, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*)* @
!106 = metadata !{i32 786473, metadata !103}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786454, metadata !103, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!110 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!112 = metadata !{i32 786454, metadata !103, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!113 = metadata !{i32 786451, metadata !64, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !114, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !126, metadata !127}
!115 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!116 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !69} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!117 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!118 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!119 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!120 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!121 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!122 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!123 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!124 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !125} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!126 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !84} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!127 = metadata !{i32 786445, metadata !64, metadata !113, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !128} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!128 = metadata !{i32 786454, metadata !64, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786451, metadata !89, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !130, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!130 = metadata !{metadata !131, metadata !132}
!131 = metadata !{i32 786445, metadata !89, metadata !129, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!132 = metadata !{i32 786445, metadata !89, metadata !129, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!133 = metadata !{i32 786449, metadata !134, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !135, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!134 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786478, metadata !134, metadata !137, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 
!137 = metadata !{i32 786473, metadata !134}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!138 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{metadata !27, metadata !140, metadata !141, metadata !144}
!140 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{i32 786454, metadata !134, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!145 = metadata !{i32 786449, metadata !146, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !147, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!146 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786478, metadata !146, metadata !149, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 
!149 = metadata !{i32 786473, metadata !146}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!150 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !27, metadata !27, metadata !8, metadata !152}
!152 = metadata !{i32 786454, metadata !146, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!153 = metadata !{i32 786449, metadata !154, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !155, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!154 = metadata !{metadata !"libc/string/strrchr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 786478, metadata !154, metadata !157, metadata !"strrchr", metadata !"strrchr", metadata !"", i32 17, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr, null, null, metadata !2, i32 18
!157 = metadata !{i32 786473, metadata !154}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!158 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{metadata !24, metadata !42, metadata !8}
!160 = metadata !{i32 786449, metadata !161, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !162, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!161 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 786478, metadata !161, metadata !164, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW
!164 = metadata !{i32 786473, metadata !161}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/isatty.c]
!165 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !8, metadata !8}
!167 = metadata !{i32 786449, metadata !168, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !169, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!168 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 786478, metadata !168, metadata !171, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.616*)* @tcgetattr, null, nu
!171 = metadata !{i32 786473, metadata !168}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !8, metadata !8, metadata !174}
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!175 = metadata !{i32 786451, metadata !176, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !177, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!176 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!177 = metadata !{metadata !178, metadata !180, metadata !181, metadata !182, metadata !183, metadata !185, metadata !189, metadata !191}
!178 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!179 = metadata !{i32 786454, metadata !176, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!180 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !179} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!181 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !179} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!182 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !179} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!183 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !184} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!184 = metadata !{i32 786454, metadata !176, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!185 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !186} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !184, metadata !187, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!187 = metadata !{metadata !188}
!188 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!189 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !190} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!190 = metadata !{i32 786454, metadata !176, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!191 = metadata !{i32 786445, metadata !176, metadata !175, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !190} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!192 = metadata !{i32 786449, metadata !193, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !194, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!193 = metadata !{metadata !"libc/misc/internals/__errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!194 = metadata !{metadata !195}
!195 = metadata !{i32 786478, metadata !193, metadata !196, metadata !"__errno_location", metadata !"__errno_location", metadata !"", i32 11, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_location, null, null,
!196 = metadata !{i32 786473, metadata !193}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__errno_location.c]
!197 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!200 = metadata !{i32 786449, metadata !201, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !202, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!201 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786478, metadata !201, metadata !204, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null,
!204 = metadata !{i32 786473, metadata !201}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__h_errno_location.c]
!205 = metadata !{i32 786449, metadata !206, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !207, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!206 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!207 = metadata !{metadata !208, metadata !210}
!208 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !209, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!209 = metadata !{i32 786473, metadata !206}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/errno.c]
!210 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !209, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!211 = metadata !{i32 786449, metadata !212, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !213, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!212 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 786478, metadata !212, metadata !215, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !216, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*, i8*, i
!215 = metadata !{i32 786473, metadata !212}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!216 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !219, metadata !241, metadata !218}
!218 = metadata !{i32 786454, metadata !212, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!220 = metadata !{i32 786454, metadata !212, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!221 = metadata !{i32 786451, metadata !64, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !222, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !234, metadata !235}
!223 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!224 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !69} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!225 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!226 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!227 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!228 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!229 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!230 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!231 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !75} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!232 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !233} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!234 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !84} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!235 = metadata !{i32 786445, metadata !64, metadata !221, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !236} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!236 = metadata !{i32 786454, metadata !64, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!237 = metadata !{i32 786451, metadata !89, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !238, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!238 = metadata !{metadata !239, metadata !240}
!239 = metadata !{i32 786445, metadata !89, metadata !237, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!240 = metadata !{i32 786445, metadata !89, metadata !237, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!242 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!243 = metadata !{i32 786449, metadata !244, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !245, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!244 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!245 = metadata !{metadata !246}
!246 = metadata !{i32 786478, metadata !244, metadata !247, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2, i
!247 = metadata !{i32 786473, metadata !244}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!248 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{metadata !27, metadata !140, metadata !141, metadata !250}
!250 = metadata !{i32 786454, metadata !244, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!251 = metadata !{i32 786449, metadata !252, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !253, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!252 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!253 = metadata !{metadata !254}
!254 = metadata !{i32 786478, metadata !252, metadata !255, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !256, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!255 = metadata !{i32 786473, metadata !252}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!256 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!257 = metadata !{null, metadata !258}
!258 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!259 = metadata !{metadata !260}
!260 = metadata !{i32 786689, metadata !254, metadata !"z", metadata !255, i32 16777228, metadata !258, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!261 = metadata !{i32 786449, metadata !262, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !263, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!262 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!263 = metadata !{metadata !264}
!264 = metadata !{i32 786478, metadata !262, metadata !265, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !268, i32 13}
!265 = metadata !{i32 786473, metadata !262}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c]
!266 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{metadata !8, metadata !42}
!268 = metadata !{metadata !269, metadata !270}
!269 = metadata !{i32 786689, metadata !264, metadata !"name", metadata !265, i32 16777229, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!270 = metadata !{i32 786688, metadata !264, metadata !"x", metadata !265, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!271 = metadata !{i32 786449, metadata !272, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !273, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!272 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786478, metadata !272, metadata !275, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!275 = metadata !{i32 786473, metadata !272}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!276 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{null, metadata !36, metadata !36}
!278 = metadata !{metadata !279, metadata !280}
!279 = metadata !{i32 786689, metadata !274, metadata !"bitWidth", metadata !275, i32 16777236, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!280 = metadata !{i32 786689, metadata !274, metadata !"shift", metadata !275, i32 33554452, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!281 = metadata !{i32 786449, metadata !282, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !283, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!282 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!283 = metadata !{metadata !284}
!284 = metadata !{i32 786478, metadata !282, metadata !285, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !286, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!285 = metadata !{i32 786473, metadata !282}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!286 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{metadata !8, metadata !8, metadata !8, metadata !42}
!288 = metadata !{metadata !289, metadata !290, metadata !291, metadata !292}
!289 = metadata !{i32 786689, metadata !284, metadata !"start", metadata !285, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!290 = metadata !{i32 786689, metadata !284, metadata !"end", metadata !285, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!291 = metadata !{i32 786689, metadata !284, metadata !"name", metadata !285, i32 50331661, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!292 = metadata !{i32 786688, metadata !284, metadata !"x", metadata !285, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!293 = metadata !{i32 786449, metadata !294, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !295, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!294 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!295 = metadata !{metadata !296}
!296 = metadata !{i32 786478, metadata !294, metadata !297, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !298, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !301, i32
!297 = metadata !{i32 786473, metadata !294}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c]
!298 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!299 = metadata !{metadata !27, metadata !27, metadata !142, metadata !300}
!300 = metadata !{i32 786454, metadata !294, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306}
!302 = metadata !{i32 786689, metadata !296, metadata !"destaddr", metadata !297, i32 16777228, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!303 = metadata !{i32 786689, metadata !296, metadata !"srcaddr", metadata !297, i32 33554444, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!304 = metadata !{i32 786689, metadata !296, metadata !"len", metadata !297, i32 50331660, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!305 = metadata !{i32 786688, metadata !296, metadata !"dest", metadata !297, i32 13, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!306 = metadata !{i32 786688, metadata !296, metadata !"src", metadata !297, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!307 = metadata !{i32 786449, metadata !308, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !309, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!308 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!309 = metadata !{metadata !310}
!310 = metadata !{i32 786478, metadata !308, metadata !311, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !312, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !315, 
!311 = metadata !{i32 786473, metadata !308}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!312 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{metadata !27, metadata !27, metadata !142, metadata !314}
!314 = metadata !{i32 786454, metadata !308, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !320}
!316 = metadata !{i32 786689, metadata !310, metadata !"dst", metadata !311, i32 16777228, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!317 = metadata !{i32 786689, metadata !310, metadata !"src", metadata !311, i32 33554444, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!318 = metadata !{i32 786689, metadata !310, metadata !"count", metadata !311, i32 50331660, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!319 = metadata !{i32 786688, metadata !310, metadata !"a", metadata !311, i32 13, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!320 = metadata !{i32 786688, metadata !310, metadata !"b", metadata !311, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!321 = metadata !{i32 786449, metadata !322, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !323, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!322 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786478, metadata !322, metadata !325, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !329, 
!325 = metadata !{i32 786473, metadata !322}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c]
!326 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!327 = metadata !{metadata !27, metadata !27, metadata !142, metadata !328}
!328 = metadata !{i32 786454, metadata !322, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!329 = metadata !{metadata !330, metadata !331, metadata !332, metadata !333, metadata !334}
!330 = metadata !{i32 786689, metadata !324, metadata !"destaddr", metadata !325, i32 16777227, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!331 = metadata !{i32 786689, metadata !324, metadata !"srcaddr", metadata !325, i32 33554443, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!332 = metadata !{i32 786689, metadata !324, metadata !"len", metadata !325, i32 50331659, metadata !328, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!333 = metadata !{i32 786688, metadata !324, metadata !"dest", metadata !325, i32 12, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!334 = metadata !{i32 786688, metadata !324, metadata !"src", metadata !325, i32 13, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!335 = metadata !{i32 786449, metadata !336, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !337, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!336 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!337 = metadata !{metadata !338}
!338 = metadata !{i32 786478, metadata !336, metadata !339, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !340, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !343, i32
!339 = metadata !{i32 786473, metadata !336}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c]
!340 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!341 = metadata !{metadata !27, metadata !27, metadata !8, metadata !342}
!342 = metadata !{i32 786454, metadata !336, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347}
!344 = metadata !{i32 786689, metadata !338, metadata !"dst", metadata !339, i32 16777227, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!345 = metadata !{i32 786689, metadata !338, metadata !"s", metadata !339, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!346 = metadata !{i32 786689, metadata !338, metadata !"count", metadata !339, i32 50331659, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!347 = metadata !{i32 786688, metadata !338, metadata !"a", metadata !339, i32 12, metadata !348, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !349} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!349 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!350 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!351 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!352 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!353 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!354 = metadata !{i32 59, i32 0, metadata !4, null}
!355 = metadata !{i32 65, i32 0, metadata !4, null}
!356 = metadata !{i32 67, i32 0, metadata !4, null}
!357 = metadata !{i32 68, i32 0, metadata !4, null}
!358 = metadata !{i32 70, i32 0, metadata !4, null}
!359 = metadata !{i32 71, i32 0, metadata !4, null}
!360 = metadata !{i32 73, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !4, i32 73, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!362 = metadata !{i32 75, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !364, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!364 = metadata !{i32 786443, metadata !1, metadata !361, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!365 = metadata !{i32 76, i32 0, metadata !363, null}
!366 = metadata !{i32 80, i32 0, metadata !4, null}
!367 = metadata !{i32 87, i32 0, metadata !4, null}
!368 = metadata !{i32 191, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !10, metadata !12, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!370 = metadata !{i32 193, i32 0, metadata !12, null}
!371 = metadata !{i32 197, i32 0, metadata !12, null}
!372 = metadata !{i32 238, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !10, metadata !12, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!374 = metadata !{i32 239, i32 0, metadata !373, null}
!375 = metadata !{i32 240, i32 0, metadata !12, null}
!376 = metadata !{i32 263, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !10, metadata !16, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!378 = metadata !{i32 264, i32 0, metadata !377, null}
!379 = metadata !{i32 266, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !10, metadata !16, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!381 = metadata !{i32 267, i32 0, metadata !380, null}
!382 = metadata !{i32 268, i32 0, metadata !16, null}
!383 = metadata !{i32 288, i32 0, metadata !17, null}
!384 = metadata !{i32 291, i32 0, metadata !17, null}
!385 = metadata !{i32 294, i32 0, metadata !17, null}
!386 = metadata !{i32 298, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !10, metadata !17, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!388 = metadata !{i32 300, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !10, metadata !387, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!390 = metadata !{i32 301, i32 0, metadata !389, null}
!391 = metadata !{i32 305, i32 0, metadata !17, null}
!392 = metadata !{i32 306, i32 0, metadata !17, null}
!393 = metadata !{i32 307, i32 0, metadata !17, null}
!394 = metadata !{i32 308, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !10, metadata !17, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!396 = metadata !{i32 311, i32 0, metadata !17, null}
!397 = metadata !{i32 312, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !10, metadata !17, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!399 = metadata !{i32 313, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !10, metadata !398, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!401 = metadata !{i32 314, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !10, metadata !400, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!403 = metadata !{i32 315, i32 0, metadata !402, null}
!404 = metadata !{i32 316, i32 0, metadata !398, null}
!405 = metadata !{i32 317, i32 0, metadata !398, null}
!406 = metadata !{i32 323, i32 0, metadata !17, null}
!407 = metadata !{i32 327, i32 0, metadata !17, null}
!408 = metadata !{i32 331, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !10, metadata !17, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!410 = metadata !{i32 336, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !10, metadata !409, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!412 = metadata !{i32 337, i32 0, metadata !411, null}
!413 = metadata !{i32 338, i32 0, metadata !411, null}
!414 = metadata !{i32 339, i32 0, metadata !411, null}
!415 = metadata !{i32 342, i32 0, metadata !17, null}
!416 = metadata !{i32 344, i32 0, metadata !17, null}
!417 = metadata !{i32 345, i32 0, metadata !17, null}
!418 = metadata !{i32 346, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !10, metadata !17, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!420 = metadata !{i32 347, i32 0, metadata !419, null}
!421 = metadata !{i32 349, i32 0, metadata !419, null}
!422 = metadata !{i32 354, i32 0, metadata !17, null}
!423 = metadata !{i32 370, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !10, metadata !17, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!425 = metadata !{i32 371, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !10, metadata !424, i32 370, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!427 = metadata !{i32 372, i32 0, metadata !426, null}
!428 = metadata !{i32 391, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !10, metadata !17, i32 391, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!430 = metadata !{i32 392, i32 0, metadata !429, null}
!431 = metadata !{i32 395, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !10, metadata !17, i32 395, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!433 = metadata !{i32 396, i32 0, metadata !432, null}
!434 = metadata !{i32 401, i32 0, metadata !17, null}
!435 = metadata !{i32 160, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !10, metadata !38} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!437 = metadata !{i32 161, i32 0, metadata !436, null}
!438 = metadata !{i32 162, i32 0, metadata !436, null}
!439 = metadata !{i32 163, i32 0, metadata !436, null}
!440 = metadata !{i32 165, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !10, metadata !436, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!442 = metadata !{i32 166, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !10, metadata !441, i32 165, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!444 = metadata !{i32 168, i32 0, metadata !436, null}
!445 = metadata !{i32 169, i32 0, metadata !436, null}
!446 = metadata !{i32 139, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !10, metadata !28, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!448 = metadata !{i32 143, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !10, metadata !447, i32 140, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!450 = metadata !{i32 147, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !10, metadata !449, i32 147, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!452 = metadata !{i32 148, i32 18, metadata !451, null}
!453 = metadata !{i32 150, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !10, metadata !451, i32 149, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!455 = metadata !{i32 153, i32 0, metadata !28, null}
!456 = metadata !{i32 56, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !32, metadata !31} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!458 = metadata !{i32 258, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !54, metadata !56, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!460 = metadata !{i32 261, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !54, metadata !462, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!462 = metadata !{i32 786443, metadata !54, metadata !459, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!463 = metadata !{i32 262, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !54, metadata !461, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!465 = metadata !{i32 263, i32 0, metadata !464, null}
!466 = metadata !{i32 274, i32 0, metadata !56, null}
!467 = metadata !{i32 280, i32 0, metadata !58, null}
!468 = metadata !{i32 282, i32 0, metadata !58, null}
!469 = metadata !{i32 283, i32 0, metadata !58, null}
!470 = metadata !{i32 284, i32 0, metadata !58, null}
!471 = metadata !{i32 291, i32 0, metadata !58, null}
!472 = metadata !{i32 23, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !103, metadata !105, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!474 = metadata !{i32 24, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !103, metadata !473, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!476 = metadata !{i32 25, i32 0, metadata !475, null}
!477 = metadata !{i32 26, i32 0, metadata !475, null}
!478 = metadata !{i32 28, i32 0, metadata !105, null}
!479 = metadata !{i32 20, i32 0, metadata !136, null}
!480 = metadata !{i32 21, i32 0, metadata !136, null}
!481 = metadata !{i32 28, i32 0, metadata !136, null}
!482 = metadata !{i32 29, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !134, metadata !136, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!484 = metadata !{i32 30, i32 0, metadata !483, null}
!485 = metadata !{i32 31, i32 0, metadata !483, null}
!486 = metadata !{i32 34, i32 0, metadata !136, null}
!487 = metadata !{i32 19, i32 0, metadata !148, null}
!488 = metadata !{i32 27, i32 0, metadata !148, null}
!489 = metadata !{i32 28, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !146, metadata !148, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!491 = metadata !{i32 29, i32 0, metadata !490, null}
!492 = metadata !{i32 30, i32 0, metadata !490, null}
!493 = metadata !{i32 32, i32 0, metadata !148, null}
!494 = metadata !{i32 21, i32 0, metadata !156, null}
!495 = metadata !{i32 22, i32 0, metadata !156, null}
!496 = metadata !{i32 23, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !154, metadata !498, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!498 = metadata !{i32 786443, metadata !154, metadata !156, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!499 = metadata !{i32 24, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !154, metadata !497, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!501 = metadata !{i32 25, i32 0, metadata !500, null}
!502 = metadata !{i32 26, i32 0, metadata !498, null}
!503 = metadata !{i32 28, i32 0, metadata !156, null}
!504 = metadata !{i32 30, i32 0, metadata !163, null}
!505 = metadata !{i32 43, i32 0, metadata !170, null}
!506 = metadata !{i32 45, i32 0, metadata !170, null}
!507 = metadata !{i32 46, i32 0, metadata !170, null}
!508 = metadata !{i32 47, i32 0, metadata !170, null}
!509 = metadata !{i32 48, i32 0, metadata !170, null}
!510 = metadata !{i32 49, i32 0, metadata !170, null}
!511 = metadata !{i32 61, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !168, metadata !513, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!513 = metadata !{i32 786443, metadata !168, metadata !170, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!514 = metadata !{i32 79, i32 0, metadata !170, null}
!515 = metadata !{i32 13, i32 0, metadata !195, null}
!516 = metadata !{i32 12, i32 0, metadata !203, null}
!517 = metadata !{i32 44, i32 0, metadata !214, null}
!518 = metadata !{i32 46, i32 0, metadata !214, null}
!519 = metadata !{i32 47, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !212, metadata !521, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!521 = metadata !{i32 786443, metadata !212, metadata !214, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!522 = metadata !{i32 49, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !212, metadata !520, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!524 = metadata !{i32 51, i32 0, metadata !521, null}
!525 = metadata !{i32 52, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !212, metadata !521, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!527 = metadata !{i32 62, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !212, metadata !526, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!529 = metadata !{i32 63, i32 0, metadata !528, null}
!530 = metadata !{i32 101, i32 0, metadata !521, null}
!531 = metadata !{i32 70, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !212, metadata !526, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!533 = metadata !{i32 73, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !212, metadata !532, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!535 = metadata !{i32 76, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !212, metadata !537, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!537 = metadata !{i32 786443, metadata !212, metadata !534, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!538 = metadata !{i32 77, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !212, metadata !536, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!540 = metadata !{i32 78, i32 0, metadata !539, null}
!541 = metadata !{i32 80, i32 0, metadata !537, null}
!542 = metadata !{i32 82, i32 0, metadata !537, null}
!543 = metadata !{i32 83, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !212, metadata !545, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!545 = metadata !{i32 786443, metadata !212, metadata !537, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!546 = metadata !{i32 88, i32 0, metadata !545, null}
!547 = metadata !{i32 89, i32 0, metadata !545, null}
!548 = metadata !{i32 90, i32 0, metadata !545, null}
!549 = metadata !{i32 92, i32 0, metadata !537, null}
!550 = metadata !{i32 94, i32 0, metadata !537, null}
!551 = metadata !{i32 95, i32 0, metadata !537, null}
!552 = metadata !{i32 99, i32 0, metadata !532, null}
!553 = metadata !{i32 102, i32 0, metadata !214, null}
!554 = metadata !{i32 22, i32 0, metadata !246, null}
!555 = metadata !{i32 23, i32 0, metadata !246, null}
!556 = metadata !{i32 30, i32 0, metadata !246, null}
!557 = metadata !{i32 31, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !244, metadata !246, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!559 = metadata !{i32 32, i32 0, metadata !558, null}
!560 = metadata !{i32 33, i32 0, metadata !558, null}
!561 = metadata !{i32 36, i32 0, metadata !246, null}
!562 = metadata !{i32 13, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !252, metadata !254, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!564 = metadata !{i32 14, i32 0, metadata !563, null}
!565 = metadata !{i32 15, i32 0, metadata !254, null}
!566 = metadata !{i32 15, i32 0, metadata !264, null}
!567 = metadata !{i32 16, i32 0, metadata !264, null}
!568 = metadata !{metadata !569, metadata !569, i64 0}
!569 = metadata !{metadata !"int", metadata !570, i64 0}
!570 = metadata !{metadata !"omnipotent char", metadata !571, i64 0}
!571 = metadata !{metadata !"Simple C/C++ TBAA"}
!572 = metadata !{i32 21, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !272, metadata !274, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!574 = metadata !{i32 27, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !272, metadata !573, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!576 = metadata !{i32 29, i32 0, metadata !274, null}
!577 = metadata !{i32 16, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !282, metadata !284, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!579 = metadata !{i32 17, i32 0, metadata !578, null}
!580 = metadata !{i32 19, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !282, metadata !284, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!582 = metadata !{i32 22, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !282, metadata !581, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!584 = metadata !{i32 25, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !282, metadata !583, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!586 = metadata !{i32 26, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !282, metadata !585, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!588 = metadata !{i32 27, i32 0, metadata !587, null}
!589 = metadata !{i32 28, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !282, metadata !585, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!591 = metadata !{i32 29, i32 0, metadata !590, null}
!592 = metadata !{i32 32, i32 0, metadata !583, null}
!593 = metadata !{i32 34, i32 0, metadata !284, null}
!594 = metadata !{i32 16, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !308, metadata !310, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!596 = metadata !{i32 19, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !308, metadata !310, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!598 = metadata !{i32 20, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !308, metadata !597, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!600 = metadata !{metadata !600, metadata !601, metadata !602}
!601 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!602 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!603 = metadata !{metadata !570, metadata !570, i64 0}
!604 = metadata !{metadata !604, metadata !601, metadata !602}
!605 = metadata !{i32 22, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !308, metadata !597, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!607 = metadata !{i32 24, i32 0, metadata !606, null}
!608 = metadata !{i32 23, i32 0, metadata !606, null}
!609 = metadata !{metadata !609, metadata !601, metadata !602}
!610 = metadata !{metadata !610, metadata !601, metadata !602}
!611 = metadata !{i32 28, i32 0, metadata !310, null}
