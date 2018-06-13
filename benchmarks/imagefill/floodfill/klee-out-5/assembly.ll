; ModuleID = './floodfill.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__STDIO_FILE_STRUCT.376 = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT.376*, [2 x i32], %struct.__mbstate_t.375 }
%struct.__mbstate_t.375 = type { i32, i32 }
%struct.Elf64_auxv_t = type { i64, %union.anon.120 }
%union.anon.120 = type { i64 }
%struct.stat.119 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.termios.616 = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__kernel_termios = type { i32, i32, i32, i32, i8, [19 x i8] }

@image = common global [3 x [2 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"__arr32__image\00", align 1
@targetColor = common global i32 0, align 4
@.str1 = private unnamed_addr constant [12 x i8] c"targetColor\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"image_err\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"targetColor_err\00", align 1
@stackSize = common global i32 0, align 4
@maxStackSize = common global i32 0, align 4
@xstack = common global i32* null, align 8
@ystack = common global i32* null, align 8
@.str4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"image[x][y]\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"xstack[0]\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"ystack[0]\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"popx_return\00", align 1
@__libc_stack_end = global i8* null, align 8
@.str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__uclibc_progname = hidden global i8* getelementptr inbounds ([1 x i8]* @.str14, i32 0, i32 0), align 8
@program_invocation_short_name = global i8* getelementptr inbounds ([1 x i8]* @.str14, i32 0, i32 0), align 8
@program_invocation_name = global i8* getelementptr inbounds ([1 x i8]* @.str14, i32 0, i32 0), align 8
@__environ = global i8** null, align 8
@__pagesize = global i64 0, align 8
@__uClibc_init.been_there_done_that = internal global i32 0, align 4
@__app_fini = hidden global void ()* null, align 8
@__rtld_fini = hidden global void ()* null, align 8
@.str115 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@_stdio_streams = internal global [3 x %struct.__STDIO_FILE_STRUCT.376] [%struct.__STDIO_FILE_STRUCT.376 { i16 544, [2 x i8] zeroinitializer, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, %struct.__STDIO_FILE_STRUCT.376* bitcast (i8*
@stdin = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@stdout = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@stderr = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 160) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@__stdin = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@__stdout = global %struct.__STDIO_FILE_STRUCT.376* bitcast (i8* getelementptr (i8* bitcast ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams to i8*), i64 80) to %struct.__STDIO_FILE_STRUCT.376*), align 8
@_stdio_openlist = global %struct.__STDIO_FILE_STRUCT.376* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i32 0), align 8
@errno = global i32 0, align 4
@h_errno = global i32 0, align 4
@.str44 = private unnamed_addr constant [80 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str145 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str246 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str347 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1448 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str649 = private unnamed_addr constant [71 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

@__progname = alias weak i8** @program_invocation_short_name
@__progname_full = alias weak i8** @program_invocation_name
@environ = alias weak i8*** @__environ

; Function Attrs: nounwind uwtable
define i32 @__user_main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @klee_make_symbolic(i8* bitcast ([3 x [2 x i32]]* @image to i8*), i64 24, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)), !dbg !374
  call void @klee_make_symbolic(i8* bitcast (i32* @targetColor to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !375
  call void @klee_track_error(i8* bitcast ([3 x [2 x i32]]* @image to i8*), i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !376
  call void @klee_track_error(i8* bitcast (i32* @targetColor to i8*), i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !377
  store i32 0, i32* @stackSize, align 4, !dbg !378
  store i32 1, i32* @maxStackSize, align 4, !dbg !379
  %1 = load i32* @maxStackSize, align 4, !dbg !380
  %2 = sext i32 %1 to i64, !dbg !380
  %3 = mul i64 4, %2, !dbg !380
  %4 = call noalias i8* @malloc(i64 %3) #4, !dbg !380
  %5 = bitcast i8* %4 to i32*, !dbg !380
  store i32* %5, i32** @xstack, align 8, !dbg !380
  %6 = load i32* @maxStackSize, align 4, !dbg !381
  %7 = sext i32 %6 to i64, !dbg !381
  %8 = mul i64 4, %7, !dbg !381
  %9 = call noalias i8* @malloc(i64 %8) #4, !dbg !381
  %10 = bitcast i8* %9 to i32*, !dbg !381
  store i32* %10, i32** @ystack, align 8, !dbg !381
  %11 = call i32 @fill(i32 0, i32 0), !dbg !382
  ret i32 0, !dbg !383
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_track_error(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define i32 @fill(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %color = alloca i32, align 4
  %newColor = alloca i32, align 4
  %i = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %inScanLine = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  store i32 3, i32* %width, align 4, !dbg !384
  store i32 2, i32* %height, align 4, !dbg !385
  %4 = load i32* %2, align 4, !dbg !386
  %5 = load i32* %3, align 4, !dbg !386
  %6 = call i32 @getPix(i32 %4, i32 %5), !dbg !386
  store i32 %6, i32* %color, align 4, !dbg !386
  %7 = load i32* %2, align 4, !dbg !387
  %8 = load i32* %2, align 4, !dbg !387
  %9 = load i32* %3, align 4, !dbg !387
  call void @fillLine(i32 %7, i32 %8, i32 %9), !dbg !387
  %10 = load i32* %2, align 4, !dbg !388
  %11 = load i32* %3, align 4, !dbg !388
  %12 = call i32 @getPix(i32 %10, i32 %11), !dbg !388
  store i32 %12, i32* %newColor, align 4, !dbg !388
  %13 = load i32* %2, align 4, !dbg !389
  %14 = load i32* %3, align 4, !dbg !389
  %15 = load i32* %color, align 4, !dbg !389
  call void @setPix(i32 %13, i32 %14, i32 %15), !dbg !389
  %16 = load i32* %color, align 4, !dbg !390
  %17 = load i32* %newColor, align 4, !dbg !390
  %18 = icmp eq i32 %16, %17, !dbg !390
  br i1 %18, label %19, label %20, !dbg !390

; <label>:19                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !392
  br label %164, !dbg !392

; <label>:20                                      ; preds = %0
  store i32 0, i32* @stackSize, align 4, !dbg !393
  %21 = load i32* %2, align 4, !dbg !394
  %22 = load i32* %3, align 4, !dbg !394
  call void @push(i32 %21, i32 %22), !dbg !394
  store i32 0, i32* %i, align 4, !dbg !395
  br label %23, !dbg !395

; <label>:23                                      ; preds = %160, %20
  %24 = load i32* %i, align 4, !dbg !395
  %25 = icmp slt i32 %24, 6, !dbg !395
  br i1 %25, label %26, label %163, !dbg !395

; <label>:26                                      ; preds = %23
  %27 = call i32 @popx(), !dbg !397
  store i32 %27, i32* %2, align 4, !dbg !397
  %28 = load i32* %2, align 4, !dbg !399
  %29 = sext i32 %28 to i64, !dbg !399
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !399
  %30 = load i32* %2, align 4, !dbg !400
  %31 = icmp eq i32 %30, -1, !dbg !400
  br i1 %31, label %32, label %33, !dbg !400

; <label>:32                                      ; preds = %26
  store i32 1, i32* %1, !dbg !402
  br label %164, !dbg !402

; <label>:33                                      ; preds = %26
  %34 = call i32 @popy(), !dbg !403
  store i32 %34, i32* %3, align 4, !dbg !403
  %35 = load i32* %2, align 4, !dbg !404
  %36 = load i32* %3, align 4, !dbg !404
  %37 = call i32 @getPix(i32 %35, i32 %36), !dbg !404
  %38 = load i32* %color, align 4, !dbg !404
  %39 = icmp ne i32 %37, %38, !dbg !404
  br i1 %39, label %160, label %40, !dbg !404

; <label>:40                                      ; preds = %33
  %41 = load i32* %2, align 4, !dbg !406
  store i32 %41, i32* %x1, align 4, !dbg !406
  %42 = load i32* %2, align 4, !dbg !407
  store i32 %42, i32* %x2, align 4, !dbg !407
  br label %43, !dbg !408

; <label>:43                                      ; preds = %55, %40
  %44 = load i32* %x1, align 4, !dbg !408
  %45 = load i32* %3, align 4, !dbg !408
  %46 = call i32 @getPix(i32 %44, i32 %45), !dbg !408
  %47 = load i32* %color, align 4, !dbg !408
  %48 = icmp eq i32 %46, %47, !dbg !408
  br i1 %48, label %49, label %52, !dbg !408

; <label>:49                                      ; preds = %43
  %50 = load i32* %x1, align 4, !dbg !408
  %51 = icmp sge i32 %50, 0, !dbg !408
  br label %52

; <label>:52                                      ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = load i32* %x1, align 4, !dbg !409
  br i1 %53, label %55, label %57

; <label>:55                                      ; preds = %52
  %56 = add nsw i32 %54, -1, !dbg !409
  store i32 %56, i32* %x1, align 4, !dbg !409
  br label %43, !dbg !409

; <label>:57                                      ; preds = %52
  %58 = add nsw i32 %54, 1, !dbg !410
  store i32 %58, i32* %x1, align 4, !dbg !410
  br label %59, !dbg !411

; <label>:59                                      ; preds = %72, %57
  %60 = load i32* %x2, align 4, !dbg !411
  %61 = load i32* %3, align 4, !dbg !411
  %62 = call i32 @getPix(i32 %60, i32 %61), !dbg !411
  %63 = load i32* %color, align 4, !dbg !411
  %64 = icmp eq i32 %62, %63, !dbg !411
  br i1 %64, label %65, label %69, !dbg !411

; <label>:65                                      ; preds = %59
  %66 = load i32* %x2, align 4, !dbg !411
  %67 = load i32* %width, align 4, !dbg !411
  %68 = icmp slt i32 %66, %67, !dbg !411
  br label %69

; <label>:69                                      ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  %71 = load i32* %x2, align 4, !dbg !412
  br i1 %70, label %72, label %74

; <label>:72                                      ; preds = %69
  %73 = add nsw i32 %71, 1, !dbg !412
  store i32 %73, i32* %x2, align 4, !dbg !412
  br label %59, !dbg !412

; <label>:74                                      ; preds = %69
  %75 = add nsw i32 %71, -1, !dbg !413
  store i32 %75, i32* %x2, align 4, !dbg !413
  %76 = load i32* %x1, align 4, !dbg !414
  %77 = load i32* %x2, align 4, !dbg !414
  %78 = load i32* %3, align 4, !dbg !414
  call void @fillLine(i32 %76, i32 %77, i32 %78), !dbg !414
  store i32 0, i32* %inScanLine, align 4, !dbg !415
  %79 = load i32* %x1, align 4, !dbg !416
  store i32 %79, i32* %i1, align 4, !dbg !416
  br label %80, !dbg !416

; <label>:80                                      ; preds = %113, %74
  %81 = load i32* %i1, align 4, !dbg !416
  %82 = load i32* %x2, align 4, !dbg !416
  %83 = icmp sle i32 %81, %82, !dbg !416
  br i1 %83, label %84, label %116, !dbg !416

; <label>:84                                      ; preds = %80
  %85 = load i32* %inScanLine, align 4, !dbg !418
  %86 = icmp eq i32 %85, 0, !dbg !418
  %87 = load i32* %3, align 4, !dbg !418
  %88 = icmp sgt i32 %87, 0, !dbg !418
  %or.cond = and i1 %86, %88, !dbg !418
  br i1 %or.cond, label %89, label %100, !dbg !418

; <label>:89                                      ; preds = %84
  %90 = load i32* %i1, align 4, !dbg !418
  %91 = load i32* %3, align 4, !dbg !418
  %92 = sub nsw i32 %91, 1, !dbg !418
  %93 = call i32 @getPix(i32 %90, i32 %92), !dbg !418
  %94 = load i32* %color, align 4, !dbg !418
  %95 = icmp eq i32 %93, %94, !dbg !418
  br i1 %95, label %96, label %100, !dbg !418

; <label>:96                                      ; preds = %89
  %97 = load i32* %i1, align 4, !dbg !421
  %98 = load i32* %3, align 4, !dbg !421
  %99 = sub nsw i32 %98, 1, !dbg !421
  call void @push(i32 %97, i32 %99), !dbg !421
  store i32 1, i32* %inScanLine, align 4, !dbg !423
  br label %113, !dbg !424

; <label>:100                                     ; preds = %84, %89
  %101 = load i32* %inScanLine, align 4, !dbg !425
  %102 = icmp ne i32 %101, 0, !dbg !425
  %103 = load i32* %3, align 4, !dbg !425
  %104 = icmp sgt i32 %103, 0, !dbg !425
  %or.cond3 = and i1 %102, %104, !dbg !425
  br i1 %or.cond3, label %105, label %113, !dbg !425

; <label>:105                                     ; preds = %100
  %106 = load i32* %i1, align 4, !dbg !425
  %107 = load i32* %3, align 4, !dbg !425
  %108 = sub nsw i32 %107, 1, !dbg !425
  %109 = call i32 @getPix(i32 %106, i32 %108), !dbg !425
  %110 = load i32* %color, align 4, !dbg !425
  %111 = icmp ne i32 %109, %110, !dbg !425
  br i1 %111, label %112, label %113, !dbg !425

; <label>:112                                     ; preds = %105
  store i32 0, i32* %inScanLine, align 4, !dbg !427
  br label %113, !dbg !427

; <label>:113                                     ; preds = %96, %112, %105, %100
  %114 = load i32* %i1, align 4, !dbg !416
  %115 = add nsw i32 %114, 1, !dbg !416
  store i32 %115, i32* %i1, align 4, !dbg !416
  br label %80, !dbg !416

; <label>:116                                     ; preds = %80
  store i32 0, i32* %inScanLine, align 4, !dbg !428
  %117 = load i32* %x1, align 4, !dbg !429
  store i32 %117, i32* %i1, align 4, !dbg !429
  br label %118, !dbg !429

; <label>:118                                     ; preds = %157, %116
  %119 = load i32* %i1, align 4, !dbg !429
  %120 = load i32* %x2, align 4, !dbg !429
  %121 = icmp sle i32 %119, %120, !dbg !429
  br i1 %121, label %122, label %160, !dbg !429

; <label>:122                                     ; preds = %118
  %123 = load i32* %inScanLine, align 4, !dbg !431
  %124 = icmp ne i32 %123, 0, !dbg !431
  br i1 %124, label %141, label %125, !dbg !431

; <label>:125                                     ; preds = %122
  %126 = load i32* %3, align 4, !dbg !431
  %127 = load i32* %height, align 4, !dbg !431
  %128 = sub nsw i32 %127, 1, !dbg !431
  %129 = icmp slt i32 %126, %128, !dbg !431
  br i1 %129, label %130, label %141, !dbg !431

; <label>:130                                     ; preds = %125
  %131 = load i32* %i1, align 4, !dbg !431
  %132 = load i32* %3, align 4, !dbg !431
  %133 = add nsw i32 %132, 1, !dbg !431
  %134 = call i32 @getPix(i32 %131, i32 %133), !dbg !431
  %135 = load i32* %color, align 4, !dbg !431
  %136 = icmp eq i32 %134, %135, !dbg !431
  br i1 %136, label %137, label %141, !dbg !431

; <label>:137                                     ; preds = %130
  %138 = load i32* %i1, align 4, !dbg !434
  %139 = load i32* %3, align 4, !dbg !434
  %140 = add nsw i32 %139, 1, !dbg !434
  call void @push(i32 %138, i32 %140), !dbg !434
  store i32 1, i32* %inScanLine, align 4, !dbg !436
  br label %157, !dbg !437

; <label>:141                                     ; preds = %130, %125, %122
  %142 = load i32* %inScanLine, align 4, !dbg !438
  %143 = icmp ne i32 %142, 0, !dbg !438
  br i1 %143, label %144, label %157, !dbg !438

; <label>:144                                     ; preds = %141
  %145 = load i32* %3, align 4, !dbg !438
  %146 = load i32* %height, align 4, !dbg !438
  %147 = sub nsw i32 %146, 1, !dbg !438
  %148 = icmp slt i32 %145, %147, !dbg !438
  br i1 %148, label %149, label %157, !dbg !438

; <label>:149                                     ; preds = %144
  %150 = load i32* %i1, align 4, !dbg !440
  %151 = load i32* %3, align 4, !dbg !440
  %152 = add nsw i32 %151, 1, !dbg !440
  %153 = call i32 @getPix(i32 %150, i32 %152), !dbg !440
  %154 = load i32* %color, align 4, !dbg !440
  %155 = icmp ne i32 %153, %154, !dbg !440
  br i1 %155, label %156, label %157, !dbg !440

; <label>:156                                     ; preds = %149
  store i32 0, i32* %inScanLine, align 4, !dbg !441
  br label %157, !dbg !441

; <label>:157                                     ; preds = %137, %156, %149, %144, %141
  %158 = load i32* %i1, align 4, !dbg !429
  %159 = add nsw i32 %158, 1, !dbg !429
  store i32 %159, i32* %i1, align 4, !dbg !429
  br label %118, !dbg !429

; <label>:160                                     ; preds = %118, %33
  %161 = load i32* %i, align 4, !dbg !395
  %162 = add nsw i32 %161, 1, !dbg !395
  store i32 %162, i32* %i, align 4, !dbg !395
  br label %23, !dbg !395

; <label>:163                                     ; preds = %23
  store i32 1, i32* %1, !dbg !442
  br label %164, !dbg !442

; <label>:164                                     ; preds = %163, %32, %19
  %165 = load i32* %1, !dbg !443
  ret i32 %165, !dbg !443
}

; Function Attrs: nounwind uwtable
define i32 @getPix(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  %4 = load i32* %2, align 4, !dbg !444
  %5 = icmp slt i32 %4, 0, !dbg !444
  %6 = load i32* %2, align 4, !dbg !444
  %7 = icmp sge i32 %6, 3, !dbg !444
  %or.cond = or i1 %5, %7, !dbg !444
  %8 = load i32* %3, align 4, !dbg !444
  %9 = icmp slt i32 %8, 0, !dbg !444
  %or.cond3 = or i1 %or.cond, %9, !dbg !444
  %10 = load i32* %3, align 4, !dbg !444
  %11 = icmp sge i32 %10, 2, !dbg !444
  %or.cond5 = or i1 %or.cond3, %11, !dbg !444
  %12 = load i32* %2, align 4, !dbg !446
  %13 = sext i32 %12 to i64, !dbg !446
  call void @klee_bound_error(i64 %13, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !446
  %14 = load i32* %3, align 4, !dbg !448
  %15 = sext i32 %14 to i64, !dbg !448
  call void @klee_bound_error(i64 %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !448
  br i1 %or.cond5, label %16, label %17, !dbg !444

; <label>:16                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !449
  br label %33, !dbg !449

; <label>:17                                      ; preds = %0
  %18 = load i32* %3, align 4, !dbg !450
  %19 = sext i32 %18 to i64, !dbg !450
  %20 = load i32* %2, align 4, !dbg !450
  %21 = sext i32 %20 to i64, !dbg !450
  %22 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %21, !dbg !450
  %23 = getelementptr inbounds [2 x i32]* %22, i32 0, i64 %19, !dbg !450
  %24 = load i32* %23, align 4, !dbg !450
  %25 = sext i32 %24 to i64, !dbg !450
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !450
  %26 = load i32* %3, align 4, !dbg !452
  %27 = sext i32 %26 to i64, !dbg !452
  %28 = load i32* %2, align 4, !dbg !452
  %29 = sext i32 %28 to i64, !dbg !452
  %30 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %29, !dbg !452
  %31 = getelementptr inbounds [2 x i32]* %30, i32 0, i64 %27, !dbg !452
  %32 = load i32* %31, align 4, !dbg !452
  store i32 %32, i32* %1, !dbg !452
  br label %33, !dbg !452

; <label>:33                                      ; preds = %17, %16
  %34 = load i32* %1, !dbg !453
  ret i32 %34, !dbg !453
}

declare void @klee_bound_error(i64, i8*, double) #2

; Function Attrs: nounwind uwtable
define void @setPix(i32 %x, i32 %y, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32* %1, align 4, !dbg !454
  %5 = icmp slt i32 %4, 0, !dbg !454
  %6 = load i32* %1, align 4, !dbg !454
  %7 = icmp sge i32 %6, 3, !dbg !454
  %or.cond = or i1 %5, %7, !dbg !454
  %8 = load i32* %2, align 4, !dbg !454
  %9 = icmp slt i32 %8, 0, !dbg !454
  %or.cond3 = or i1 %or.cond, %9, !dbg !454
  %10 = load i32* %2, align 4, !dbg !454
  %11 = icmp sge i32 %10, 2, !dbg !454
  %or.cond5 = or i1 %or.cond3, %11, !dbg !454
  br i1 %or.cond5, label %26, label %12, !dbg !454

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !456
  %14 = load i32* %2, align 4, !dbg !456
  %15 = sext i32 %14 to i64, !dbg !456
  %16 = load i32* %1, align 4, !dbg !456
  %17 = sext i32 %16 to i64, !dbg !456
  %18 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %17, !dbg !456
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 %15, !dbg !456
  store i32 %13, i32* %19, align 4, !dbg !456
  %20 = load i32* %1, align 4, !dbg !458
  %21 = sext i32 %20 to i64, !dbg !458
  call void @klee_bound_error(i64 %21, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !458
  %22 = load i32* %2, align 4, !dbg !459
  %23 = sext i32 %22 to i64, !dbg !459
  call void @klee_bound_error(i64 %23, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !459
  %24 = load i32* %3, align 4, !dbg !460
  %25 = sext i32 %24 to i64, !dbg !460
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), double 1.000000e+00), !dbg !460
  br label %26, !dbg !461

; <label>:26                                      ; preds = %0, %12
  ret void, !dbg !461
}

; Function Attrs: nounwind uwtable
define i32 @popx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32* @stackSize, align 4, !dbg !462
  %3 = icmp eq i32 %2, 0, !dbg !462
  br i1 %3, label %4, label %5, !dbg !462

; <label>:4                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !464
  br label %12, !dbg !464

; <label>:5                                       ; preds = %0
  %6 = load i32* @stackSize, align 4, !dbg !465
  %7 = sub nsw i32 %6, 1, !dbg !465
  %8 = sext i32 %7 to i64, !dbg !465
  %9 = load i32** @xstack, align 8, !dbg !465
  %10 = getelementptr inbounds i32* %9, i64 %8, !dbg !465
  %11 = load i32* %10, align 4, !dbg !465
  store i32 %11, i32* %1, !dbg !465
  br label %12, !dbg !465

; <label>:12                                      ; preds = %5, %4
  %13 = load i32* %1, !dbg !466
  ret i32 %13, !dbg !466
}

; Function Attrs: nounwind uwtable
define i32 @popy() #0 {
  %value = alloca i32, align 4
  %1 = load i32* @stackSize, align 4, !dbg !467
  %2 = sub nsw i32 %1, 1, !dbg !467
  %3 = sext i32 %2 to i64, !dbg !467
  %4 = load i32** @ystack, align 8, !dbg !467
  %5 = getelementptr inbounds i32* %4, i64 %3, !dbg !467
  %6 = load i32* %5, align 4, !dbg !467
  store i32 %6, i32* %value, align 4, !dbg !467
  %7 = load i32* @stackSize, align 4, !dbg !468
  %8 = add nsw i32 %7, -1, !dbg !468
  store i32 %8, i32* @stackSize, align 4, !dbg !468
  %9 = load i32* %value, align 4, !dbg !469
  ret i32 %9, !dbg !469
}

; Function Attrs: nounwind uwtable
define void @fillLine(i32 %x1, i32 %x2, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %x = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %x1, i32* %1, align 4
  store i32 %x2, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  %4 = load i32* %1, align 4, !dbg !470
  %5 = sext i32 %4 to i64, !dbg !470
  call void @klee_bound_error(i64 %5, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), double 1.000000e+00), !dbg !470
  %6 = load i32* %2, align 4, !dbg !471
  %7 = sext i32 %6 to i64, !dbg !471
  call void @klee_bound_error(i64 %7, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), double 1.000000e+00), !dbg !471
  %8 = load i32* %1, align 4, !dbg !472
  %9 = load i32* %2, align 4, !dbg !472
  %10 = icmp sgt i32 %8, %9, !dbg !472
  br i1 %10, label %11, label %15, !dbg !472

; <label>:11                                      ; preds = %0
  %12 = load i32* %1, align 4, !dbg !474
  store i32 %12, i32* %t, align 4, !dbg !474
  %13 = load i32* %2, align 4, !dbg !476
  store i32 %13, i32* %1, align 4, !dbg !476
  %14 = load i32* %t, align 4, !dbg !477
  store i32 %14, i32* %2, align 4, !dbg !477
  br label %15, !dbg !478

; <label>:15                                      ; preds = %11, %0
  %16 = load i32* %1, align 4, !dbg !479
  store i32 %16, i32* %x, align 4, !dbg !479
  br label %17, !dbg !479

; <label>:17                                      ; preds = %21, %15
  %18 = load i32* %x, align 4, !dbg !479
  %19 = load i32* %2, align 4, !dbg !479
  %20 = icmp sle i32 %18, %19, !dbg !479
  br i1 %20, label %21, label %27, !dbg !479

; <label>:21                                      ; preds = %17
  %22 = load i32* %x, align 4, !dbg !481
  %23 = load i32* %3, align 4, !dbg !481
  %24 = load i32* @targetColor, align 4, !dbg !481
  call void @setPix(i32 %22, i32 %23, i32 %24), !dbg !481
  %25 = load i32* %x, align 4, !dbg !479
  %26 = add nsw i32 %25, 1, !dbg !479
  store i32 %26, i32* %x, align 4, !dbg !479
  br label %17, !dbg !479

; <label>:27                                      ; preds = %17
  %28 = load i32* %t, align 4, !dbg !482
  %29 = sext i32 %28 to i64, !dbg !482
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), double 1.000000e+00), !dbg !482
  %30 = load i32* %x, align 4, !dbg !483
  %31 = sext i32 %30 to i64, !dbg !483
  call void @klee_bound_error(i64 %31, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !483
  %32 = load i32* %3, align 4, !dbg !484
  %33 = sext i32 %32 to i64, !dbg !484
  call void @klee_bound_error(i64 %33, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: nounwind uwtable
define void @push(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %newXStack = alloca i32*, align 8
  %newYStack = alloca i32*, align 8
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  %3 = load i32* @stackSize, align 4, !dbg !486
  %4 = add nsw i32 %3, 1, !dbg !486
  store i32 %4, i32* @stackSize, align 4, !dbg !486
  %5 = load i32* @stackSize, align 4, !dbg !487
  %6 = icmp eq i32 %5, 1, !dbg !487
  br i1 %6, label %7, label %40, !dbg !487

; <label>:7                                       ; preds = %0
  %8 = load i32* @maxStackSize, align 4, !dbg !489
  %9 = sext i32 %8 to i64, !dbg !489
  %10 = mul i64 4, %9, !dbg !489
  %11 = mul i64 %10, 2, !dbg !489
  %12 = call noalias i8* @malloc(i64 %11) #4, !dbg !489
  %13 = bitcast i8* %12 to i32*, !dbg !489
  store i32* %13, i32** %newXStack, align 8, !dbg !489
  %14 = load i32* @maxStackSize, align 4, !dbg !491
  %15 = sext i32 %14 to i64, !dbg !491
  %16 = mul i64 4, %15, !dbg !491
  %17 = mul i64 %16, 2, !dbg !491
  %18 = call noalias i8* @malloc(i64 %17) #4, !dbg !491
  %19 = bitcast i8* %18 to i32*, !dbg !491
  store i32* %19, i32** %newYStack, align 8, !dbg !491
  %20 = load i32** %newXStack, align 8, !dbg !492
  %21 = bitcast i32* %20 to i8*, !dbg !492
  %22 = load i32** @xstack, align 8, !dbg !492
  %23 = bitcast i32* %22 to i8*, !dbg !492
  %24 = load i32* @maxStackSize, align 4, !dbg !492
  %25 = sext i32 %24 to i64, !dbg !492
  %26 = mul i64 4, %25, !dbg !492
  %27 = call i8* @memcpy(i8* %21, i8* %23, i64 %26)
  %28 = load i32** %newYStack, align 8, !dbg !493
  %29 = bitcast i32* %28 to i8*, !dbg !493
  %30 = load i32** @ystack, align 8, !dbg !493
  %31 = bitcast i32* %30 to i8*, !dbg !493
  %32 = load i32* @maxStackSize, align 4, !dbg !493
  %33 = sext i32 %32 to i64, !dbg !493
  %34 = mul i64 4, %33, !dbg !493
  %35 = call i8* @memcpy(i8* %29, i8* %31, i64 %34)
  %36 = load i32** %newXStack, align 8, !dbg !494
  store i32* %36, i32** @xstack, align 8, !dbg !494
  %37 = load i32** %newYStack, align 8, !dbg !495
  store i32* %37, i32** @ystack, align 8, !dbg !495
  %38 = load i32* @maxStackSize, align 4, !dbg !496
  %39 = mul nsw i32 %38, 2, !dbg !496
  store i32 %39, i32* @maxStackSize, align 4, !dbg !496
  br label %40, !dbg !497

; <label>:40                                      ; preds = %7, %0
  %41 = load i32* %1, align 4, !dbg !498
  %42 = load i32* @stackSize, align 4, !dbg !498
  %43 = sub nsw i32 %42, 1, !dbg !498
  %44 = sext i32 %43 to i64, !dbg !498
  %45 = load i32** @xstack, align 8, !dbg !498
  %46 = getelementptr inbounds i32* %45, i64 %44, !dbg !498
  store i32 %41, i32* %46, align 4, !dbg !498
  %47 = load i32* %2, align 4, !dbg !499
  %48 = load i32* @stackSize, align 4, !dbg !499
  %49 = sub nsw i32 %48, 1, !dbg !499
  %50 = sext i32 %49 to i64, !dbg !499
  %51 = load i32** @ystack, align 8, !dbg !499
  %52 = getelementptr inbounds i32* %51, i64 %50, !dbg !499
  store i32 %47, i32* %52, align 4, !dbg !499
  %53 = load i32* %1, align 4, !dbg !500
  %54 = sext i32 %53 to i64, !dbg !500
  call void @klee_bound_error(i64 %54, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !500
  %55 = load i32* %2, align 4, !dbg !501
  %56 = sext i32 %55 to i64, !dbg !501
  call void @klee_bound_error(i64 %56, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !501
  %57 = load i32** @xstack, align 8, !dbg !502
  %58 = getelementptr inbounds i32* %57, i64 0, !dbg !502
  %59 = load i32* %58, align 4, !dbg !502
  %60 = sext i32 %59 to i64, !dbg !502
  call void @klee_bound_error(i64 %60, i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0), double 1.000000e+00), !dbg !502
  %61 = load i32** @ystack, align 8, !dbg !503
  %62 = getelementptr inbounds i32* %61, i64 0, !dbg !503
  %63 = load i32* %62, align 4, !dbg !503
  %64 = sext i32 %63 to i64, !dbg !503
  call void @klee_bound_error(i64 %64, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), double 1.000000e+00), !dbg !503
  ret void, !dbg !504
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @__uClibc_init() #0 {
entry:
  %0 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !505
  %tobool = icmp ne i32 %0, 0, !dbg !505
  br i1 %tobool, label %if.end3, label %if.end, !dbg !505

if.end:                                           ; preds = %entry
  %1 = load i32* @__uClibc_init.been_there_done_that, align 4, !dbg !507
  %inc = add nsw i32 %1, 1, !dbg !507
  store i32 %inc, i32* @__uClibc_init.been_there_done_that, align 4, !dbg !507
  store i64 4096, i64* @__pagesize, align 8, !dbg !508
  %tobool1 = icmp ne i64 1, 0, !dbg !509
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !509

if.then2:                                         ; preds = %if.end
  call void @_stdio_init() #13, !dbg !511
  br label %if.end3, !dbg !511

if.end3:                                          ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !512
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @__uClibc_fini() #0 {
entry:
  %0 = load void ()** @__app_fini, align 8, !dbg !513
  %cmp = icmp ne void ()* %0, null, !dbg !513
  br i1 %cmp, label %if.then, label %if.end, !dbg !513

if.then:                                          ; preds = %entry
  %1 = load void ()** @__app_fini, align 8, !dbg !515
  call void %1() #13, !dbg !515
  br label %if.end, !dbg !515

if.end:                                           ; preds = %if.then, %entry
  %2 = load void ()** @__rtld_fini, align 8, !dbg !516
  %cmp1 = icmp ne void ()* %2, null, !dbg !516
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !516

if.then2:                                         ; preds = %if.end
  %3 = load void ()** @__rtld_fini, align 8, !dbg !518
  call void %3() #13, !dbg !518
  br label %if.end3, !dbg !518

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !519
}

; Function Attrs: noreturn nounwind uwtable
define void @__uClibc_main(i32 (i32, i8**, i8**)* %main, i32 %argc, i8** %argv, void ()* %app_init, void ()* %app_fini, void ()* %rtld_fini, i8* %stack_end) #5 {
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
  %0 = load i8** %stack_end.addr, align 8, !dbg !520
  store i8* %0, i8** @__libc_stack_end, align 8, !dbg !520
  %1 = load void ()** %rtld_fini.addr, align 8, !dbg !521
  store void ()* %1, void ()** @__rtld_fini, align 8, !dbg !521
  %2 = load i32* %argc.addr, align 4, !dbg !522
  %add = add nsw i32 %2, 1, !dbg !522
  %idxprom = sext i32 %add to i64, !dbg !522
  %3 = load i8*** %argv.addr, align 8, !dbg !522
  %arrayidx = getelementptr inbounds i8** %3, i64 %idxprom, !dbg !522
  store i8** %arrayidx, i8*** @__environ, align 8, !dbg !522
  %4 = load i8*** @__environ, align 8, !dbg !523
  %5 = bitcast i8** %4 to i8*, !dbg !523
  %6 = load i8*** %argv.addr, align 8, !dbg !523
  %7 = load i8** %6, align 8, !dbg !523
  %cmp = icmp eq i8* %5, %7, !dbg !523
  br i1 %cmp, label %if.then, label %if.end, !dbg !523

if.then:                                          ; preds = %entry
  %8 = load i32* %argc.addr, align 4, !dbg !525
  %idxprom1 = sext i32 %8 to i64, !dbg !525
  %9 = load i8*** %argv.addr, align 8, !dbg !525
  %arrayidx2 = getelementptr inbounds i8** %9, i64 %idxprom1, !dbg !525
  store i8** %arrayidx2, i8*** @__environ, align 8, !dbg !525
  br label %if.end, !dbg !527

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i32 0, !dbg !528
  %10 = bitcast %struct.Elf64_auxv_t* %arraydecay to i8*, !dbg !528
  %call = call i8* @memset(i8* %10, i32 0, i64 240) #14, !dbg !528
  %11 = load i8*** @__environ, align 8, !dbg !529
  %12 = bitcast i8** %11 to i64*, !dbg !529
  store i64* %12, i64** %aux_dat, align 8, !dbg !529
  br label %while.cond, !dbg !530

while.cond:                                       ; preds = %while.cond, %if.end
  %13 = load i64** %aux_dat, align 8, !dbg !530
  %14 = load i64* %13, align 8, !dbg !530
  %tobool = icmp ne i64 %14, 0, !dbg !530
  %15 = load i64** %aux_dat, align 8, !dbg !531
  %incdec.ptr = getelementptr inbounds i64* %15, i32 1, !dbg !531
  store i64* %incdec.ptr, i64** %aux_dat, align 8, !dbg !531
  br i1 %tobool, label %while.cond, label %while.cond4, !dbg !530

while.cond4:                                      ; preds = %while.cond, %if.end12
  %16 = load i64** %aux_dat, align 8, !dbg !533
  %17 = load i64* %16, align 8, !dbg !533
  %tobool5 = icmp ne i64 %17, 0, !dbg !533
  br i1 %tobool5, label %while.body6, label %while.end13, !dbg !533

while.body6:                                      ; preds = %while.cond4
  %18 = load i64** %aux_dat, align 8, !dbg !534
  %19 = bitcast i64* %18 to %struct.Elf64_auxv_t*, !dbg !534
  store %struct.Elf64_auxv_t* %19, %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !534
  %20 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !536
  %a_type = getelementptr inbounds %struct.Elf64_auxv_t* %20, i32 0, i32 0, !dbg !536
  %21 = load i64* %a_type, align 8, !dbg !536
  %cmp7 = icmp ule i64 %21, 14, !dbg !536
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !536

if.then8:                                         ; preds = %while.body6
  %22 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !538
  %a_type9 = getelementptr inbounds %struct.Elf64_auxv_t* %22, i32 0, i32 0, !dbg !538
  %23 = load i64* %a_type9, align 8, !dbg !538
  %arrayidx10 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 %23, !dbg !538
  %24 = bitcast %struct.Elf64_auxv_t* %arrayidx10 to i8*, !dbg !538
  %25 = load %struct.Elf64_auxv_t** %auxv_entry, align 8, !dbg !538
  %26 = bitcast %struct.Elf64_auxv_t* %25 to i8*, !dbg !538
  %call11 = call i8* @memcpy(i8* %24, i8* %26, i64 16) #14, !dbg !538
  br label %if.end12, !dbg !540

if.end12:                                         ; preds = %if.then8, %while.body6
  %27 = load i64** %aux_dat, align 8, !dbg !541
  %add.ptr = getelementptr inbounds i64* %27, i64 2, !dbg !541
  store i64* %add.ptr, i64** %aux_dat, align 8, !dbg !541
  br label %while.cond4, !dbg !542

while.end13:                                      ; preds = %while.cond4
  call void @__uClibc_init() #13, !dbg !543
  %arrayidx14 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !544
  %a_un = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx14, i32 0, i32 1, !dbg !544
  %a_val = bitcast %union.anon.120* %a_un to i64*, !dbg !544
  %28 = load i64* %a_val, align 8, !dbg !544
  %tobool15 = icmp ne i64 %28, 0, !dbg !544
  br i1 %tobool15, label %cond.true, label %cond.end, !dbg !544

cond.true:                                        ; preds = %while.end13
  %arrayidx16 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 6, !dbg !544
  %a_un17 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx16, i32 0, i32 1, !dbg !544
  %a_val18 = bitcast %union.anon.120* %a_un17 to i64*, !dbg !544
  %29 = load i64* %a_val18, align 8, !dbg !544
  br label %cond.end, !dbg !544

cond.end:                                         ; preds = %while.end13, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ 4096, %while.end13 ], !dbg !544
  store i64 %cond, i64* @__pagesize, align 8, !dbg !544
  %arrayidx19 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !545
  %a_un20 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx19, i32 0, i32 1, !dbg !545
  %a_val21 = bitcast %union.anon.120* %a_un20 to i64*, !dbg !545
  %30 = load i64* %a_val21, align 8, !dbg !545
  %cmp22 = icmp eq i64 %30, -1, !dbg !545
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !545

land.lhs.true:                                    ; preds = %cond.end
  %call23 = call i32 @__check_suid() #13, !dbg !545
  %tobool24 = icmp ne i32 %call23, 0, !dbg !545
  br i1 %tobool24, label %if.then45, label %lor.lhs.false, !dbg !545

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %arrayidx25 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !545
  %a_un26 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx25, i32 0, i32 1, !dbg !545
  %a_val27 = bitcast %union.anon.120* %a_un26 to i64*, !dbg !545
  %31 = load i64* %a_val27, align 8, !dbg !545
  %cmp28 = icmp ne i64 %31, -1, !dbg !545
  br i1 %cmp28, label %land.lhs.true29, label %if.end46, !dbg !545

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 11, !dbg !545
  %a_un31 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx30, i32 0, i32 1, !dbg !545
  %a_val32 = bitcast %union.anon.120* %a_un31 to i64*, !dbg !545
  %32 = load i64* %a_val32, align 8, !dbg !545
  %arrayidx33 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 12, !dbg !545
  %a_un34 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx33, i32 0, i32 1, !dbg !545
  %a_val35 = bitcast %union.anon.120* %a_un34 to i64*, !dbg !545
  %33 = load i64* %a_val35, align 8, !dbg !545
  %cmp36 = icmp ne i64 %32, %33, !dbg !545
  br i1 %cmp36, label %if.then45, label %lor.lhs.false37, !dbg !545

lor.lhs.false37:                                  ; preds = %land.lhs.true29
  %arrayidx38 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 13, !dbg !545
  %a_un39 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx38, i32 0, i32 1, !dbg !545
  %a_val40 = bitcast %union.anon.120* %a_un39 to i64*, !dbg !545
  %34 = load i64* %a_val40, align 8, !dbg !545
  %arrayidx41 = getelementptr inbounds [15 x %struct.Elf64_auxv_t]* %auxvt, i32 0, i64 14, !dbg !545
  %a_un42 = getelementptr inbounds %struct.Elf64_auxv_t* %arrayidx41, i32 0, i32 1, !dbg !545
  %a_val43 = bitcast %union.anon.120* %a_un42 to i64*, !dbg !545
  %35 = load i64* %a_val43, align 8, !dbg !545
  %cmp44 = icmp ne i64 %34, %35, !dbg !545
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !545

if.then45:                                        ; preds = %lor.lhs.false37, %land.lhs.true29, %land.lhs.true
  call void @__check_one_fd(i32 0, i32 131072) #13, !dbg !547
  call void @__check_one_fd(i32 1, i32 131074) #13, !dbg !549
  call void @__check_one_fd(i32 2, i32 131074) #13, !dbg !550
  br label %if.end46, !dbg !551

if.end46:                                         ; preds = %if.then45, %lor.lhs.false37, %lor.lhs.false
  %36 = load i8*** %argv.addr, align 8, !dbg !552
  %37 = load i8** %36, align 8, !dbg !552
  store i8* %37, i8** @__uclibc_progname, align 8, !dbg !552
  %38 = load i8*** %argv.addr, align 8, !dbg !553
  %39 = load i8** %38, align 8, !dbg !553
  store i8* %39, i8** @program_invocation_name, align 8, !dbg !553
  %40 = load i8*** %argv.addr, align 8, !dbg !554
  %41 = load i8** %40, align 8, !dbg !554
  %call47 = call i8* @strrchr(i8* %41, i32 47) #15, !dbg !554
  store i8* %call47, i8** @program_invocation_short_name, align 8, !dbg !554
  %42 = load i8** @program_invocation_short_name, align 8, !dbg !555
  %cmp48 = icmp ne i8* %42, null, !dbg !555
  br i1 %cmp48, label %if.then49, label %if.else, !dbg !555

if.then49:                                        ; preds = %if.end46
  %43 = load i8** @program_invocation_short_name, align 8, !dbg !557
  %incdec.ptr50 = getelementptr inbounds i8* %43, i32 1, !dbg !557
  store i8* %incdec.ptr50, i8** @program_invocation_short_name, align 8, !dbg !557
  br label %if.end51, !dbg !557

if.else:                                          ; preds = %if.end46
  %44 = load i8** @program_invocation_name, align 8, !dbg !558
  store i8* %44, i8** @program_invocation_short_name, align 8, !dbg !558
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %45 = load void ()** %app_fini.addr, align 8, !dbg !559
  store void ()* %45, void ()** @__app_fini, align 8, !dbg !559
  %46 = load void ()** %app_init.addr, align 8, !dbg !560
  %cmp52 = icmp ne void ()* %46, null, !dbg !560
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !560

if.then53:                                        ; preds = %if.end51
  %47 = load void ()** %app_init.addr, align 8, !dbg !562
  call void %47() #13, !dbg !562
  br label %if.end54, !dbg !564

if.end54:                                         ; preds = %if.then53, %if.end51
  %tobool55 = icmp ne i64 1, 0, !dbg !565
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !565

if.then56:                                        ; preds = %if.end54
  %call57 = call i32* @__errno_location() #16, !dbg !567
  store i32 0, i32* %call57, align 4, !dbg !567
  br label %if.end58, !dbg !567

if.end58:                                         ; preds = %if.then56, %if.end54
  %tobool60 = icmp ne i64 1, 0, !dbg !568
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !568

if.then61:                                        ; preds = %if.end58
  %call62 = call i32* @__h_errno_location() #16, !dbg !570
  store i32 0, i32* %call62, align 4, !dbg !570
  br label %if.end63, !dbg !570

if.end63:                                         ; preds = %if.then61, %if.end58
  %48 = load i32 (i32, i8**, i8**)** %main.addr, align 8, !dbg !571
  %49 = load i32* %argc.addr, align 4, !dbg !571
  %50 = load i8*** %argv.addr, align 8, !dbg !571
  %51 = load i8*** @__environ, align 8, !dbg !571
  %call64 = call i32 %48(i32 %49, i8** %50, i8** %51) #13, !dbg !571
  call void @exit(i32 %call64) #17, !dbg !571
  unreachable, !dbg !571
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat.119*) #3

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @getgid() #3

; Function Attrs: nounwind
declare i32 @getegid() #3

; Function Attrs: nounwind uwtable
define internal i32 @__check_suid() #0 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca i32, align 4
  %euid = alloca i32, align 4
  %gid = alloca i32, align 4
  %egid = alloca i32, align 4
  %call = call i32 @getuid() #14, !dbg !572
  store i32 %call, i32* %uid, align 4, !dbg !572
  %call1 = call i32 @geteuid() #14, !dbg !574
  store i32 %call1, i32* %euid, align 4, !dbg !574
  %call2 = call i32 @getgid() #14, !dbg !575
  store i32 %call2, i32* %gid, align 4, !dbg !575
  %call3 = call i32 @getegid() #14, !dbg !576
  store i32 %call3, i32* %egid, align 4, !dbg !576
  %0 = load i32* %uid, align 4, !dbg !577
  %1 = load i32* %euid, align 4, !dbg !577
  %cmp = icmp eq i32 %0, %1, !dbg !577
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !577

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %gid, align 4, !dbg !577
  %3 = load i32* %egid, align 4, !dbg !577
  %cmp4 = icmp eq i32 %2, %3, !dbg !577
  br i1 %cmp4, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, !dbg !579
  br label %return, !dbg !579

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %retval, !dbg !581
  br label %return, !dbg !581

return:                                           ; preds = %if.end, %if.then
  %4 = load i32* %retval, !dbg !582
  ret i32 %4, !dbg !582
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
  %0 = load i32* %fd.addr, align 4, !dbg !583
  %call = call i32 (i32, i32, ...)* @fcntl(i32 %0, i32 1) #13, !dbg !583
  %cmp = icmp eq i32 %call, -1, !dbg !583
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !583

land.rhs:                                         ; preds = %entry
  %call1 = call i32* @__errno_location() #16, !dbg !583
  %1 = load i32* %call1, align 4, !dbg !583
  %cmp2 = icmp eq i32 %1, 9, !dbg !583
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
  %3 = load i32* %mode.addr, align 4, !dbg !585
  %call4 = call i32 (i8*, i32, ...)* @open(i8* getelementptr inbounds ([10 x i8]* @.str115, i32 0, i32 0), i32 %3) #13, !dbg !585
  store i32 %call4, i32* %nullfd, align 4, !dbg !585
  %4 = load i32* %nullfd, align 4, !dbg !587
  %5 = load i32* %fd.addr, align 4, !dbg !587
  %cmp5 = icmp ne i32 %4, %5, !dbg !587
  br i1 %cmp5, label %if.then16, label %lor.lhs.false, !dbg !587

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %fd.addr, align 4, !dbg !587
  %call7 = call i32 @fstat(i32 %6, %struct.stat.119* %st) #14, !dbg !587
  %tobool8 = icmp ne i32 %call7, 0, !dbg !587
  br i1 %tobool8, label %if.then16, label %lor.lhs.false9, !dbg !587

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %st_mode = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 3, !dbg !587
  %7 = load i32* %st_mode, align 4, !dbg !587
  %and = and i32 %7, 61440, !dbg !587
  %cmp10 = icmp eq i32 %and, 8192, !dbg !587
  br i1 %cmp10, label %lor.lhs.false12, label %if.then16, !dbg !587

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %st_rdev = getelementptr inbounds %struct.stat.119* %st, i32 0, i32 7, !dbg !587
  %8 = load i64* %st_rdev, align 8, !dbg !587
  %call13 = call i64 @gnu_dev_makedev(i32 1, i32 3) #14, !dbg !589
  %cmp14 = icmp ne i64 %8, %call13, !dbg !589
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !589

if.then16:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %if.then
  call void @abort() #17, !dbg !590
  unreachable, !dbg !590

if.end17:                                         ; preds = %lor.lhs.false12, %land.end
  ret void, !dbg !592
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) #7 {
entry:
  %__major.addr = alloca i32, align 4
  %__minor.addr = alloca i32, align 4
  store i32 %__major, i32* %__major.addr, align 4
  store i32 %__minor, i32* %__minor.addr, align 4
  %0 = load i32* %__minor.addr, align 4, !dbg !593
  %and = and i32 %0, 255, !dbg !593
  %1 = load i32* %__major.addr, align 4, !dbg !593
  %and1 = and i32 %1, 4095, !dbg !593
  %int_cast_to_i64 = zext i32 8 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !593
  %shl = shl i32 %and1, 8, !dbg !593
  %or = or i32 %and, %shl, !dbg !593
  %conv = zext i32 %or to i64, !dbg !593
  %2 = load i32* %__minor.addr, align 4, !dbg !593
  %and2 = and i32 %2, -256, !dbg !593
  %conv3 = zext i32 %and2 to i64, !dbg !593
  %int_cast_to_i641 = bitcast i64 12 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i641), !dbg !593
  %shl4 = shl i64 %conv3, 12, !dbg !593
  %or5 = or i64 %conv, %shl4, !dbg !593
  %3 = load i32* %__major.addr, align 4, !dbg !593
  %and6 = and i32 %3, -4096, !dbg !593
  %conv7 = zext i32 %and6 to i64, !dbg !593
  %int_cast_to_i642 = bitcast i64 32 to i64
  call void @klee_overshift_check(i64 64, i64 %int_cast_to_i642), !dbg !593
  %shl8 = shl i64 %conv7, 32, !dbg !593
  %or9 = or i64 %or5, %shl8, !dbg !593
  ret i64 %or9, !dbg !593
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_term() #0 {
entry:
  %ptr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, align 8, !dbg !595
  store %struct.__STDIO_FILE_STRUCT.376* %0, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !595
  br label %for.cond, !dbg !595

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !595
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT.376* %1, null, !dbg !595
  br i1 %tobool, label %for.body, label %for.end, !dbg !595

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !597
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 0, !dbg !597
  %3 = load i16* %__modeflags, align 2, !dbg !597
  %conv = zext i16 %3 to i32, !dbg !597
  %and = and i32 %conv, 64, !dbg !597
  %tobool1 = icmp ne i32 %and, 0, !dbg !597
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !597

if.then:                                          ; preds = %for.body
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !600
  %call = call i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* %4) #13, !dbg !600
  br label %for.inc, !dbg !602

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !595
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 9, !dbg !595
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %__nextopen, align 8, !dbg !595
  store %struct.__STDIO_FILE_STRUCT.376* %6, %struct.__STDIO_FILE_STRUCT.376** %ptr, align 8, !dbg !595
  br label %for.cond, !dbg !595

for.end:                                          ; preds = %for.cond
  ret void, !dbg !603
}

; Function Attrs: nounwind uwtable
define hidden void @_stdio_init() #0 {
entry:
  %old_errno = alloca i32, align 4
  %0 = load i32* @errno, align 4, !dbg !604
  store i32 %0, i32* %old_errno, align 4, !dbg !604
  %call = call i32 @isatty(i32 0) #14, !dbg !605
  %sub = sub nsw i32 1, %call, !dbg !605
  %mul = mul i32 %sub, 256, !dbg !605
  %1 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !605
  %conv = zext i16 %1 to i32, !dbg !605
  %xor = xor i32 %conv, %mul, !dbg !605
  %conv1 = trunc i32 %xor to i16, !dbg !605
  store i16 %conv1, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 0, i32 0), align 2, !dbg !605
  %call2 = call i32 @isatty(i32 1) #14, !dbg !606
  %sub3 = sub nsw i32 1, %call2, !dbg !606
  %mul4 = mul i32 %sub3, 256, !dbg !606
  %2 = load i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !606
  %conv5 = zext i16 %2 to i32, !dbg !606
  %xor6 = xor i32 %conv5, %mul4, !dbg !606
  %conv7 = trunc i32 %xor6 to i16, !dbg !606
  store i16 %conv7, i16* getelementptr inbounds ([3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, i32 0, i64 1, i32 0), align 2, !dbg !606
  %3 = load i32* %old_errno, align 4, !dbg !607
  store i32 %3, i32* @errno, align 4, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: nounwind uwtable
define hidden i64 @__stdio_wcommit(%struct.__STDIO_FILE_STRUCT.376* noalias %stream) #0 {
entry:
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT.376*, align 8
  %bufsize = alloca i64, align 8
  store %struct.__STDIO_FILE_STRUCT.376* %stream, %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8
  %0 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !609
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %0, i32 0, i32 5, !dbg !609
  %1 = load i8** %__bufpos, align 8, !dbg !609
  %2 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !609
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %2, i32 0, i32 3, !dbg !609
  %3 = load i8** %__bufstart, align 8, !dbg !609
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !609
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !609
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !609
  store i64 %sub.ptr.sub, i64* %bufsize, align 8, !dbg !609
  %cmp = icmp ne i64 %sub.ptr.sub, 0, !dbg !609
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  %4 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !611
  %__bufstart1 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %4, i32 0, i32 3, !dbg !611
  %5 = load i8** %__bufstart1, align 8, !dbg !611
  %6 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !611
  %__bufpos2 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %6, i32 0, i32 5, !dbg !611
  store i8* %5, i8** %__bufpos2, align 8, !dbg !611
  %7 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !613
  %8 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !613
  %__bufstart3 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %8, i32 0, i32 3, !dbg !613
  %9 = load i8** %__bufstart3, align 8, !dbg !613
  %10 = load i64* %bufsize, align 8, !dbg !613
  %call = call i64 @__stdio_WRITE(%struct.__STDIO_FILE_STRUCT.376* %7, i8* %9, i64 %10) #13, !dbg !613
  br label %if.end, !dbg !614

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !615
  %__bufpos4 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %11, i32 0, i32 5, !dbg !615
  %12 = load i8** %__bufpos4, align 8, !dbg !615
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !615
  %__bufstart5 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 3, !dbg !615
  %14 = load i8** %__bufstart5, align 8, !dbg !615
  %sub.ptr.lhs.cast6 = ptrtoint i8* %12 to i64, !dbg !615
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64, !dbg !615
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !615
  ret i64 %sub.ptr.sub8, !dbg !615
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
  %0 = load i8** %s1.addr, align 8, !dbg !616
  store i8* %0, i8** %r1, align 8, !dbg !616
  %1 = load i8** %s2.addr, align 8, !dbg !617
  store i8* %1, i8** %r2, align 8, !dbg !617
  br label %while.cond, !dbg !618

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !618
  %tobool = icmp ne i64 %2, 0, !dbg !618
  br i1 %tobool, label %while.body, label %while.end, !dbg !618

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !619
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !619
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !619
  %4 = load i8* %3, align 1, !dbg !619
  %5 = load i8** %r1, align 8, !dbg !619
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !619
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !619
  store i8 %4, i8* %5, align 1, !dbg !619
  %6 = load i64* %n.addr, align 8, !dbg !621
  %dec = add i64 %6, -1, !dbg !621
  store i64 %dec, i64* %n.addr, align 8, !dbg !621
  br label %while.cond, !dbg !622

while.end:                                        ; preds = %while.cond
  %7 = load i8** %s1.addr, align 8, !dbg !623
  ret i8* %7, !dbg !623
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
  %0 = load i8** %s.addr, align 8, !dbg !624
  store i8* %0, i8** %p, align 8, !dbg !624
  br label %while.cond, !dbg !625

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %n.addr, align 8, !dbg !625
  %tobool = icmp ne i64 %1, 0, !dbg !625
  br i1 %tobool, label %while.body, label %while.end, !dbg !625

while.body:                                       ; preds = %while.cond
  %2 = load i32* %c.addr, align 4, !dbg !626
  %conv = trunc i32 %2 to i8, !dbg !626
  %3 = load i8** %p, align 8, !dbg !626
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !626
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !626
  store i8 %conv, i8* %3, align 1, !dbg !626
  %4 = load i64* %n.addr, align 8, !dbg !628
  %dec = add i64 %4, -1, !dbg !628
  store i64 %dec, i64* %n.addr, align 8, !dbg !628
  br label %while.cond, !dbg !629

while.end:                                        ; preds = %while.cond
  %5 = load i8** %s.addr, align 8, !dbg !630
  ret i8* %5, !dbg !630
}

; Function Attrs: nounwind readonly uwtable
define i8* @strrchr(i8* %s, i32 %c) #8 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i8* null, i8** %p, align 8, !dbg !631
  br label %do.body, !dbg !632

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8** %s.addr, align 8, !dbg !633
  %1 = load i8* %0, align 1, !dbg !633
  %conv = sext i8 %1 to i32, !dbg !633
  %2 = load i32* %c.addr, align 4, !dbg !633
  %conv1 = trunc i32 %2 to i8, !dbg !633
  %conv2 = sext i8 %conv1 to i32, !dbg !633
  %cmp = icmp eq i32 %conv, %conv2, !dbg !633
  br i1 %cmp, label %if.then, label %do.cond, !dbg !633

if.then:                                          ; preds = %do.body
  %3 = load i8** %s.addr, align 8, !dbg !636
  store i8* %3, i8** %p, align 8, !dbg !636
  br label %do.cond, !dbg !638

do.cond:                                          ; preds = %do.body, %if.then
  %4 = load i8** %s.addr, align 8, !dbg !639
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1, !dbg !639
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !639
  %5 = load i8* %4, align 1, !dbg !639
  %tobool = icmp ne i8 %5, 0, !dbg !639
  br i1 %tobool, label %do.body, label %do.end, !dbg !639

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !640
  ret i8* %6, !dbg !640
}

; Function Attrs: nounwind uwtable
define i32 @isatty(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %term = alloca %struct.termios.616, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32* %fd.addr, align 4, !dbg !641
  %call = call i32 @tcgetattr(i32 %0, %struct.termios.616* %term) #14, !dbg !641
  %cmp = icmp eq i32 %call, 0, !dbg !641
  %conv = zext i1 %cmp to i32, !dbg !641
  ret i32 %conv, !dbg !641
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
  %0 = load i32* %fd.addr, align 4, !dbg !642
  %call = call i32 (i32, i64, ...)* @ioctl(i32 %0, i64 21505, %struct.__kernel_termios* %k_termios) #14, !dbg !642
  store i32 %call, i32* %retval1, align 4, !dbg !642
  %c_iflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 0, !dbg !643
  %1 = load i32* %c_iflag, align 4, !dbg !643
  %2 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !643
  %c_iflag2 = getelementptr inbounds %struct.termios.616* %2, i32 0, i32 0, !dbg !643
  store i32 %1, i32* %c_iflag2, align 4, !dbg !643
  %c_oflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 1, !dbg !644
  %3 = load i32* %c_oflag, align 4, !dbg !644
  %4 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !644
  %c_oflag3 = getelementptr inbounds %struct.termios.616* %4, i32 0, i32 1, !dbg !644
  store i32 %3, i32* %c_oflag3, align 4, !dbg !644
  %c_cflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 2, !dbg !645
  %5 = load i32* %c_cflag, align 4, !dbg !645
  %6 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !645
  %c_cflag4 = getelementptr inbounds %struct.termios.616* %6, i32 0, i32 2, !dbg !645
  store i32 %5, i32* %c_cflag4, align 4, !dbg !645
  %c_lflag = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 3, !dbg !646
  %7 = load i32* %c_lflag, align 4, !dbg !646
  %8 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !646
  %c_lflag5 = getelementptr inbounds %struct.termios.616* %8, i32 0, i32 3, !dbg !646
  store i32 %7, i32* %c_lflag5, align 4, !dbg !646
  %c_line = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 4, !dbg !647
  %9 = load i8* %c_line, align 1, !dbg !647
  %10 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !647
  %c_line6 = getelementptr inbounds %struct.termios.616* %10, i32 0, i32 4, !dbg !647
  store i8 %9, i8* %c_line6, align 1, !dbg !647
  %11 = load %struct.termios.616** %termios_p.addr, align 8, !dbg !648
  %c_cc = getelementptr inbounds %struct.termios.616* %11, i32 0, i32 5, !dbg !648
  %arrayidx = getelementptr inbounds [32 x i8]* %c_cc, i32 0, i64 0, !dbg !648
  %c_cc7 = getelementptr inbounds %struct.__kernel_termios* %k_termios, i32 0, i32 5, !dbg !648
  %arrayidx8 = getelementptr inbounds [19 x i8]* %c_cc7, i32 0, i64 0, !dbg !648
  %call9 = call i8* @mempcpy(i8* %arrayidx, i8* %arrayidx8, i64 19) #14, !dbg !648
  %call10 = call i8* @memset(i8* %call9, i32 0, i64 13) #14, !dbg !648
  %12 = load i32* %retval1, align 4, !dbg !651
  ret i32 %12, !dbg !651
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #3

; Function Attrs: nounwind readnone uwtable
define weak i32* @__errno_location() #9 {
entry:
  ret i32* @errno, !dbg !652
}

; Function Attrs: nounwind readnone uwtable
define weak i32* @__h_errno_location() #9 {
entry:
  ret i32* @h_errno, !dbg !653
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
  %0 = load i64* %bufsize.addr, align 8, !dbg !654
  store i64 %0, i64* %todo, align 8, !dbg !654
  br label %do.body, !dbg !655

do.body:                                          ; preds = %if.then3, %entry
  %1 = load i64* %todo, align 8, !dbg !656
  %cmp = icmp eq i64 %1, 0, !dbg !656
  br i1 %cmp, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %do.body
  %2 = load i64* %bufsize.addr, align 8, !dbg !659
  store i64 %2, i64* %retval, !dbg !659
  br label %do.end32, !dbg !659

if.end:                                           ; preds = %do.body
  %3 = load i64* %todo, align 8, !dbg !661
  %cmp1 = icmp ule i64 %3, 9223372036854775807, !dbg !661
  %4 = load i64* %todo, align 8, !dbg !661
  %cond = select i1 %cmp1, i64 %4, i64 9223372036854775807, !dbg !661
  store i64 %cond, i64* %stodo, align 8, !dbg !661
  %5 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !662
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %5, i32 0, i32 2, !dbg !662
  %6 = load i32* %__filedes, align 4, !dbg !662
  %7 = load i8** %buf.addr, align 8, !dbg !662
  %8 = load i64* %stodo, align 8, !dbg !662
  %call = call i64 @write(i32 %6, i8* %7, i64 %8) #13, !dbg !662
  store i64 %call, i64* %rv, align 8, !dbg !662
  %cmp2 = icmp sge i64 %call, 0, !dbg !662
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !662

if.then3:                                         ; preds = %if.end
  %9 = load i64* %rv, align 8, !dbg !664
  %10 = load i64* %todo, align 8, !dbg !664
  %sub = sub i64 %10, %9, !dbg !664
  store i64 %sub, i64* %todo, align 8, !dbg !664
  %11 = load i64* %rv, align 8, !dbg !666
  %12 = load i8** %buf.addr, align 8, !dbg !666
  %add.ptr = getelementptr inbounds i8* %12, i64 %11, !dbg !666
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !666
  br label %do.body, !dbg !667

if.else:                                          ; preds = %if.end
  %13 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !668
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %13, i32 0, i32 0, !dbg !668
  %14 = load i16* %__modeflags, align 2, !dbg !668
  %conv = zext i16 %14 to i32, !dbg !668
  %or = or i32 %conv, 8, !dbg !668
  %conv4 = trunc i32 %or to i16, !dbg !668
  store i16 %conv4, i16* %__modeflags, align 2, !dbg !668
  %15 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !670
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %15, i32 0, i32 4, !dbg !670
  %16 = load i8** %__bufend, align 8, !dbg !670
  %17 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !670
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %17, i32 0, i32 3, !dbg !670
  %18 = load i8** %__bufstart, align 8, !dbg !670
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !670
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !670
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !670
  store i64 %sub.ptr.sub, i64* %stodo, align 8, !dbg !670
  %cmp5 = icmp ne i64 %sub.ptr.sub, 0, !dbg !670
  br i1 %cmp5, label %if.then7, label %if.end28, !dbg !670

if.then7:                                         ; preds = %if.else
  %19 = load i64* %stodo, align 8, !dbg !672
  %20 = load i64* %todo, align 8, !dbg !672
  %cmp8 = icmp ugt i64 %19, %20, !dbg !672
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !672

if.then10:                                        ; preds = %if.then7
  %21 = load i64* %todo, align 8, !dbg !675
  store i64 %21, i64* %stodo, align 8, !dbg !675
  br label %if.end11, !dbg !677

if.end11:                                         ; preds = %if.then10, %if.then7
  %22 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !678
  %__bufstart12 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %22, i32 0, i32 3, !dbg !678
  %23 = load i8** %__bufstart12, align 8, !dbg !678
  store i8* %23, i8** %s, align 8, !dbg !678
  br label %do.body13, !dbg !679

do.body13:                                        ; preds = %if.end20, %if.end11
  %24 = load i8** %buf.addr, align 8, !dbg !680
  %25 = load i8* %24, align 1, !dbg !680
  %26 = load i8** %s, align 8, !dbg !680
  store i8 %25, i8* %26, align 1, !dbg !680
  %conv14 = zext i8 %25 to i32, !dbg !680
  %cmp15 = icmp eq i32 %conv14, 10, !dbg !680
  br i1 %cmp15, label %land.lhs.true, label %if.end20, !dbg !680

land.lhs.true:                                    ; preds = %do.body13
  %27 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !680
  %__modeflags17 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %27, i32 0, i32 0, !dbg !680
  %28 = load i16* %__modeflags17, align 2, !dbg !680
  %conv18 = zext i16 %28 to i32, !dbg !680
  %and = and i32 %conv18, 256, !dbg !680
  %tobool = icmp ne i32 %and, 0, !dbg !680
  br i1 %tobool, label %do.end, label %if.end20, !dbg !680

if.end20:                                         ; preds = %land.lhs.true, %do.body13
  %29 = load i8** %s, align 8, !dbg !683
  %incdec.ptr = getelementptr inbounds i8* %29, i32 1, !dbg !683
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !683
  %30 = load i8** %buf.addr, align 8, !dbg !684
  %incdec.ptr21 = getelementptr inbounds i8* %30, i32 1, !dbg !684
  store i8* %incdec.ptr21, i8** %buf.addr, align 8, !dbg !684
  %31 = load i64* %stodo, align 8, !dbg !685
  %dec = add nsw i64 %31, -1, !dbg !685
  store i64 %dec, i64* %stodo, align 8, !dbg !685
  %tobool22 = icmp ne i64 %dec, 0, !dbg !685
  br i1 %tobool22, label %do.body13, label %do.end, !dbg !685

do.end:                                           ; preds = %land.lhs.true, %if.end20
  %32 = load i8** %s, align 8, !dbg !686
  %33 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !686
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %33, i32 0, i32 5, !dbg !686
  store i8* %32, i8** %__bufpos, align 8, !dbg !686
  %34 = load i8** %s, align 8, !dbg !687
  %35 = load %struct.__STDIO_FILE_STRUCT.376** %stream.addr, align 8, !dbg !687
  %__bufstart23 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT.376* %35, i32 0, i32 3, !dbg !687
  %36 = load i8** %__bufstart23, align 8, !dbg !687
  %sub.ptr.lhs.cast24 = ptrtoint i8* %34 to i64, !dbg !687
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64, !dbg !687
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !687
  %37 = load i64* %todo, align 8, !dbg !687
  %sub27 = sub i64 %37, %sub.ptr.sub26, !dbg !687
  store i64 %sub27, i64* %todo, align 8, !dbg !687
  br label %if.end28, !dbg !688

if.end28:                                         ; preds = %do.end, %if.else
  %38 = load i64* %bufsize.addr, align 8, !dbg !689
  %39 = load i64* %todo, align 8, !dbg !689
  %sub29 = sub i64 %38, %39, !dbg !689
  store i64 %sub29, i64* %retval, !dbg !689
  br label %do.end32, !dbg !689

do.end32:                                         ; preds = %if.end28, %if.then
  %40 = load i64* %retval, !dbg !690
  ret i64 %40, !dbg !690
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
  %0 = load i8** %s1.addr, align 8, !dbg !691
  store i8* %0, i8** %r1, align 8, !dbg !691
  %1 = load i8** %s2.addr, align 8, !dbg !692
  store i8* %1, i8** %r2, align 8, !dbg !692
  br label %while.cond, !dbg !693

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %n.addr, align 8, !dbg !693
  %tobool = icmp ne i64 %2, 0, !dbg !693
  br i1 %tobool, label %while.body, label %while.end, !dbg !693

while.body:                                       ; preds = %while.cond
  %3 = load i8** %r2, align 8, !dbg !694
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !694
  store i8* %incdec.ptr, i8** %r2, align 8, !dbg !694
  %4 = load i8* %3, align 1, !dbg !694
  %5 = load i8** %r1, align 8, !dbg !694
  %incdec.ptr1 = getelementptr inbounds i8* %5, i32 1, !dbg !694
  store i8* %incdec.ptr1, i8** %r1, align 8, !dbg !694
  store i8 %4, i8* %5, align 1, !dbg !694
  %6 = load i64* %n.addr, align 8, !dbg !696
  %dec = add i64 %6, -1, !dbg !696
  store i64 %dec, i64* %n.addr, align 8, !dbg !696
  br label %while.cond, !dbg !697

while.end:                                        ; preds = %while.cond
  %7 = load i8** %r1, align 8, !dbg !698
  ret i8* %7, !dbg !698
}

define i32 @main(i32, i8**) {
entry:
  call void @__uClibc_main(i32 (i32, i8**, i8**)* bitcast (i32 ()* @__user_main to i32 (i32, i8**, i8**)*), i32 %0, i8** %1, void ()* null, void ()* null, void ()* null, i8* null)
  unreachable
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #10 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !699
  br i1 %cmp, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str44, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str246, i64 0, i64 0)) #17, !dbg !701
  unreachable, !dbg !701

if.end:                                           ; preds = %entry
  ret void, !dbg !702
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #11

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #10 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !703
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #14, !dbg !703
  %1 = load i32* %x, align 4, !dbg !704, !tbaa !705
  ret i32 %1, !dbg !704
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #10 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !709
  br i1 %cmp, label %if.end, label %if.then, !dbg !709

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str347, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1448, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #17, !dbg !711
  unreachable, !dbg !711

if.end:                                           ; preds = %entry
  ret void, !dbg !713
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #10 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !714
  br i1 %cmp, label %if.end, label %if.then, !dbg !714

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str649, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #17, !dbg !716
  unreachable, !dbg !716

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !717
  %cmp1 = icmp eq i32 %add, %end, !dbg !717
  br i1 %cmp1, label %return, label %if.else, !dbg !717

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !719
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #14, !dbg !719
  %cmp3 = icmp eq i32 %start, 0, !dbg !721
  %1 = load i32* %x, align 4, !dbg !723, !tbaa !705
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !721

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !723
  %conv6 = zext i1 %cmp5 to i64, !dbg !723
  call void @klee_assume(i64 %conv6) #14, !dbg !723
  br label %if.end14, !dbg !725

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !726
  %conv10 = zext i1 %cmp8 to i64, !dbg !726
  call void @klee_assume(i64 %conv10) #14, !dbg !726
  %2 = load i32* %x, align 4, !dbg !728, !tbaa !705
  %cmp11 = icmp slt i32 %2, %end, !dbg !728
  %conv13 = zext i1 %cmp11 to i64, !dbg !728
  call void @klee_assume(i64 %conv13) #14, !dbg !728
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !729, !tbaa !705
  br label %return, !dbg !729

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !730
}

declare void @klee_assume(i64) #12

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #10 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !731
  br i1 %cmp, label %return, label %if.end, !dbg !731

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !733
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !733

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !735
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !735

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !735
  %wide.load = load <16 x i8>* %1, align 1, !dbg !735
  %next.gep.sum610 = or i64 %index, 16, !dbg !735
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !735
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !735
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !735
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !735
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !735
  %next.gep136.sum627 = or i64 %index, 16, !dbg !735
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !735
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !735
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !735
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !737

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
  %dec = add i64 %count.addr.028, -1, !dbg !735
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !735
  %8 = load i8* %b.030, align 1, !dbg !735, !tbaa !740
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !735
  store i8 %8, i8* %a.029, align 1, !dbg !735, !tbaa !740
  %tobool = icmp eq i64 %dec, 0, !dbg !735
  br i1 %tobool, label %return, label %while.body, !dbg !735, !llvm.loop !741

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !742
  %tobool832 = icmp eq i64 %count, 0, !dbg !744
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !744

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !745
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !742
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !744
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !744
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !744
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !744
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !744
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !744
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !744
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !744
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !744
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !744
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !744
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !744
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !744
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !744
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !744
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !744
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !744
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !744
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !744
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !744
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !746

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !744
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !744
  %19 = load i8* %b.135, align 1, !dbg !744, !tbaa !740
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !744
  store i8 %19, i8* %a.134, align 1, !dbg !744, !tbaa !740
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !744
  br i1 %tobool8, label %return, label %while.body9, !dbg !744, !llvm.loop !747

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !748
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #6 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
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

!llvm.dbg.cu = !{!0, !34, !76, !123, !154, !166, !174, !181, !188, !213, !220, !225, !231, !263, !271, !281, !291, !301, !313, !327, !341, !355}
!llvm.module.flags = !{!370, !371}
!llvm.ident = !{!372, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373, !373}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"floodfill.c", metadata !"/home/himeshi/Projects/workspace/floodfill"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 211, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @__user_main, null, null, metadata !2, i32 211} ; [ DW_TAG_subpr
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"getPix", metadata !"getPix", metadata !"", i32 231, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @getPix, null, null, metadata !2, i32 231} ; [ DW
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setPix", metadata !"setPix", metadata !"", i32 244, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @setPix, null, null, metadata !2, i32 244}
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popx", metadata !"popx", metadata !"", i32 255, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popx, null, null, metadata !2, i32 255} ; [ DW_TAG_subprogram 
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popy", metadata !"popy", metadata !"", i32 262, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popy, null, null, metadata !2, i32 262} ; [ DW_TAG_subprogram 
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fillLine", metadata !"fillLine", metadata !"", i32 268, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @fillLine, null, null, metadata !2, i3
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"push", metadata !"push", metadata !"", i32 285, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @push, null, null, metadata !2, i32 285} ; [ DW_TAG
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !8, metadata !8}
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fill", metadata !"fill", metadata !"", i32 306, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @fill, null, null, metadata !2, i32 306} ; [ DW_TAG_
!22 = metadata !{metadata !23, metadata !25, metadata !26, metadata !27, metadata !32, metadata !33}
!23 = metadata !{i32 786484, i32 0, null, metadata !"xstack", metadata !"xstack", metadata !"", metadata !5, i32 196, metadata !24, i32 0, i32 1, i32** @xstack, null} ; [ DW_TAG_variable ] [xstack] [line 196] [def]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786484, i32 0, null, metadata !"ystack", metadata !"ystack", metadata !"", metadata !5, i32 197, metadata !24, i32 0, i32 1, i32** @ystack, null} ; [ DW_TAG_variable ] [ystack] [line 197] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"stackSize", metadata !"stackSize", metadata !"", metadata !5, i32 198, metadata !8, i32 0, i32 1, i32* @stackSize, null} ; [ DW_TAG_variable ] [stackSize] [line 198] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"image", metadata !"image", metadata !"", metadata !5, i32 199, metadata !28, i32 0, i32 1, [3 x [2 x i32]]* @image, null} ; [ DW_TAG_variable ] [image] [line 199] [def]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!29 = metadata !{metadata !30, metadata !31}
!30 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!32 = metadata !{i32 786484, i32 0, null, metadata !"targetColor", metadata !"targetColor", metadata !"", metadata !5, i32 200, metadata !8, i32 0, i32 1, i32* @targetColor, null} ; [ DW_TAG_variable ] [targetColor] [line 200] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"maxStackSize", metadata !"maxStackSize", metadata !"", metadata !5, i32 201, metadata !8, i32 0, i32 1, i32* @maxStackSize, null} ; [ DW_TAG_variable ] [maxStackSize] [line 201] [def]
!34 = metadata !{i32 786449, metadata !35, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !36, metadata !62, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!35 = metadata !{metadata !"libc/misc/internals/__uClibc_main.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!36 = metadata !{metadata !37, metadata !41, metadata !42, metadata !53, metadata !54, metadata !61}
!37 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"__uClibc_init", metadata !"__uClibc_init", metadata !"", i32 187, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_init, null, null, metadata !2
!38 = metadata !{i32 786473, metadata !35}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null}
!41 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"__uClibc_fini", metadata !"__uClibc_fini", metadata !"", i32 251, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__uClibc_fini, null, null, metadata !2
!42 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"__uClibc_main", metadata !"__uClibc_main", metadata !"", i32 278, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (i32, i8**, i8**)*, i32, i8**, void ()
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{null, metadata !45, metadata !8, metadata !48, metadata !51, metadata !51, metadata !51, metadata !52}
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !8, metadata !8, metadata !48, metadata !48}
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!50 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"__check_one_fd", metadata !"__check_one_fd", metadata !"", i32 136, metadata !19, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @__check_one_fd, null, null, m
!54 = metadata !{i32 786478, metadata !55, metadata !56, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"", i32 54, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @gnu_dev_makedev, null, null, 
!55 = metadata !{metadata !"./include/sys/sysmacros.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!56 = metadata !{i32 786473, metadata !55}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!57 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !60}
!59 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"__check_suid", metadata !"__check_suid", metadata !"", i32 155, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__check_suid, null, null, metadata !2, i32 
!62 = metadata !{metadata !63, metadata !64, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !74, metadata !75}
!63 = metadata !{i32 786484, i32 0, null, metadata !"__libc_stack_end", metadata !"__libc_stack_end", metadata !"", metadata !38, i32 52, metadata !52, i32 0, i32 1, i8** @__libc_stack_end, null} ; [ DW_TAG_variable ] [__libc_stack_end] [line 52] [def]
!64 = metadata !{i32 786484, i32 0, null, metadata !"__uclibc_progname", metadata !"__uclibc_progname", metadata !"", metadata !38, i32 110, metadata !65, i32 0, i32 1, i8** @__uclibc_progname, null} ; [ DW_TAG_variable ] [__uclibc_progname] [line 110] [
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!67 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_short_name", metadata !"program_invocation_short_name", metadata !"", metadata !38, i32 112, metadata !65, i32 0, i32 1, i8** @program_invocation_short_name, null} ; [ DW_TAG_variabl
!68 = metadata !{i32 786484, i32 0, null, metadata !"program_invocation_name", metadata !"program_invocation_name", metadata !"", metadata !38, i32 113, metadata !65, i32 0, i32 1, i8** @program_invocation_name, null} ; [ DW_TAG_variable ] [program_invoc
!69 = metadata !{i32 786484, i32 0, null, metadata !"__environ", metadata !"__environ", metadata !"", metadata !38, i32 125, metadata !48, i32 0, i32 1, i8*** @__environ, null} ; [ DW_TAG_variable ] [__environ] [line 125] [def]
!70 = metadata !{i32 786484, i32 0, null, metadata !"__pagesize", metadata !"__pagesize", metadata !"", metadata !38, i32 129, metadata !71, i32 0, i32 1, i64* @__pagesize, null} ; [ DW_TAG_variable ] [__pagesize] [line 129] [def]
!71 = metadata !{i32 786454, metadata !35, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!72 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786484, i32 0, metadata !37, metadata !"been_there_done_that", metadata !"been_there_done_that", metadata !"", metadata !38, i32 189, metadata !8, i32 1, i32 1, i32* @__uClibc_init.been_there_done_that, null} ; [ DW_TAG_variable ] [b
!74 = metadata !{i32 786484, i32 0, null, metadata !"__app_fini", metadata !"__app_fini", metadata !"", metadata !38, i32 244, metadata !51, i32 0, i32 1, void ()** @__app_fini, null} ; [ DW_TAG_variable ] [__app_fini] [line 244] [def]
!75 = metadata !{i32 786484, i32 0, null, metadata !"__rtld_fini", metadata !"__rtld_fini", metadata !"", metadata !38, i32 247, metadata !51, i32 0, i32 1, void ()** @__rtld_fini, null} ; [ DW_TAG_variable ] [__rtld_fini] [line 247] [def]
!76 = metadata !{i32 786449, metadata !77, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !78, metadata !82, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!77 = metadata !{metadata !"libc/stdio/_stdio.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!78 = metadata !{metadata !79, metadata !81}
!79 = metadata !{i32 786478, metadata !77, metadata !80, metadata !"_stdio_term", metadata !"_stdio_term", metadata !"", i32 210, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_term, null, null, metadata !2, i32 
!80 = metadata !{i32 786473, metadata !77}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!81 = metadata !{i32 786478, metadata !77, metadata !80, metadata !"_stdio_init", metadata !"_stdio_init", metadata !"", i32 277, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_stdio_init, null, null, metadata !2, i32 
!82 = metadata !{metadata !83, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120}
!83 = metadata !{i32 786484, i32 0, null, metadata !"stdin", metadata !"stdin", metadata !"", metadata !80, i32 154, metadata !84, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdin, null} ; [ DW_TAG_variable ] [stdin] [line 154] [def]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!85 = metadata !{i32 786454, metadata !77, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!86 = metadata !{i32 786451, metadata !87, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !88, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offset
!87 = metadata !{metadata !"./include/bits/uClibc_stdio.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!88 = metadata !{metadata !89, metadata !91, metadata !95, metadata !96, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !105, metadata !108}
!89 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!90 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!91 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !92} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !93, metadata !94, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from unsigned char]
!93 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!94 = metadata !{metadata !31}
!95 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!96 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!98 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!99 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!100 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!101 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!102 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!103 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !104} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!105 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !106} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !107, metadata !94, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from wchar_t]
!107 = metadata !{i32 786454, metadata !87, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !87, metadata !86, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !109} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!109 = metadata !{i32 786454, metadata !87, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!110 = metadata !{i32 786451, metadata !111, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !112, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!111 = metadata !{metadata !"./include/wchar.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!114 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !107} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!115 = metadata !{i32 786484, i32 0, null, metadata !"stdout", metadata !"stdout", metadata !"", metadata !80, i32 155, metadata !84, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stdout, null} ; [ DW_TAG_variable ] [stdout] [line 155] [def]
!116 = metadata !{i32 786484, i32 0, null, metadata !"stderr", metadata !"stderr", metadata !"", metadata !80, i32 156, metadata !84, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @stderr, null} ; [ DW_TAG_variable ] [stderr] [line 156] [def]
!117 = metadata !{i32 786484, i32 0, null, metadata !"__stdin", metadata !"__stdin", metadata !"", metadata !80, i32 159, metadata !84, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdin, null} ; [ DW_TAG_variable ] [__stdin] [line 159] [def]
!118 = metadata !{i32 786484, i32 0, null, metadata !"__stdout", metadata !"__stdout", metadata !"", metadata !80, i32 162, metadata !84, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @__stdout, null} ; [ DW_TAG_variable ] [__stdout] [line 162] [def]
!119 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_openlist", metadata !"_stdio_openlist", metadata !"", metadata !80, i32 180, metadata !84, i32 0, i32 1, %struct.__STDIO_FILE_STRUCT.376** @_stdio_openlist, null} ; [ DW_TAG_variable ] [_stdio_
!120 = metadata !{i32 786484, i32 0, null, metadata !"_stdio_streams", metadata !"_stdio_streams", metadata !"", metadata !80, i32 131, metadata !121, i32 1, i32 1, [3 x %struct.__STDIO_FILE_STRUCT.376]* @_stdio_streams, null} ; [ DW_TAG_variable ] [_std
!121 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1920, i64 64, i32 0, i32 0, metadata !85, metadata !122, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1920, align 64, offset 0] [from FILE]
!122 = metadata !{metadata !30}
!123 = metadata !{i32 786449, metadata !124, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !125, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!124 = metadata !{metadata !"libc/stdio/_wcommit.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786478, metadata !124, metadata !127, metadata !"__stdio_wcommit", metadata !"__stdio_wcommit", metadata !"", i32 17, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*)* @
!127 = metadata !{i32 786473, metadata !124}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!128 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !130, metadata !131}
!130 = metadata !{i32 786454, metadata !124, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!131 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!133 = metadata !{i32 786454, metadata !124, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!134 = metadata !{i32 786451, metadata !87, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !135, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !147, metadata !148}
!136 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!137 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !92} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!138 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!139 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!140 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!141 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!142 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!143 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!144 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!145 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !146} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!147 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !106} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!148 = metadata !{i32 786445, metadata !87, metadata !134, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !149} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!149 = metadata !{i32 786454, metadata !87, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!150 = metadata !{i32 786451, metadata !111, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786445, metadata !111, metadata !150, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!153 = metadata !{i32 786445, metadata !111, metadata !150, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !107} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!154 = metadata !{i32 786449, metadata !155, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !156, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!155 = metadata !{metadata !"libc/string/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786478, metadata !155, metadata !158, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 18, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !2, i32 
!158 = metadata !{i32 786473, metadata !155}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!159 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{metadata !52, metadata !161, metadata !162, metadata !165}
!161 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!162 = metadata !{i32 786487, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_restrict_type ] [line 0, size 0, align 0, offset 0] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!164 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{i32 786454, metadata !155, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!166 = metadata !{i32 786449, metadata !167, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !168, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!167 = metadata !{metadata !"libc/string/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786478, metadata !167, metadata !170, metadata !"memset", metadata !"memset", metadata !"", i32 17, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64)* @memset, null, null, metadata !2, i32 
!170 = metadata !{i32 786473, metadata !167}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!171 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !52, metadata !52, metadata !8, metadata !173}
!173 = metadata !{i32 786454, metadata !167, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!174 = metadata !{i32 786449, metadata !175, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !176, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!175 = metadata !{metadata !"libc/string/strrchr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 786478, metadata !175, metadata !178, metadata !"strrchr", metadata !"strrchr", metadata !"", i32 17, metadata !179, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @strrchr, null, null, metadata !2, i32 18
!178 = metadata !{i32 786473, metadata !175}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!179 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !49, metadata !65, metadata !8}
!181 = metadata !{i32 786449, metadata !182, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !183, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!182 = metadata !{metadata !"libc/termios/isatty.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786478, metadata !182, metadata !185, metadata !"isatty", metadata !"isatty", metadata !"", i32 26, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isatty, null, null, metadata !2, i32 27} ; [ DW
!185 = metadata !{i32 786473, metadata !182}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/isatty.c]
!186 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{metadata !8, metadata !8}
!188 = metadata !{i32 786449, metadata !189, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !190, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!189 = metadata !{metadata !"libc/termios/tcgetattr.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!190 = metadata !{metadata !191}
!191 = metadata !{i32 786478, metadata !189, metadata !192, metadata !"tcgetattr", metadata !"tcgetattr", metadata !"", i32 38, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.termios.616*)* @tcgetattr, null, nu
!192 = metadata !{i32 786473, metadata !189}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!193 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{metadata !8, metadata !8, metadata !195}
!195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !196} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from termios]
!196 = metadata !{i32 786451, metadata !197, null, metadata !"termios", i32 30, i64 480, i64 32, i32 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [termios] [line 30, size 480, align 32, offset 0] [def] [from ]
!197 = metadata !{metadata !"./include/bits/termios.h", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!198 = metadata !{metadata !199, metadata !201, metadata !202, metadata !203, metadata !204, metadata !206, metadata !210, metadata !212}
!199 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_iflag", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_member ] [c_iflag] [line 32, size 32, align 32, offset 0] [from tcflag_t]
!200 = metadata !{i32 786454, metadata !197, null, metadata !"tcflag_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [tcflag_t] [line 27, size 0, align 0, offset 0] [from unsigned int]
!201 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_oflag", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !200} ; [ DW_TAG_member ] [c_oflag] [line 33, size 32, align 32, offset 32] [from tcflag_t]
!202 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_cflag", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !200} ; [ DW_TAG_member ] [c_cflag] [line 34, size 32, align 32, offset 64] [from tcflag_t]
!203 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_lflag", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !200} ; [ DW_TAG_member ] [c_lflag] [line 35, size 32, align 32, offset 96] [from tcflag_t]
!204 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_line", i32 36, i64 8, i64 8, i64 128, i32 0, metadata !205} ; [ DW_TAG_member ] [c_line] [line 36, size 8, align 8, offset 128] [from cc_t]
!205 = metadata !{i32 786454, metadata !197, null, metadata !"cc_t", i32 25, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [cc_t] [line 25, size 0, align 0, offset 0] [from unsigned char]
!206 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_cc", i32 37, i64 256, i64 8, i64 136, i32 0, metadata !207} ; [ DW_TAG_member ] [c_cc] [line 37, size 256, align 8, offset 136] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !205, metadata !208, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from cc_t]
!208 = metadata !{metadata !209}
!209 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!210 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_ispeed", i32 38, i64 32, i64 32, i64 416, i32 0, metadata !211} ; [ DW_TAG_member ] [c_ispeed] [line 38, size 32, align 32, offset 416] [from speed_t]
!211 = metadata !{i32 786454, metadata !197, null, metadata !"speed_t", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [speed_t] [line 26, size 0, align 0, offset 0] [from unsigned int]
!212 = metadata !{i32 786445, metadata !197, metadata !196, metadata !"c_ospeed", i32 39, i64 32, i64 32, i64 448, i32 0, metadata !211} ; [ DW_TAG_member ] [c_ospeed] [line 39, size 32, align 32, offset 448] [from speed_t]
!213 = metadata !{i32 786449, metadata !214, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !215, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!214 = metadata !{metadata !"libc/misc/internals/__errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!215 = metadata !{metadata !216}
!216 = metadata !{i32 786478, metadata !214, metadata !217, metadata !"__errno_location", metadata !"__errno_location", metadata !"", i32 11, metadata !218, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__errno_location, null, null,
!217 = metadata !{i32 786473, metadata !214}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__errno_location.c]
!218 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!219 = metadata !{metadata !24}
!220 = metadata !{i32 786449, metadata !221, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !222, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!221 = metadata !{metadata !"libc/misc/internals/__h_errno_location.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 786478, metadata !221, metadata !224, metadata !"__h_errno_location", metadata !"__h_errno_location", metadata !"", i32 10, metadata !218, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* ()* @__h_errno_location, null,
!224 = metadata !{i32 786473, metadata !221}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__h_errno_location.c]
!225 = metadata !{i32 786449, metadata !226, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !227, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!226 = metadata !{metadata !"libc/misc/internals/errno.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!227 = metadata !{metadata !228, metadata !230}
!228 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !229, i32 7, metadata !8, i32 0, i32 1, i32* @errno, null} ; [ DW_TAG_variable ] [errno] [line 7] [def]
!229 = metadata !{i32 786473, metadata !226}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/errno.c]
!230 = metadata !{i32 786484, i32 0, null, metadata !"h_errno", metadata !"h_errno", metadata !"", metadata !229, i32 8, metadata !8, i32 0, i32 1, i32* @h_errno, null} ; [ DW_TAG_variable ] [h_errno] [line 8] [def]
!231 = metadata !{i32 786449, metadata !232, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !233, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!232 = metadata !{metadata !"libc/stdio/_WRITE.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 786478, metadata !232, metadata !235, metadata !"__stdio_WRITE", metadata !"__stdio_WRITE", metadata !"", i32 33, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.__STDIO_FILE_STRUCT.376*, i8*, i
!235 = metadata !{i32 786473, metadata !232}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!236 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !238, metadata !239, metadata !261, metadata !238}
!238 = metadata !{i32 786454, metadata !232, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!240 = metadata !{i32 786454, metadata !232, null, metadata !"FILE", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [FILE] [line 46, size 0, align 0, offset 0] [from __STDIO_FILE_STRUCT]
!241 = metadata !{i32 786451, metadata !87, null, metadata !"__STDIO_FILE_STRUCT", i32 233, i64 640, i64 64, i32 0, i32 0, null, metadata !242, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__STDIO_FILE_STRUCT] [line 233, size 640, align 64, offs
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !254, metadata !255}
!243 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__modeflags", i32 234, i64 16, i64 16, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [__modeflags] [line 234, size 16, align 16, offset 0] [from unsigned short]
!244 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__ungot_width", i32 237, i64 16, i64 8, i64 16, i32 0, metadata !92} ; [ DW_TAG_member ] [__ungot_width] [line 237, size 16, align 8, offset 16] [from ]
!245 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__filedes", i32 244, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [__filedes] [line 244, size 32, align 32, offset 32] [from int]
!246 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__bufstart", i32 246, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufstart] [line 246, size 64, align 64, offset 64] [from ]
!247 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__bufend", i32 247, i64 64, i64 64, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufend] [line 247, size 64, align 64, offset 128] [from ]
!248 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__bufpos", i32 248, i64 64, i64 64, i64 192, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufpos] [line 248, size 64, align 64, offset 192] [from ]
!249 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__bufread", i32 249, i64 64, i64 64, i64 256, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufread] [line 249, size 64, align 64, offset 256] [from ]
!250 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__bufgetc_u", i32 252, i64 64, i64 64, i64 320, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufgetc_u] [line 252, size 64, align 64, offset 320] [from ]
!251 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__bufputc_u", i32 255, i64 64, i64 64, i64 384, i32 0, metadata !97} ; [ DW_TAG_member ] [__bufputc_u] [line 255, size 64, align 64, offset 384] [from ]
!252 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__nextopen", i32 261, i64 64, i64 64, i64 448, i32 0, metadata !253} ; [ DW_TAG_member ] [__nextopen] [line 261, size 64, align 64, offset 448] [from ]
!253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __STDIO_FILE_STRUCT]
!254 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__ungot", i32 268, i64 64, i64 32, i64 512, i32 0, metadata !106} ; [ DW_TAG_member ] [__ungot] [line 268, size 64, align 32, offset 512] [from ]
!255 = metadata !{i32 786445, metadata !87, metadata !241, metadata !"__state", i32 271, i64 64, i64 32, i64 576, i32 0, metadata !256} ; [ DW_TAG_member ] [__state] [line 271, size 64, align 32, offset 576] [from __mbstate_t]
!256 = metadata !{i32 786454, metadata !87, null, metadata !"__mbstate_t", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_typedef ] [__mbstate_t] [line 85, size 0, align 0, offset 0] [from ]
!257 = metadata !{i32 786451, metadata !111, null, metadata !"", i32 81, i64 64, i64 32, i32 0, i32 0, null, metadata !258, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 81, size 64, align 32, offset 0] [def] [from ]
!258 = metadata !{metadata !259, metadata !260}
!259 = metadata !{i32 786445, metadata !111, metadata !257, metadata !"__mask", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [__mask] [line 83, size 32, align 32, offset 0] [from wchar_t]
!260 = metadata !{i32 786445, metadata !111, metadata !257, metadata !"__wc", i32 84, i64 32, i64 32, i64 32, i32 0, metadata !107} ; [ DW_TAG_member ] [__wc] [line 84, size 32, align 32, offset 32] [from wchar_t]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!262 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!263 = metadata !{i32 786449, metadata !264, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !265, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [
!264 = metadata !{metadata !"libc/string/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee-uclibc"}
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786478, metadata !264, metadata !267, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 20, metadata !268, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !2, i
!267 = metadata !{i32 786473, metadata !264}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!268 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!269 = metadata !{metadata !52, metadata !161, metadata !162, metadata !270}
!270 = metadata !{i32 786454, metadata !264, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!271 = metadata !{i32 786449, metadata !272, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !273, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!272 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!273 = metadata !{metadata !274}
!274 = metadata !{i32 786478, metadata !272, metadata !275, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !276, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!275 = metadata !{i32 786473, metadata !272}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!276 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{null, metadata !278}
!278 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!279 = metadata !{metadata !280}
!280 = metadata !{i32 786689, metadata !274, metadata !"z", metadata !275, i32 16777228, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!281 = metadata !{i32 786449, metadata !282, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !283, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!282 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!283 = metadata !{metadata !284}
!284 = metadata !{i32 786478, metadata !282, metadata !285, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !286, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !288, i32 13}
!285 = metadata !{i32 786473, metadata !282}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c]
!286 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{metadata !8, metadata !65}
!288 = metadata !{metadata !289, metadata !290}
!289 = metadata !{i32 786689, metadata !284, metadata !"name", metadata !285, i32 16777229, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!290 = metadata !{i32 786688, metadata !284, metadata !"x", metadata !285, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!291 = metadata !{i32 786449, metadata !292, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !293, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!292 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786478, metadata !292, metadata !295, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!295 = metadata !{i32 786473, metadata !292}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!296 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{null, metadata !59, metadata !59}
!298 = metadata !{metadata !299, metadata !300}
!299 = metadata !{i32 786689, metadata !294, metadata !"bitWidth", metadata !295, i32 16777236, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!300 = metadata !{i32 786689, metadata !294, metadata !"shift", metadata !295, i32 33554452, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!301 = metadata !{i32 786449, metadata !302, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !303, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!302 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!303 = metadata !{metadata !304}
!304 = metadata !{i32 786478, metadata !302, metadata !305, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !306, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!305 = metadata !{i32 786473, metadata !302}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!306 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!307 = metadata !{metadata !8, metadata !8, metadata !8, metadata !65}
!308 = metadata !{metadata !309, metadata !310, metadata !311, metadata !312}
!309 = metadata !{i32 786689, metadata !304, metadata !"start", metadata !305, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!310 = metadata !{i32 786689, metadata !304, metadata !"end", metadata !305, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!311 = metadata !{i32 786689, metadata !304, metadata !"name", metadata !305, i32 50331661, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!312 = metadata !{i32 786688, metadata !304, metadata !"x", metadata !305, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!313 = metadata !{i32 786449, metadata !314, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !315, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!314 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!315 = metadata !{metadata !316}
!316 = metadata !{i32 786478, metadata !314, metadata !317, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !318, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !321, i32
!317 = metadata !{i32 786473, metadata !314}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c]
!318 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!319 = metadata !{metadata !52, metadata !52, metadata !163, metadata !320}
!320 = metadata !{i32 786454, metadata !314, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!321 = metadata !{metadata !322, metadata !323, metadata !324, metadata !325, metadata !326}
!322 = metadata !{i32 786689, metadata !316, metadata !"destaddr", metadata !317, i32 16777228, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!323 = metadata !{i32 786689, metadata !316, metadata !"srcaddr", metadata !317, i32 33554444, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!324 = metadata !{i32 786689, metadata !316, metadata !"len", metadata !317, i32 50331660, metadata !320, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!325 = metadata !{i32 786688, metadata !316, metadata !"dest", metadata !317, i32 13, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!326 = metadata !{i32 786688, metadata !316, metadata !"src", metadata !317, i32 14, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!327 = metadata !{i32 786449, metadata !328, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !329, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!328 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!329 = metadata !{metadata !330}
!330 = metadata !{i32 786478, metadata !328, metadata !331, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !332, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !335, 
!331 = metadata !{i32 786473, metadata !328}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!332 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = metadata !{metadata !52, metadata !52, metadata !163, metadata !334}
!334 = metadata !{i32 786454, metadata !328, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!335 = metadata !{metadata !336, metadata !337, metadata !338, metadata !339, metadata !340}
!336 = metadata !{i32 786689, metadata !330, metadata !"dst", metadata !331, i32 16777228, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!337 = metadata !{i32 786689, metadata !330, metadata !"src", metadata !331, i32 33554444, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!338 = metadata !{i32 786689, metadata !330, metadata !"count", metadata !331, i32 50331660, metadata !334, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!339 = metadata !{i32 786688, metadata !330, metadata !"a", metadata !331, i32 13, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!340 = metadata !{i32 786688, metadata !330, metadata !"b", metadata !331, i32 14, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!341 = metadata !{i32 786449, metadata !342, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !343, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!342 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!343 = metadata !{metadata !344}
!344 = metadata !{i32 786478, metadata !342, metadata !345, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !346, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !349, 
!345 = metadata !{i32 786473, metadata !342}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c]
!346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{metadata !52, metadata !52, metadata !163, metadata !348}
!348 = metadata !{i32 786454, metadata !342, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!349 = metadata !{metadata !350, metadata !351, metadata !352, metadata !353, metadata !354}
!350 = metadata !{i32 786689, metadata !344, metadata !"destaddr", metadata !345, i32 16777227, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!351 = metadata !{i32 786689, metadata !344, metadata !"srcaddr", metadata !345, i32 33554443, metadata !163, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!352 = metadata !{i32 786689, metadata !344, metadata !"len", metadata !345, i32 50331659, metadata !348, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!353 = metadata !{i32 786688, metadata !344, metadata !"dest", metadata !345, i32 12, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!354 = metadata !{i32 786688, metadata !344, metadata !"src", metadata !345, i32 13, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!355 = metadata !{i32 786449, metadata !356, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !357, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!356 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!357 = metadata !{metadata !358}
!358 = metadata !{i32 786478, metadata !356, metadata !359, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !360, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !363, i32
!359 = metadata !{i32 786473, metadata !356}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c]
!360 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !361, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!361 = metadata !{metadata !52, metadata !52, metadata !8, metadata !362}
!362 = metadata !{i32 786454, metadata !356, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!363 = metadata !{metadata !364, metadata !365, metadata !366, metadata !367}
!364 = metadata !{i32 786689, metadata !358, metadata !"dst", metadata !359, i32 16777227, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!365 = metadata !{i32 786689, metadata !358, metadata !"s", metadata !359, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!366 = metadata !{i32 786689, metadata !358, metadata !"count", metadata !359, i32 50331659, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!367 = metadata !{i32 786688, metadata !358, metadata !"a", metadata !359, i32 12, metadata !368, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!368 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!369 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!370 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!371 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!372 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!373 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!374 = metadata !{i32 214, i32 0, metadata !4, null}
!375 = metadata !{i32 215, i32 0, metadata !4, null}
!376 = metadata !{i32 217, i32 0, metadata !4, null}
!377 = metadata !{i32 218, i32 0, metadata !4, null}
!378 = metadata !{i32 222, i32 0, metadata !4, null}
!379 = metadata !{i32 223, i32 0, metadata !4, null}
!380 = metadata !{i32 224, i32 0, metadata !4, null}
!381 = metadata !{i32 225, i32 0, metadata !4, null}
!382 = metadata !{i32 227, i32 0, metadata !4, null}
!383 = metadata !{i32 229, i32 0, metadata !4, null}
!384 = metadata !{i32 307, i32 0, metadata !21, null}
!385 = metadata !{i32 308, i32 0, metadata !21, null}
!386 = metadata !{i32 310, i32 0, metadata !21, null}
!387 = metadata !{i32 312, i32 0, metadata !21, null}
!388 = metadata !{i32 314, i32 0, metadata !21, null}
!389 = metadata !{i32 316, i32 0, metadata !21, null}
!390 = metadata !{i32 318, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !21, i32 318, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!392 = metadata !{i32 319, i32 0, metadata !391, null}
!393 = metadata !{i32 321, i32 0, metadata !21, null}
!394 = metadata !{i32 322, i32 0, metadata !21, null}
!395 = metadata !{i32 326, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !21, i32 326, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!397 = metadata !{i32 327, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !396, i32 326, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!399 = metadata !{i32 328, i32 0, metadata !398, null}
!400 = metadata !{i32 329, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !398, i32 329, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!402 = metadata !{i32 330, i32 0, metadata !401, null}
!403 = metadata !{i32 331, i32 0, metadata !398, null}
!404 = metadata !{i32 333, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !398, i32 333, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!406 = metadata !{i32 335, i32 0, metadata !398, null}
!407 = metadata !{i32 336, i32 0, metadata !398, null}
!408 = metadata !{i32 338, i32 0, metadata !398, null}
!409 = metadata !{i32 339, i32 0, metadata !398, null}
!410 = metadata !{i32 340, i32 0, metadata !398, null}
!411 = metadata !{i32 342, i32 0, metadata !398, null}
!412 = metadata !{i32 343, i32 0, metadata !398, null}
!413 = metadata !{i32 344, i32 0, metadata !398, null}
!414 = metadata !{i32 346, i32 0, metadata !398, null}
!415 = metadata !{i32 348, i32 0, metadata !398, null}
!416 = metadata !{i32 351, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !398, i32 351, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!418 = metadata !{i32 352, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 352, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!420 = metadata !{i32 786443, metadata !1, metadata !417, i32 351, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!421 = metadata !{i32 353, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !419, i32 352, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!423 = metadata !{i32 354, i32 0, metadata !422, null}
!424 = metadata !{i32 355, i32 0, metadata !422, null}
!425 = metadata !{i32 355, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !419, i32 355, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!427 = metadata !{i32 356, i32 0, metadata !426, null}
!428 = metadata !{i32 359, i32 0, metadata !398, null}
!429 = metadata !{i32 360, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !398, i32 360, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!431 = metadata !{i32 361, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !433, i32 361, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!433 = metadata !{i32 786443, metadata !1, metadata !430, i32 360, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!434 = metadata !{i32 362, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !432, i32 361, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!436 = metadata !{i32 363, i32 0, metadata !435, null}
!437 = metadata !{i32 364, i32 0, metadata !435, null}
!438 = metadata !{i32 364, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !432, i32 364, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!440 = metadata !{i32 365, i32 0, metadata !439, null}
!441 = metadata !{i32 366, i32 0, metadata !439, null}
!442 = metadata !{i32 371, i32 0, metadata !21, null}
!443 = metadata !{i32 372, i32 0, metadata !21, null}
!444 = metadata !{i32 232, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !9, i32 232, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!446 = metadata !{i32 233, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !445, i32 232, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!448 = metadata !{i32 234, i32 0, metadata !447, null}
!449 = metadata !{i32 235, i32 0, metadata !447, null}
!450 = metadata !{i32 239, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !445, i32 236, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!452 = metadata !{i32 240, i32 0, metadata !451, null}
!453 = metadata !{i32 242, i32 0, metadata !9, null}
!454 = metadata !{i32 245, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !12, i32 245, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!456 = metadata !{i32 248, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !455, i32 247, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!458 = metadata !{i32 250, i32 0, metadata !12, null}
!459 = metadata !{i32 251, i32 0, metadata !12, null}
!460 = metadata !{i32 252, i32 0, metadata !12, null}
!461 = metadata !{i32 253, i32 0, metadata !12, null}
!462 = metadata !{i32 256, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !15, i32 256, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!464 = metadata !{i32 257, i32 0, metadata !463, null}
!465 = metadata !{i32 259, i32 0, metadata !463, null}
!466 = metadata !{i32 260, i32 0, metadata !15, null}
!467 = metadata !{i32 263, i32 0, metadata !16, null}
!468 = metadata !{i32 264, i32 0, metadata !16, null}
!469 = metadata !{i32 265, i32 0, metadata !16, null}
!470 = metadata !{i32 270, i32 0, metadata !17, null}
!471 = metadata !{i32 271, i32 0, metadata !17, null}
!472 = metadata !{i32 272, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !17, i32 272, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!474 = metadata !{i32 273, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !473, i32 272, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!476 = metadata !{i32 274, i32 0, metadata !475, null}
!477 = metadata !{i32 275, i32 0, metadata !475, null}
!478 = metadata !{i32 276, i32 0, metadata !475, null}
!479 = metadata !{i32 277, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !17, i32 277, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!481 = metadata !{i32 278, i32 0, metadata !480, null}
!482 = metadata !{i32 280, i32 0, metadata !17, null}
!483 = metadata !{i32 281, i32 0, metadata !17, null}
!484 = metadata !{i32 282, i32 0, metadata !17, null}
!485 = metadata !{i32 283, i32 0, metadata !17, null}
!486 = metadata !{i32 286, i32 0, metadata !18, null}
!487 = metadata !{i32 288, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !18, i32 288, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!489 = metadata !{i32 289, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !488, i32 288, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!491 = metadata !{i32 290, i32 0, metadata !490, null}
!492 = metadata !{i32 291, i32 0, metadata !490, null}
!493 = metadata !{i32 292, i32 0, metadata !490, null}
!494 = metadata !{i32 293, i32 0, metadata !490, null}
!495 = metadata !{i32 294, i32 0, metadata !490, null}
!496 = metadata !{i32 295, i32 0, metadata !490, null}
!497 = metadata !{i32 296, i32 0, metadata !490, null}
!498 = metadata !{i32 297, i32 0, metadata !18, null}
!499 = metadata !{i32 298, i32 0, metadata !18, null}
!500 = metadata !{i32 300, i32 0, metadata !18, null}
!501 = metadata !{i32 301, i32 0, metadata !18, null}
!502 = metadata !{i32 302, i32 0, metadata !18, null}
!503 = metadata !{i32 303, i32 0, metadata !18, null}
!504 = metadata !{i32 304, i32 0, metadata !18, null}
!505 = metadata !{i32 191, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !35, metadata !37, i32 191, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!507 = metadata !{i32 193, i32 0, metadata !37, null}
!508 = metadata !{i32 197, i32 0, metadata !37, null}
!509 = metadata !{i32 238, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !35, metadata !37, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!511 = metadata !{i32 239, i32 0, metadata !510, null}
!512 = metadata !{i32 240, i32 0, metadata !37, null}
!513 = metadata !{i32 263, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !35, metadata !41, i32 263, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!515 = metadata !{i32 264, i32 0, metadata !514, null}
!516 = metadata !{i32 266, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !35, metadata !41, i32 266, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!518 = metadata !{i32 267, i32 0, metadata !517, null}
!519 = metadata !{i32 268, i32 0, metadata !41, null}
!520 = metadata !{i32 288, i32 0, metadata !42, null}
!521 = metadata !{i32 291, i32 0, metadata !42, null}
!522 = metadata !{i32 294, i32 0, metadata !42, null}
!523 = metadata !{i32 298, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !35, metadata !42, i32 298, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!525 = metadata !{i32 300, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !35, metadata !524, i32 298, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!527 = metadata !{i32 301, i32 0, metadata !526, null}
!528 = metadata !{i32 305, i32 0, metadata !42, null}
!529 = metadata !{i32 306, i32 0, metadata !42, null}
!530 = metadata !{i32 307, i32 0, metadata !42, null}
!531 = metadata !{i32 308, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !35, metadata !42, i32 307, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!533 = metadata !{i32 311, i32 0, metadata !42, null}
!534 = metadata !{i32 312, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !35, metadata !42, i32 311, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!536 = metadata !{i32 313, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !35, metadata !535, i32 313, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!538 = metadata !{i32 314, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !35, metadata !537, i32 313, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!540 = metadata !{i32 315, i32 0, metadata !539, null}
!541 = metadata !{i32 316, i32 0, metadata !535, null}
!542 = metadata !{i32 317, i32 0, metadata !535, null}
!543 = metadata !{i32 323, i32 0, metadata !42, null}
!544 = metadata !{i32 327, i32 0, metadata !42, null}
!545 = metadata !{i32 331, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !35, metadata !42, i32 331, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!547 = metadata !{i32 336, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !35, metadata !546, i32 335, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!549 = metadata !{i32 337, i32 0, metadata !548, null}
!550 = metadata !{i32 338, i32 0, metadata !548, null}
!551 = metadata !{i32 339, i32 0, metadata !548, null}
!552 = metadata !{i32 342, i32 0, metadata !42, null}
!553 = metadata !{i32 344, i32 0, metadata !42, null}
!554 = metadata !{i32 345, i32 0, metadata !42, null}
!555 = metadata !{i32 346, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !35, metadata !42, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!557 = metadata !{i32 347, i32 0, metadata !556, null}
!558 = metadata !{i32 349, i32 0, metadata !556, null}
!559 = metadata !{i32 354, i32 0, metadata !42, null}
!560 = metadata !{i32 370, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !35, metadata !42, i32 370, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!562 = metadata !{i32 371, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !35, metadata !561, i32 370, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!564 = metadata !{i32 372, i32 0, metadata !563, null}
!565 = metadata !{i32 391, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !35, metadata !42, i32 391, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!567 = metadata !{i32 392, i32 0, metadata !566, null}
!568 = metadata !{i32 395, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !35, metadata !42, i32 395, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!570 = metadata !{i32 396, i32 0, metadata !569, null}
!571 = metadata !{i32 401, i32 0, metadata !42, null}
!572 = metadata !{i32 160, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !35, metadata !61} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!574 = metadata !{i32 161, i32 0, metadata !573, null}
!575 = metadata !{i32 162, i32 0, metadata !573, null}
!576 = metadata !{i32 163, i32 0, metadata !573, null}
!577 = metadata !{i32 165, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !35, metadata !573, i32 165, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!579 = metadata !{i32 166, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !35, metadata !578, i32 165, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!581 = metadata !{i32 168, i32 0, metadata !573, null}
!582 = metadata !{i32 169, i32 0, metadata !573, null}
!583 = metadata !{i32 139, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !35, metadata !53, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!585 = metadata !{i32 143, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !35, metadata !584, i32 140, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!587 = metadata !{i32 147, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !35, metadata !586, i32 147, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!589 = metadata !{i32 148, i32 18, metadata !588, null}
!590 = metadata !{i32 150, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !35, metadata !588, i32 149, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/misc/internals/__uClibc_main.c]
!592 = metadata !{i32 153, i32 0, metadata !53, null}
!593 = metadata !{i32 56, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !55, metadata !54} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/./include/sys/sysmacros.h]
!595 = metadata !{i32 258, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !77, metadata !79, i32 258, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!597 = metadata !{i32 261, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !77, metadata !599, i32 261, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!599 = metadata !{i32 786443, metadata !77, metadata !596, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!600 = metadata !{i32 262, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !77, metadata !598, i32 261, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_stdio.c]
!602 = metadata !{i32 263, i32 0, metadata !601, null}
!603 = metadata !{i32 274, i32 0, metadata !79, null}
!604 = metadata !{i32 280, i32 0, metadata !81, null}
!605 = metadata !{i32 282, i32 0, metadata !81, null}
!606 = metadata !{i32 283, i32 0, metadata !81, null}
!607 = metadata !{i32 284, i32 0, metadata !81, null}
!608 = metadata !{i32 291, i32 0, metadata !81, null}
!609 = metadata !{i32 23, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !124, metadata !126, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!611 = metadata !{i32 24, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !124, metadata !610, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_wcommit.c]
!613 = metadata !{i32 25, i32 0, metadata !612, null}
!614 = metadata !{i32 26, i32 0, metadata !612, null}
!615 = metadata !{i32 28, i32 0, metadata !126, null}
!616 = metadata !{i32 20, i32 0, metadata !157, null}
!617 = metadata !{i32 21, i32 0, metadata !157, null}
!618 = metadata !{i32 28, i32 0, metadata !157, null}
!619 = metadata !{i32 29, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !155, metadata !157, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memcpy.c]
!621 = metadata !{i32 30, i32 0, metadata !620, null}
!622 = metadata !{i32 31, i32 0, metadata !620, null}
!623 = metadata !{i32 34, i32 0, metadata !157, null}
!624 = metadata !{i32 19, i32 0, metadata !169, null}
!625 = metadata !{i32 27, i32 0, metadata !169, null}
!626 = metadata !{i32 28, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !167, metadata !169, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/memset.c]
!628 = metadata !{i32 29, i32 0, metadata !627, null}
!629 = metadata !{i32 30, i32 0, metadata !627, null}
!630 = metadata !{i32 32, i32 0, metadata !169, null}
!631 = metadata !{i32 21, i32 0, metadata !177, null}
!632 = metadata !{i32 22, i32 0, metadata !177, null}
!633 = metadata !{i32 23, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !175, metadata !635, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!635 = metadata !{i32 786443, metadata !175, metadata !177, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!636 = metadata !{i32 24, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !175, metadata !634, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/strrchr.c]
!638 = metadata !{i32 25, i32 0, metadata !637, null}
!639 = metadata !{i32 26, i32 0, metadata !635, null}
!640 = metadata !{i32 28, i32 0, metadata !177, null}
!641 = metadata !{i32 30, i32 0, metadata !184, null}
!642 = metadata !{i32 43, i32 0, metadata !191, null}
!643 = metadata !{i32 45, i32 0, metadata !191, null}
!644 = metadata !{i32 46, i32 0, metadata !191, null}
!645 = metadata !{i32 47, i32 0, metadata !191, null}
!646 = metadata !{i32 48, i32 0, metadata !191, null}
!647 = metadata !{i32 49, i32 0, metadata !191, null}
!648 = metadata !{i32 61, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !189, metadata !650, i32 60, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!650 = metadata !{i32 786443, metadata !189, metadata !191, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/termios/tcgetattr.c]
!651 = metadata !{i32 79, i32 0, metadata !191, null}
!652 = metadata !{i32 13, i32 0, metadata !216, null}
!653 = metadata !{i32 12, i32 0, metadata !223, null}
!654 = metadata !{i32 44, i32 0, metadata !234, null}
!655 = metadata !{i32 46, i32 0, metadata !234, null}
!656 = metadata !{i32 47, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !232, metadata !658, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!658 = metadata !{i32 786443, metadata !232, metadata !234, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!659 = metadata !{i32 49, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !232, metadata !657, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!661 = metadata !{i32 51, i32 0, metadata !658, null}
!662 = metadata !{i32 52, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !232, metadata !658, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!664 = metadata !{i32 62, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !232, metadata !663, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!666 = metadata !{i32 63, i32 0, metadata !665, null}
!667 = metadata !{i32 101, i32 0, metadata !658, null}
!668 = metadata !{i32 70, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !232, metadata !663, i32 69, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!670 = metadata !{i32 73, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !232, metadata !669, i32 73, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!672 = metadata !{i32 76, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !232, metadata !674, i32 76, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!674 = metadata !{i32 786443, metadata !232, metadata !671, i32 73, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!675 = metadata !{i32 77, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !232, metadata !673, i32 76, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!677 = metadata !{i32 78, i32 0, metadata !676, null}
!678 = metadata !{i32 80, i32 0, metadata !674, null}
!679 = metadata !{i32 82, i32 0, metadata !674, null}
!680 = metadata !{i32 83, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !232, metadata !682, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!682 = metadata !{i32 786443, metadata !232, metadata !674, i32 82, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/stdio/_WRITE.c]
!683 = metadata !{i32 88, i32 0, metadata !682, null}
!684 = metadata !{i32 89, i32 0, metadata !682, null}
!685 = metadata !{i32 90, i32 0, metadata !682, null}
!686 = metadata !{i32 92, i32 0, metadata !674, null}
!687 = metadata !{i32 94, i32 0, metadata !674, null}
!688 = metadata !{i32 95, i32 0, metadata !674, null}
!689 = metadata !{i32 99, i32 0, metadata !669, null}
!690 = metadata !{i32 102, i32 0, metadata !234, null}
!691 = metadata !{i32 22, i32 0, metadata !266, null}
!692 = metadata !{i32 23, i32 0, metadata !266, null}
!693 = metadata !{i32 30, i32 0, metadata !266, null}
!694 = metadata !{i32 31, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !264, metadata !266, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee-uclibc/libc/string/mempcpy.c]
!696 = metadata !{i32 32, i32 0, metadata !695, null}
!697 = metadata !{i32 33, i32 0, metadata !695, null}
!698 = metadata !{i32 36, i32 0, metadata !266, null}
!699 = metadata !{i32 13, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !272, metadata !274, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!701 = metadata !{i32 14, i32 0, metadata !700, null}
!702 = metadata !{i32 15, i32 0, metadata !274, null}
!703 = metadata !{i32 15, i32 0, metadata !284, null}
!704 = metadata !{i32 16, i32 0, metadata !284, null}
!705 = metadata !{metadata !706, metadata !706, i64 0}
!706 = metadata !{metadata !"int", metadata !707, i64 0}
!707 = metadata !{metadata !"omnipotent char", metadata !708, i64 0}
!708 = metadata !{metadata !"Simple C/C++ TBAA"}
!709 = metadata !{i32 21, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !292, metadata !294, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!711 = metadata !{i32 27, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !292, metadata !710, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c
!713 = metadata !{i32 29, i32 0, metadata !294, null}
!714 = metadata !{i32 16, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !302, metadata !304, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!716 = metadata !{i32 17, i32 0, metadata !715, null}
!717 = metadata !{i32 19, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !302, metadata !304, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!719 = metadata !{i32 22, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !302, metadata !718, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!721 = metadata !{i32 25, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !302, metadata !720, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!723 = metadata !{i32 26, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !302, metadata !722, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!725 = metadata !{i32 27, i32 0, metadata !724, null}
!726 = metadata !{i32 28, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !302, metadata !722, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!728 = metadata !{i32 29, i32 0, metadata !727, null}
!729 = metadata !{i32 32, i32 0, metadata !720, null}
!730 = metadata !{i32 34, i32 0, metadata !304, null}
!731 = metadata !{i32 16, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !328, metadata !330, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!733 = metadata !{i32 19, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !328, metadata !330, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!735 = metadata !{i32 20, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !328, metadata !734, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!737 = metadata !{metadata !737, metadata !738, metadata !739}
!738 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!739 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!740 = metadata !{metadata !707, metadata !707, i64 0}
!741 = metadata !{metadata !741, metadata !738, metadata !739}
!742 = metadata !{i32 22, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !328, metadata !734, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!744 = metadata !{i32 24, i32 0, metadata !743, null}
!745 = metadata !{i32 23, i32 0, metadata !743, null}
!746 = metadata !{metadata !746, metadata !738, metadata !739}
!747 = metadata !{metadata !747, metadata !738, metadata !739}
!748 = metadata !{i32 28, i32 0, metadata !330, null}
