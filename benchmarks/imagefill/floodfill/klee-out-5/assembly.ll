; ModuleID = './floodfill.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str14 = private unnamed_addr constant [80 x i8] c"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str115 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str216 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str317 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1418 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str619 = private unnamed_addr constant [71 x i8] c"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @klee_make_symbolic(i8* bitcast ([3 x [2 x i32]]* @image to i8*), i64 24, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)), !dbg !146
  call void @klee_make_symbolic(i8* bitcast (i32* @targetColor to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !147
  call void @klee_track_error(i8* bitcast ([3 x [2 x i32]]* @image to i8*), i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !148
  call void @klee_track_error(i8* bitcast (i32* @targetColor to i8*), i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !149
  store i32 0, i32* @stackSize, align 4, !dbg !150
  store i32 1, i32* @maxStackSize, align 4, !dbg !151
  %1 = load i32* @maxStackSize, align 4, !dbg !152
  %2 = sext i32 %1 to i64, !dbg !152
  %3 = mul i64 4, %2, !dbg !152
  %4 = call noalias i8* @malloc(i64 %3) #4, !dbg !152
  %5 = bitcast i8* %4 to i32*, !dbg !152
  store i32* %5, i32** @xstack, align 8, !dbg !152
  %6 = load i32* @maxStackSize, align 4, !dbg !153
  %7 = sext i32 %6 to i64, !dbg !153
  %8 = mul i64 4, %7, !dbg !153
  %9 = call noalias i8* @malloc(i64 %8) #4, !dbg !153
  %10 = bitcast i8* %9 to i32*, !dbg !153
  store i32* %10, i32** @ystack, align 8, !dbg !153
  %11 = call i32 @fill(i32 0, i32 0), !dbg !154
  ret i32 0, !dbg !155
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
  store i32 3, i32* %width, align 4, !dbg !156
  store i32 2, i32* %height, align 4, !dbg !157
  %4 = load i32* %2, align 4, !dbg !158
  %5 = load i32* %3, align 4, !dbg !158
  %6 = call i32 @getPix(i32 %4, i32 %5), !dbg !158
  store i32 %6, i32* %color, align 4, !dbg !158
  %7 = load i32* %2, align 4, !dbg !159
  %8 = load i32* %2, align 4, !dbg !159
  %9 = load i32* %3, align 4, !dbg !159
  call void @fillLine(i32 %7, i32 %8, i32 %9), !dbg !159
  %10 = load i32* %2, align 4, !dbg !160
  %11 = load i32* %3, align 4, !dbg !160
  %12 = call i32 @getPix(i32 %10, i32 %11), !dbg !160
  store i32 %12, i32* %newColor, align 4, !dbg !160
  %13 = load i32* %2, align 4, !dbg !161
  %14 = load i32* %3, align 4, !dbg !161
  %15 = load i32* %color, align 4, !dbg !161
  call void @setPix(i32 %13, i32 %14, i32 %15), !dbg !161
  %16 = load i32* %color, align 4, !dbg !162
  %17 = load i32* %newColor, align 4, !dbg !162
  %18 = icmp eq i32 %16, %17, !dbg !162
  br i1 %18, label %19, label %20, !dbg !162

; <label>:19                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !164
  br label %164, !dbg !164

; <label>:20                                      ; preds = %0
  store i32 0, i32* @stackSize, align 4, !dbg !165
  %21 = load i32* %2, align 4, !dbg !166
  %22 = load i32* %3, align 4, !dbg !166
  call void @push(i32 %21, i32 %22), !dbg !166
  store i32 0, i32* %i, align 4, !dbg !167
  br label %23, !dbg !167

; <label>:23                                      ; preds = %160, %20
  %24 = load i32* %i, align 4, !dbg !167
  %25 = icmp slt i32 %24, 6, !dbg !167
  br i1 %25, label %26, label %163, !dbg !167

; <label>:26                                      ; preds = %23
  %27 = call i32 @popx(), !dbg !169
  store i32 %27, i32* %2, align 4, !dbg !169
  %28 = load i32* %2, align 4, !dbg !171
  %29 = sext i32 %28 to i64, !dbg !171
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !171
  %30 = load i32* %2, align 4, !dbg !172
  %31 = icmp eq i32 %30, -1, !dbg !172
  br i1 %31, label %32, label %33, !dbg !172

; <label>:32                                      ; preds = %26
  store i32 1, i32* %1, !dbg !174
  br label %164, !dbg !174

; <label>:33                                      ; preds = %26
  %34 = call i32 @popy(), !dbg !175
  store i32 %34, i32* %3, align 4, !dbg !175
  %35 = load i32* %2, align 4, !dbg !176
  %36 = load i32* %3, align 4, !dbg !176
  %37 = call i32 @getPix(i32 %35, i32 %36), !dbg !176
  %38 = load i32* %color, align 4, !dbg !176
  %39 = icmp ne i32 %37, %38, !dbg !176
  br i1 %39, label %160, label %40, !dbg !176

; <label>:40                                      ; preds = %33
  %41 = load i32* %2, align 4, !dbg !178
  store i32 %41, i32* %x1, align 4, !dbg !178
  %42 = load i32* %2, align 4, !dbg !179
  store i32 %42, i32* %x2, align 4, !dbg !179
  br label %43, !dbg !180

; <label>:43                                      ; preds = %55, %40
  %44 = load i32* %x1, align 4, !dbg !180
  %45 = load i32* %3, align 4, !dbg !180
  %46 = call i32 @getPix(i32 %44, i32 %45), !dbg !180
  %47 = load i32* %color, align 4, !dbg !180
  %48 = icmp eq i32 %46, %47, !dbg !180
  br i1 %48, label %49, label %52, !dbg !180

; <label>:49                                      ; preds = %43
  %50 = load i32* %x1, align 4, !dbg !180
  %51 = icmp sge i32 %50, 0, !dbg !180
  br label %52

; <label>:52                                      ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = load i32* %x1, align 4, !dbg !181
  br i1 %53, label %55, label %57

; <label>:55                                      ; preds = %52
  %56 = add nsw i32 %54, -1, !dbg !181
  store i32 %56, i32* %x1, align 4, !dbg !181
  br label %43, !dbg !181

; <label>:57                                      ; preds = %52
  %58 = add nsw i32 %54, 1, !dbg !182
  store i32 %58, i32* %x1, align 4, !dbg !182
  br label %59, !dbg !183

; <label>:59                                      ; preds = %72, %57
  %60 = load i32* %x2, align 4, !dbg !183
  %61 = load i32* %3, align 4, !dbg !183
  %62 = call i32 @getPix(i32 %60, i32 %61), !dbg !183
  %63 = load i32* %color, align 4, !dbg !183
  %64 = icmp eq i32 %62, %63, !dbg !183
  br i1 %64, label %65, label %69, !dbg !183

; <label>:65                                      ; preds = %59
  %66 = load i32* %x2, align 4, !dbg !183
  %67 = load i32* %width, align 4, !dbg !183
  %68 = icmp slt i32 %66, %67, !dbg !183
  br label %69

; <label>:69                                      ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  %71 = load i32* %x2, align 4, !dbg !184
  br i1 %70, label %72, label %74

; <label>:72                                      ; preds = %69
  %73 = add nsw i32 %71, 1, !dbg !184
  store i32 %73, i32* %x2, align 4, !dbg !184
  br label %59, !dbg !184

; <label>:74                                      ; preds = %69
  %75 = add nsw i32 %71, -1, !dbg !185
  store i32 %75, i32* %x2, align 4, !dbg !185
  %76 = load i32* %x1, align 4, !dbg !186
  %77 = load i32* %x2, align 4, !dbg !186
  %78 = load i32* %3, align 4, !dbg !186
  call void @fillLine(i32 %76, i32 %77, i32 %78), !dbg !186
  store i32 0, i32* %inScanLine, align 4, !dbg !187
  %79 = load i32* %x1, align 4, !dbg !188
  store i32 %79, i32* %i1, align 4, !dbg !188
  br label %80, !dbg !188

; <label>:80                                      ; preds = %113, %74
  %81 = load i32* %i1, align 4, !dbg !188
  %82 = load i32* %x2, align 4, !dbg !188
  %83 = icmp sle i32 %81, %82, !dbg !188
  br i1 %83, label %84, label %116, !dbg !188

; <label>:84                                      ; preds = %80
  %85 = load i32* %inScanLine, align 4, !dbg !190
  %86 = icmp eq i32 %85, 0, !dbg !190
  %87 = load i32* %3, align 4, !dbg !190
  %88 = icmp sgt i32 %87, 0, !dbg !190
  %or.cond = and i1 %86, %88, !dbg !190
  br i1 %or.cond, label %89, label %100, !dbg !190

; <label>:89                                      ; preds = %84
  %90 = load i32* %i1, align 4, !dbg !190
  %91 = load i32* %3, align 4, !dbg !190
  %92 = sub nsw i32 %91, 1, !dbg !190
  %93 = call i32 @getPix(i32 %90, i32 %92), !dbg !190
  %94 = load i32* %color, align 4, !dbg !190
  %95 = icmp eq i32 %93, %94, !dbg !190
  br i1 %95, label %96, label %100, !dbg !190

; <label>:96                                      ; preds = %89
  %97 = load i32* %i1, align 4, !dbg !193
  %98 = load i32* %3, align 4, !dbg !193
  %99 = sub nsw i32 %98, 1, !dbg !193
  call void @push(i32 %97, i32 %99), !dbg !193
  store i32 1, i32* %inScanLine, align 4, !dbg !195
  br label %113, !dbg !196

; <label>:100                                     ; preds = %84, %89
  %101 = load i32* %inScanLine, align 4, !dbg !197
  %102 = icmp ne i32 %101, 0, !dbg !197
  %103 = load i32* %3, align 4, !dbg !197
  %104 = icmp sgt i32 %103, 0, !dbg !197
  %or.cond3 = and i1 %102, %104, !dbg !197
  br i1 %or.cond3, label %105, label %113, !dbg !197

; <label>:105                                     ; preds = %100
  %106 = load i32* %i1, align 4, !dbg !197
  %107 = load i32* %3, align 4, !dbg !197
  %108 = sub nsw i32 %107, 1, !dbg !197
  %109 = call i32 @getPix(i32 %106, i32 %108), !dbg !197
  %110 = load i32* %color, align 4, !dbg !197
  %111 = icmp ne i32 %109, %110, !dbg !197
  br i1 %111, label %112, label %113, !dbg !197

; <label>:112                                     ; preds = %105
  store i32 0, i32* %inScanLine, align 4, !dbg !199
  br label %113, !dbg !199

; <label>:113                                     ; preds = %96, %112, %105, %100
  %114 = load i32* %i1, align 4, !dbg !188
  %115 = add nsw i32 %114, 1, !dbg !188
  store i32 %115, i32* %i1, align 4, !dbg !188
  br label %80, !dbg !188

; <label>:116                                     ; preds = %80
  store i32 0, i32* %inScanLine, align 4, !dbg !200
  %117 = load i32* %x1, align 4, !dbg !201
  store i32 %117, i32* %i1, align 4, !dbg !201
  br label %118, !dbg !201

; <label>:118                                     ; preds = %157, %116
  %119 = load i32* %i1, align 4, !dbg !201
  %120 = load i32* %x2, align 4, !dbg !201
  %121 = icmp sle i32 %119, %120, !dbg !201
  br i1 %121, label %122, label %160, !dbg !201

; <label>:122                                     ; preds = %118
  %123 = load i32* %inScanLine, align 4, !dbg !203
  %124 = icmp ne i32 %123, 0, !dbg !203
  br i1 %124, label %141, label %125, !dbg !203

; <label>:125                                     ; preds = %122
  %126 = load i32* %3, align 4, !dbg !203
  %127 = load i32* %height, align 4, !dbg !203
  %128 = sub nsw i32 %127, 1, !dbg !203
  %129 = icmp slt i32 %126, %128, !dbg !203
  br i1 %129, label %130, label %141, !dbg !203

; <label>:130                                     ; preds = %125
  %131 = load i32* %i1, align 4, !dbg !203
  %132 = load i32* %3, align 4, !dbg !203
  %133 = add nsw i32 %132, 1, !dbg !203
  %134 = call i32 @getPix(i32 %131, i32 %133), !dbg !203
  %135 = load i32* %color, align 4, !dbg !203
  %136 = icmp eq i32 %134, %135, !dbg !203
  br i1 %136, label %137, label %141, !dbg !203

; <label>:137                                     ; preds = %130
  %138 = load i32* %i1, align 4, !dbg !206
  %139 = load i32* %3, align 4, !dbg !206
  %140 = add nsw i32 %139, 1, !dbg !206
  call void @push(i32 %138, i32 %140), !dbg !206
  store i32 1, i32* %inScanLine, align 4, !dbg !208
  br label %157, !dbg !209

; <label>:141                                     ; preds = %130, %125, %122
  %142 = load i32* %inScanLine, align 4, !dbg !210
  %143 = icmp ne i32 %142, 0, !dbg !210
  br i1 %143, label %144, label %157, !dbg !210

; <label>:144                                     ; preds = %141
  %145 = load i32* %3, align 4, !dbg !210
  %146 = load i32* %height, align 4, !dbg !210
  %147 = sub nsw i32 %146, 1, !dbg !210
  %148 = icmp slt i32 %145, %147, !dbg !210
  br i1 %148, label %149, label %157, !dbg !210

; <label>:149                                     ; preds = %144
  %150 = load i32* %i1, align 4, !dbg !212
  %151 = load i32* %3, align 4, !dbg !212
  %152 = add nsw i32 %151, 1, !dbg !212
  %153 = call i32 @getPix(i32 %150, i32 %152), !dbg !212
  %154 = load i32* %color, align 4, !dbg !212
  %155 = icmp ne i32 %153, %154, !dbg !212
  br i1 %155, label %156, label %157, !dbg !212

; <label>:156                                     ; preds = %149
  store i32 0, i32* %inScanLine, align 4, !dbg !213
  br label %157, !dbg !213

; <label>:157                                     ; preds = %137, %156, %149, %144, %141
  %158 = load i32* %i1, align 4, !dbg !201
  %159 = add nsw i32 %158, 1, !dbg !201
  store i32 %159, i32* %i1, align 4, !dbg !201
  br label %118, !dbg !201

; <label>:160                                     ; preds = %118, %33
  %161 = load i32* %i, align 4, !dbg !167
  %162 = add nsw i32 %161, 1, !dbg !167
  store i32 %162, i32* %i, align 4, !dbg !167
  br label %23, !dbg !167

; <label>:163                                     ; preds = %23
  store i32 1, i32* %1, !dbg !214
  br label %164, !dbg !214

; <label>:164                                     ; preds = %163, %32, %19
  %165 = load i32* %1, !dbg !215
  ret i32 %165, !dbg !215
}

; Function Attrs: nounwind uwtable
define i32 @getPix(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  %4 = load i32* %2, align 4, !dbg !216
  %5 = icmp slt i32 %4, 0, !dbg !216
  %6 = load i32* %2, align 4, !dbg !216
  %7 = icmp sge i32 %6, 3, !dbg !216
  %or.cond = or i1 %5, %7, !dbg !216
  %8 = load i32* %3, align 4, !dbg !216
  %9 = icmp slt i32 %8, 0, !dbg !216
  %or.cond3 = or i1 %or.cond, %9, !dbg !216
  %10 = load i32* %3, align 4, !dbg !216
  %11 = icmp sge i32 %10, 2, !dbg !216
  %or.cond5 = or i1 %or.cond3, %11, !dbg !216
  %12 = load i32* %2, align 4, !dbg !218
  %13 = sext i32 %12 to i64, !dbg !218
  call void @klee_bound_error(i64 %13, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !218
  %14 = load i32* %3, align 4, !dbg !220
  %15 = sext i32 %14 to i64, !dbg !220
  call void @klee_bound_error(i64 %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !220
  br i1 %or.cond5, label %16, label %17, !dbg !216

; <label>:16                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !221
  br label %33, !dbg !221

; <label>:17                                      ; preds = %0
  %18 = load i32* %3, align 4, !dbg !222
  %19 = sext i32 %18 to i64, !dbg !222
  %20 = load i32* %2, align 4, !dbg !222
  %21 = sext i32 %20 to i64, !dbg !222
  %22 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %21, !dbg !222
  %23 = getelementptr inbounds [2 x i32]* %22, i32 0, i64 %19, !dbg !222
  %24 = load i32* %23, align 4, !dbg !222
  %25 = sext i32 %24 to i64, !dbg !222
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !222
  %26 = load i32* %3, align 4, !dbg !224
  %27 = sext i32 %26 to i64, !dbg !224
  %28 = load i32* %2, align 4, !dbg !224
  %29 = sext i32 %28 to i64, !dbg !224
  %30 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %29, !dbg !224
  %31 = getelementptr inbounds [2 x i32]* %30, i32 0, i64 %27, !dbg !224
  %32 = load i32* %31, align 4, !dbg !224
  store i32 %32, i32* %1, !dbg !224
  br label %33, !dbg !224

; <label>:33                                      ; preds = %17, %16
  %34 = load i32* %1, !dbg !225
  ret i32 %34, !dbg !225
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
  %4 = load i32* %1, align 4, !dbg !226
  %5 = icmp slt i32 %4, 0, !dbg !226
  %6 = load i32* %1, align 4, !dbg !226
  %7 = icmp sge i32 %6, 3, !dbg !226
  %or.cond = or i1 %5, %7, !dbg !226
  %8 = load i32* %2, align 4, !dbg !226
  %9 = icmp slt i32 %8, 0, !dbg !226
  %or.cond3 = or i1 %or.cond, %9, !dbg !226
  %10 = load i32* %2, align 4, !dbg !226
  %11 = icmp sge i32 %10, 2, !dbg !226
  %or.cond5 = or i1 %or.cond3, %11, !dbg !226
  br i1 %or.cond5, label %26, label %12, !dbg !226

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !228
  %14 = load i32* %2, align 4, !dbg !228
  %15 = sext i32 %14 to i64, !dbg !228
  %16 = load i32* %1, align 4, !dbg !228
  %17 = sext i32 %16 to i64, !dbg !228
  %18 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %17, !dbg !228
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 %15, !dbg !228
  store i32 %13, i32* %19, align 4, !dbg !228
  %20 = load i32* %1, align 4, !dbg !230
  %21 = sext i32 %20 to i64, !dbg !230
  call void @klee_bound_error(i64 %21, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !230
  %22 = load i32* %2, align 4, !dbg !231
  %23 = sext i32 %22 to i64, !dbg !231
  call void @klee_bound_error(i64 %23, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !231
  %24 = load i32* %3, align 4, !dbg !232
  %25 = sext i32 %24 to i64, !dbg !232
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), double 1.000000e+00), !dbg !232
  br label %26, !dbg !233

; <label>:26                                      ; preds = %0, %12
  ret void, !dbg !233
}

; Function Attrs: nounwind uwtable
define i32 @popx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32* @stackSize, align 4, !dbg !234
  %3 = icmp eq i32 %2, 0, !dbg !234
  br i1 %3, label %4, label %5, !dbg !234

; <label>:4                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !236
  br label %12, !dbg !236

; <label>:5                                       ; preds = %0
  %6 = load i32* @stackSize, align 4, !dbg !237
  %7 = sub nsw i32 %6, 1, !dbg !237
  %8 = sext i32 %7 to i64, !dbg !237
  %9 = load i32** @xstack, align 8, !dbg !237
  %10 = getelementptr inbounds i32* %9, i64 %8, !dbg !237
  %11 = load i32* %10, align 4, !dbg !237
  store i32 %11, i32* %1, !dbg !237
  br label %12, !dbg !237

; <label>:12                                      ; preds = %5, %4
  %13 = load i32* %1, !dbg !238
  ret i32 %13, !dbg !238
}

; Function Attrs: nounwind uwtable
define i32 @popy() #0 {
  %value = alloca i32, align 4
  %1 = load i32* @stackSize, align 4, !dbg !239
  %2 = sub nsw i32 %1, 1, !dbg !239
  %3 = sext i32 %2 to i64, !dbg !239
  %4 = load i32** @ystack, align 8, !dbg !239
  %5 = getelementptr inbounds i32* %4, i64 %3, !dbg !239
  %6 = load i32* %5, align 4, !dbg !239
  store i32 %6, i32* %value, align 4, !dbg !239
  %7 = load i32* @stackSize, align 4, !dbg !240
  %8 = add nsw i32 %7, -1, !dbg !240
  store i32 %8, i32* @stackSize, align 4, !dbg !240
  %9 = load i32* %value, align 4, !dbg !241
  ret i32 %9, !dbg !241
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
  %4 = load i32* %1, align 4, !dbg !242
  %5 = sext i32 %4 to i64, !dbg !242
  call void @klee_bound_error(i64 %5, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), double 1.000000e+00), !dbg !242
  %6 = load i32* %2, align 4, !dbg !243
  %7 = sext i32 %6 to i64, !dbg !243
  call void @klee_bound_error(i64 %7, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), double 1.000000e+00), !dbg !243
  %8 = load i32* %1, align 4, !dbg !244
  %9 = load i32* %2, align 4, !dbg !244
  %10 = icmp sgt i32 %8, %9, !dbg !244
  br i1 %10, label %11, label %15, !dbg !244

; <label>:11                                      ; preds = %0
  %12 = load i32* %1, align 4, !dbg !246
  store i32 %12, i32* %t, align 4, !dbg !246
  %13 = load i32* %2, align 4, !dbg !248
  store i32 %13, i32* %1, align 4, !dbg !248
  %14 = load i32* %t, align 4, !dbg !249
  store i32 %14, i32* %2, align 4, !dbg !249
  br label %15, !dbg !250

; <label>:15                                      ; preds = %11, %0
  %16 = load i32* %1, align 4, !dbg !251
  store i32 %16, i32* %x, align 4, !dbg !251
  br label %17, !dbg !251

; <label>:17                                      ; preds = %21, %15
  %18 = load i32* %x, align 4, !dbg !251
  %19 = load i32* %2, align 4, !dbg !251
  %20 = icmp sle i32 %18, %19, !dbg !251
  br i1 %20, label %21, label %27, !dbg !251

; <label>:21                                      ; preds = %17
  %22 = load i32* %x, align 4, !dbg !253
  %23 = load i32* %3, align 4, !dbg !253
  %24 = load i32* @targetColor, align 4, !dbg !253
  call void @setPix(i32 %22, i32 %23, i32 %24), !dbg !253
  %25 = load i32* %x, align 4, !dbg !251
  %26 = add nsw i32 %25, 1, !dbg !251
  store i32 %26, i32* %x, align 4, !dbg !251
  br label %17, !dbg !251

; <label>:27                                      ; preds = %17
  %28 = load i32* %t, align 4, !dbg !254
  %29 = sext i32 %28 to i64, !dbg !254
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), double 1.000000e+00), !dbg !254
  %30 = load i32* %x, align 4, !dbg !255
  %31 = sext i32 %30 to i64, !dbg !255
  call void @klee_bound_error(i64 %31, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !255
  %32 = load i32* %3, align 4, !dbg !256
  %33 = sext i32 %32 to i64, !dbg !256
  call void @klee_bound_error(i64 %33, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: nounwind uwtable
define void @push(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %newXStack = alloca i32*, align 8
  %newYStack = alloca i32*, align 8
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  %3 = load i32* @stackSize, align 4, !dbg !258
  %4 = add nsw i32 %3, 1, !dbg !258
  store i32 %4, i32* @stackSize, align 4, !dbg !258
  %5 = load i32* @stackSize, align 4, !dbg !259
  %6 = icmp eq i32 %5, 1, !dbg !259
  br i1 %6, label %7, label %40, !dbg !259

; <label>:7                                       ; preds = %0
  %8 = load i32* @maxStackSize, align 4, !dbg !261
  %9 = sext i32 %8 to i64, !dbg !261
  %10 = mul i64 4, %9, !dbg !261
  %11 = mul i64 %10, 2, !dbg !261
  %12 = call noalias i8* @malloc(i64 %11) #4, !dbg !261
  %13 = bitcast i8* %12 to i32*, !dbg !261
  store i32* %13, i32** %newXStack, align 8, !dbg !261
  %14 = load i32* @maxStackSize, align 4, !dbg !263
  %15 = sext i32 %14 to i64, !dbg !263
  %16 = mul i64 4, %15, !dbg !263
  %17 = mul i64 %16, 2, !dbg !263
  %18 = call noalias i8* @malloc(i64 %17) #4, !dbg !263
  %19 = bitcast i8* %18 to i32*, !dbg !263
  store i32* %19, i32** %newYStack, align 8, !dbg !263
  %20 = load i32** %newXStack, align 8, !dbg !264
  %21 = bitcast i32* %20 to i8*, !dbg !264
  %22 = load i32** @xstack, align 8, !dbg !264
  %23 = bitcast i32* %22 to i8*, !dbg !264
  %24 = load i32* @maxStackSize, align 4, !dbg !264
  %25 = sext i32 %24 to i64, !dbg !264
  %26 = mul i64 4, %25, !dbg !264
  %27 = call i8* @memcpy(i8* %21, i8* %23, i64 %26)
  %28 = load i32** %newYStack, align 8, !dbg !265
  %29 = bitcast i32* %28 to i8*, !dbg !265
  %30 = load i32** @ystack, align 8, !dbg !265
  %31 = bitcast i32* %30 to i8*, !dbg !265
  %32 = load i32* @maxStackSize, align 4, !dbg !265
  %33 = sext i32 %32 to i64, !dbg !265
  %34 = mul i64 4, %33, !dbg !265
  %35 = call i8* @memcpy(i8* %29, i8* %31, i64 %34)
  %36 = load i32** %newXStack, align 8, !dbg !266
  store i32* %36, i32** @xstack, align 8, !dbg !266
  %37 = load i32** %newYStack, align 8, !dbg !267
  store i32* %37, i32** @ystack, align 8, !dbg !267
  %38 = load i32* @maxStackSize, align 4, !dbg !268
  %39 = mul nsw i32 %38, 2, !dbg !268
  store i32 %39, i32* @maxStackSize, align 4, !dbg !268
  br label %40, !dbg !269

; <label>:40                                      ; preds = %7, %0
  %41 = load i32* %1, align 4, !dbg !270
  %42 = load i32* @stackSize, align 4, !dbg !270
  %43 = sub nsw i32 %42, 1, !dbg !270
  %44 = sext i32 %43 to i64, !dbg !270
  %45 = load i32** @xstack, align 8, !dbg !270
  %46 = getelementptr inbounds i32* %45, i64 %44, !dbg !270
  store i32 %41, i32* %46, align 4, !dbg !270
  %47 = load i32* %2, align 4, !dbg !271
  %48 = load i32* @stackSize, align 4, !dbg !271
  %49 = sub nsw i32 %48, 1, !dbg !271
  %50 = sext i32 %49 to i64, !dbg !271
  %51 = load i32** @ystack, align 8, !dbg !271
  %52 = getelementptr inbounds i32* %51, i64 %50, !dbg !271
  store i32 %47, i32* %52, align 4, !dbg !271
  %53 = load i32* %1, align 4, !dbg !272
  %54 = sext i32 %53 to i64, !dbg !272
  call void @klee_bound_error(i64 %54, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !272
  %55 = load i32* %2, align 4, !dbg !273
  %56 = sext i32 %55 to i64, !dbg !273
  call void @klee_bound_error(i64 %56, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !273
  %57 = load i32** @xstack, align 8, !dbg !274
  %58 = getelementptr inbounds i32* %57, i64 0, !dbg !274
  %59 = load i32* %58, align 4, !dbg !274
  %60 = sext i32 %59 to i64, !dbg !274
  call void @klee_bound_error(i64 %60, i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0), double 1.000000e+00), !dbg !274
  %61 = load i32** @ystack, align 8, !dbg !275
  %62 = getelementptr inbounds i32* %61, i64 0, !dbg !275
  %63 = load i32* %62, align 4, !dbg !275
  %64 = sext i32 %63 to i64, !dbg !275
  call void @klee_bound_error(i64 %64, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), double 1.000000e+00), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str14, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str216, i64 0, i64 0)) #8, !dbg !279
  unreachable, !dbg !279

if.end:                                           ; preds = %entry
  ret void, !dbg !280
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !281
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #9, !dbg !281
  %1 = load i32* %x, align 4, !dbg !282, !tbaa !283
  ret i32 %1, !dbg !282
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !287
  br i1 %cmp, label %if.end, label %if.then, !dbg !287

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str317, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1418, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !289
  unreachable, !dbg !289

if.end:                                           ; preds = %entry
  ret void, !dbg !291
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !292
  br i1 %cmp, label %if.end, label %if.then, !dbg !292

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str619, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !294
  unreachable, !dbg !294

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !295
  %cmp1 = icmp eq i32 %add, %end, !dbg !295
  br i1 %cmp1, label %return, label %if.else, !dbg !295

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !297
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #9, !dbg !297
  %cmp3 = icmp eq i32 %start, 0, !dbg !299
  %1 = load i32* %x, align 4, !dbg !301, !tbaa !283
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !299

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !301
  %conv6 = zext i1 %cmp5 to i64, !dbg !301
  call void @klee_assume(i64 %conv6) #9, !dbg !301
  br label %if.end14, !dbg !303

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !304
  %conv10 = zext i1 %cmp8 to i64, !dbg !304
  call void @klee_assume(i64 %conv10) #9, !dbg !304
  %2 = load i32* %x, align 4, !dbg !306, !tbaa !283
  %cmp11 = icmp slt i32 %2, %end, !dbg !306
  %conv13 = zext i1 %cmp11 to i64, !dbg !306
  call void @klee_assume(i64 %conv13) #9, !dbg !306
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !307, !tbaa !283
  br label %return, !dbg !307

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !308
}

declare void @klee_assume(i64) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !309
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !309

while.body.preheader:                             ; preds = %entry
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %0 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %scevgep7 = getelementptr i8* %srcaddr, i64 %0
  %scevgep = getelementptr i8* %destaddr, i64 %0
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep7, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end9 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep106 = getelementptr i8* %destaddr, i64 %index
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !310
  %wide.load = load <16 x i8>* %1, align 1, !dbg !310
  %next.gep.sum282 = or i64 %index, 16, !dbg !310
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !310
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !310
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !310
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !310
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !310
  %next.gep106.sum299 = or i64 %index, 16, !dbg !310
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !310
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !310
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !310
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %while.body.preheader
  %resume.val = phi i8* [ %srcaddr, %while.body.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val8 = phi i8* [ %destaddr, %while.body.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end9, %vector.body ]
  %resume.val10 = phi i64 [ %len, %while.body.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %middle.block
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val, %middle.block ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %resume.val8, %middle.block ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %resume.val10, %middle.block ]
  %dec = add i64 %len.addr.04, -1, !dbg !309
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !310
  %8 = load i8* %src.06, align 1, !dbg !310, !tbaa !314
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !310
  store i8 %8, i8* %dest.05, align 1, !dbg !310, !tbaa !314
  %cmp = icmp eq i64 %dec, 0, !dbg !309
  br i1 %cmp, label %while.end, label %while.body, !dbg !309, !llvm.loop !315

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !316
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !317
  br i1 %cmp, label %return, label %if.end, !dbg !317

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !319
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !319

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !321
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !321

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !321
  %wide.load = load <16 x i8>* %1, align 1, !dbg !321
  %next.gep.sum610 = or i64 %index, 16, !dbg !321
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !321
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !321
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !321
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !321
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !321
  %next.gep136.sum627 = or i64 %index, 16, !dbg !321
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !321
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !321
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !321
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !323

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
  %dec = add i64 %count.addr.028, -1, !dbg !321
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !321
  %8 = load i8* %b.030, align 1, !dbg !321, !tbaa !314
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !321
  store i8 %8, i8* %a.029, align 1, !dbg !321, !tbaa !314
  %tobool = icmp eq i64 %dec, 0, !dbg !321
  br i1 %tobool, label %return, label %while.body, !dbg !321, !llvm.loop !324

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !325
  %tobool832 = icmp eq i64 %count, 0, !dbg !327
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !327

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !328
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !325
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !327
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !327
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !327
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !327
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !327
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !327
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !327
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !327
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !327
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !327
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !327
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !327
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !327
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !327
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !327
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !327
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !327
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !327
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !327
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !327
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !329

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !327
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !327
  %19 = load i8* %b.135, align 1, !dbg !327, !tbaa !314
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !327
  store i8 %19, i8* %a.134, align 1, !dbg !327, !tbaa !314
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !327
  br i1 %tobool8, label %return, label %while.body9, !dbg !327, !llvm.loop !330

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !331
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !332
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !332

while.body.preheader:                             ; preds = %entry
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %0 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %scevgep8 = getelementptr i8* %srcaddr, i64 %0
  %scevgep7 = getelementptr i8* %destaddr, i64 %0
  %bound1 = icmp uge i8* %scevgep7, %srcaddr
  %bound0 = icmp uge i8* %scevgep8, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end10 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep107 = getelementptr i8* %destaddr, i64 %index
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !333
  %wide.load = load <16 x i8>* %1, align 1, !dbg !333
  %next.gep.sum283 = or i64 %index, 16, !dbg !333
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !333
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !333
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !333
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !333
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !333
  %next.gep107.sum300 = or i64 %index, 16, !dbg !333
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !333
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !333
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !333
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %while.body.preheader
  %resume.val = phi i8* [ %srcaddr, %while.body.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val9 = phi i8* [ %destaddr, %while.body.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end10, %vector.body ]
  %resume.val11 = phi i64 [ %len, %while.body.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %while.cond.while.end_crit_edge, label %while.body

while.body:                                       ; preds = %while.body, %middle.block
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val, %middle.block ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %resume.val9, %middle.block ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %resume.val11, %middle.block ]
  %dec = add i64 %len.addr.04, -1, !dbg !332
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !333
  %8 = load i8* %src.06, align 1, !dbg !333, !tbaa !314
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !333
  store i8 %8, i8* %dest.05, align 1, !dbg !333, !tbaa !314
  %cmp = icmp eq i64 %dec, 0, !dbg !332
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !332, !llvm.loop !335

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !332

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !336
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !337
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !337

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !338
  br label %while.body, !dbg !337

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !337
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !338
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !338, !tbaa !314
  %cmp = icmp eq i64 %dec, 0, !dbg !337
  br i1 %cmp, label %while.end, label %while.body, !dbg !337

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !339
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noreturn nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !34, !44, !57, !68, !80, !99, !113, !127}
!llvm.module.flags = !{!142, !143}
!llvm.ident = !{!144, !145, !145, !145, !145, !145, !145, !145, !145}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"floodfill.c", metadata !"/home/himeshi/Projects/workspace/floodfill"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 211, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 211} ; [ DW_TAG_subprogram ]
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
!34 = metadata !{i32 786449, metadata !35, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !36, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!35 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786478, metadata !35, metadata !38, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!38 = metadata !{i32 786473, metadata !35}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786689, metadata !37, metadata !"z", metadata !38, i32 16777228, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!44 = metadata !{i32 786449, metadata !45, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !46, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!45 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786478, metadata !45, metadata !48, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !54, i32 13} ; [ 
!48 = metadata !{i32 786473, metadata !45}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_int.c]
!49 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !8, metadata !51}
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!53 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!54 = metadata !{metadata !55, metadata !56}
!55 = metadata !{i32 786689, metadata !47, metadata !"name", metadata !48, i32 16777229, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!56 = metadata !{i32 786688, metadata !47, metadata !"x", metadata !48, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!57 = metadata !{i32 786449, metadata !58, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !59, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!58 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786478, metadata !58, metadata !61, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!61 = metadata !{i32 786473, metadata !58}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c]
!62 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{null, metadata !64, metadata !64}
!64 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786689, metadata !60, metadata !"bitWidth", metadata !61, i32 16777236, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!67 = metadata !{i32 786689, metadata !60, metadata !"shift", metadata !61, i32 33554452, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!68 = metadata !{i32 786449, metadata !69, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !70, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!69 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786478, metadata !69, metadata !72, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!72 = metadata !{i32 786473, metadata !69}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!73 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !8, metadata !8, metadata !8, metadata !51}
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79}
!76 = metadata !{i32 786689, metadata !71, metadata !"start", metadata !72, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!77 = metadata !{i32 786689, metadata !71, metadata !"end", metadata !72, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!78 = metadata !{i32 786689, metadata !71, metadata !"name", metadata !72, i32 50331661, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!79 = metadata !{i32 786688, metadata !71, metadata !"x", metadata !72, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!80 = metadata !{i32 786449, metadata !81, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !82, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!81 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786478, metadata !81, metadata !84, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !92, i32 12} 
!84 = metadata !{i32 786473, metadata !81}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memcpy.c]
!85 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !87, metadata !87, metadata !88, metadata !90}
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!89 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{i32 786454, metadata !81, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!91 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96, metadata !98}
!93 = metadata !{i32 786689, metadata !83, metadata !"destaddr", metadata !84, i32 16777228, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!94 = metadata !{i32 786689, metadata !83, metadata !"srcaddr", metadata !84, i32 33554444, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!95 = metadata !{i32 786689, metadata !83, metadata !"len", metadata !84, i32 50331660, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!96 = metadata !{i32 786688, metadata !83, metadata !"dest", metadata !84, i32 13, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!98 = metadata !{i32 786688, metadata !83, metadata !"src", metadata !84, i32 14, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!99 = metadata !{i32 786449, metadata !100, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !101, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/ho
!100 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786478, metadata !100, metadata !103, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !107, 
!103 = metadata !{i32 786473, metadata !100}      ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !87, metadata !87, metadata !88, metadata !106}
!106 = metadata !{i32 786454, metadata !100, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!108 = metadata !{i32 786689, metadata !102, metadata !"dst", metadata !103, i32 16777228, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!109 = metadata !{i32 786689, metadata !102, metadata !"src", metadata !103, i32 33554444, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!110 = metadata !{i32 786689, metadata !102, metadata !"count", metadata !103, i32 50331660, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!111 = metadata !{i32 786688, metadata !102, metadata !"a", metadata !103, i32 13, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!112 = metadata !{i32 786688, metadata !102, metadata !"b", metadata !103, i32 14, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!113 = metadata !{i32 786449, metadata !114, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !115, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!114 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786478, metadata !114, metadata !117, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !121, 
!117 = metadata !{i32 786473, metadata !114}      ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/mempcpy.c]
!118 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{metadata !87, metadata !87, metadata !88, metadata !120}
!120 = metadata !{i32 786454, metadata !114, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!122 = metadata !{i32 786689, metadata !116, metadata !"destaddr", metadata !117, i32 16777227, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!123 = metadata !{i32 786689, metadata !116, metadata !"srcaddr", metadata !117, i32 33554443, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!124 = metadata !{i32 786689, metadata !116, metadata !"len", metadata !117, i32 50331659, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!125 = metadata !{i32 786688, metadata !116, metadata !"dest", metadata !117, i32 12, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!126 = metadata !{i32 786688, metadata !116, metadata !"src", metadata !117, i32 13, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!127 = metadata !{i32 786449, metadata !128, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !129, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!128 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786478, metadata !128, metadata !131, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !135, i32
!131 = metadata !{i32 786473, metadata !128}      ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memset.c]
!132 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !87, metadata !87, metadata !8, metadata !134}
!134 = metadata !{i32 786454, metadata !128, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !130, metadata !"dst", metadata !131, i32 16777227, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!137 = metadata !{i32 786689, metadata !130, metadata !"s", metadata !131, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!138 = metadata !{i32 786689, metadata !130, metadata !"count", metadata !131, i32 50331659, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!139 = metadata !{i32 786688, metadata !130, metadata !"a", metadata !131, i32 12, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!142 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!143 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!144 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!145 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!146 = metadata !{i32 214, i32 0, metadata !4, null}
!147 = metadata !{i32 215, i32 0, metadata !4, null}
!148 = metadata !{i32 217, i32 0, metadata !4, null}
!149 = metadata !{i32 218, i32 0, metadata !4, null}
!150 = metadata !{i32 222, i32 0, metadata !4, null}
!151 = metadata !{i32 223, i32 0, metadata !4, null}
!152 = metadata !{i32 224, i32 0, metadata !4, null}
!153 = metadata !{i32 225, i32 0, metadata !4, null}
!154 = metadata !{i32 227, i32 0, metadata !4, null}
!155 = metadata !{i32 229, i32 0, metadata !4, null}
!156 = metadata !{i32 307, i32 0, metadata !21, null}
!157 = metadata !{i32 308, i32 0, metadata !21, null}
!158 = metadata !{i32 310, i32 0, metadata !21, null}
!159 = metadata !{i32 312, i32 0, metadata !21, null}
!160 = metadata !{i32 314, i32 0, metadata !21, null}
!161 = metadata !{i32 316, i32 0, metadata !21, null}
!162 = metadata !{i32 318, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !21, i32 318, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!164 = metadata !{i32 319, i32 0, metadata !163, null}
!165 = metadata !{i32 321, i32 0, metadata !21, null}
!166 = metadata !{i32 322, i32 0, metadata !21, null}
!167 = metadata !{i32 326, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !21, i32 326, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!169 = metadata !{i32 327, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !168, i32 326, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!171 = metadata !{i32 328, i32 0, metadata !170, null}
!172 = metadata !{i32 329, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !170, i32 329, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!174 = metadata !{i32 330, i32 0, metadata !173, null}
!175 = metadata !{i32 331, i32 0, metadata !170, null}
!176 = metadata !{i32 333, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !170, i32 333, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!178 = metadata !{i32 335, i32 0, metadata !170, null}
!179 = metadata !{i32 336, i32 0, metadata !170, null}
!180 = metadata !{i32 338, i32 0, metadata !170, null}
!181 = metadata !{i32 339, i32 0, metadata !170, null}
!182 = metadata !{i32 340, i32 0, metadata !170, null}
!183 = metadata !{i32 342, i32 0, metadata !170, null}
!184 = metadata !{i32 343, i32 0, metadata !170, null}
!185 = metadata !{i32 344, i32 0, metadata !170, null}
!186 = metadata !{i32 346, i32 0, metadata !170, null}
!187 = metadata !{i32 348, i32 0, metadata !170, null}
!188 = metadata !{i32 351, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !170, i32 351, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!190 = metadata !{i32 352, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !192, i32 352, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!192 = metadata !{i32 786443, metadata !1, metadata !189, i32 351, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!193 = metadata !{i32 353, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !191, i32 352, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!195 = metadata !{i32 354, i32 0, metadata !194, null}
!196 = metadata !{i32 355, i32 0, metadata !194, null}
!197 = metadata !{i32 355, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !191, i32 355, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!199 = metadata !{i32 356, i32 0, metadata !198, null}
!200 = metadata !{i32 359, i32 0, metadata !170, null}
!201 = metadata !{i32 360, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !170, i32 360, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!203 = metadata !{i32 361, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 361, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!205 = metadata !{i32 786443, metadata !1, metadata !202, i32 360, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!206 = metadata !{i32 362, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 361, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!208 = metadata !{i32 363, i32 0, metadata !207, null}
!209 = metadata !{i32 364, i32 0, metadata !207, null}
!210 = metadata !{i32 364, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !204, i32 364, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!212 = metadata !{i32 365, i32 0, metadata !211, null}
!213 = metadata !{i32 366, i32 0, metadata !211, null}
!214 = metadata !{i32 371, i32 0, metadata !21, null}
!215 = metadata !{i32 372, i32 0, metadata !21, null}
!216 = metadata !{i32 232, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !9, i32 232, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!218 = metadata !{i32 233, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !217, i32 232, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!220 = metadata !{i32 234, i32 0, metadata !219, null}
!221 = metadata !{i32 235, i32 0, metadata !219, null}
!222 = metadata !{i32 239, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !217, i32 236, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!224 = metadata !{i32 240, i32 0, metadata !223, null}
!225 = metadata !{i32 242, i32 0, metadata !9, null}
!226 = metadata !{i32 245, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !12, i32 245, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!228 = metadata !{i32 248, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !227, i32 247, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!230 = metadata !{i32 250, i32 0, metadata !12, null}
!231 = metadata !{i32 251, i32 0, metadata !12, null}
!232 = metadata !{i32 252, i32 0, metadata !12, null}
!233 = metadata !{i32 253, i32 0, metadata !12, null}
!234 = metadata !{i32 256, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !15, i32 256, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!236 = metadata !{i32 257, i32 0, metadata !235, null}
!237 = metadata !{i32 259, i32 0, metadata !235, null}
!238 = metadata !{i32 260, i32 0, metadata !15, null}
!239 = metadata !{i32 263, i32 0, metadata !16, null}
!240 = metadata !{i32 264, i32 0, metadata !16, null}
!241 = metadata !{i32 265, i32 0, metadata !16, null}
!242 = metadata !{i32 270, i32 0, metadata !17, null}
!243 = metadata !{i32 271, i32 0, metadata !17, null}
!244 = metadata !{i32 272, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !17, i32 272, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!246 = metadata !{i32 273, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !245, i32 272, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!248 = metadata !{i32 274, i32 0, metadata !247, null}
!249 = metadata !{i32 275, i32 0, metadata !247, null}
!250 = metadata !{i32 276, i32 0, metadata !247, null}
!251 = metadata !{i32 277, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !17, i32 277, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!253 = metadata !{i32 278, i32 0, metadata !252, null}
!254 = metadata !{i32 280, i32 0, metadata !17, null}
!255 = metadata !{i32 281, i32 0, metadata !17, null}
!256 = metadata !{i32 282, i32 0, metadata !17, null}
!257 = metadata !{i32 283, i32 0, metadata !17, null}
!258 = metadata !{i32 286, i32 0, metadata !18, null}
!259 = metadata !{i32 288, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !18, i32 288, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!261 = metadata !{i32 289, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !260, i32 288, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!263 = metadata !{i32 290, i32 0, metadata !262, null}
!264 = metadata !{i32 291, i32 0, metadata !262, null}
!265 = metadata !{i32 292, i32 0, metadata !262, null}
!266 = metadata !{i32 293, i32 0, metadata !262, null}
!267 = metadata !{i32 294, i32 0, metadata !262, null}
!268 = metadata !{i32 295, i32 0, metadata !262, null}
!269 = metadata !{i32 296, i32 0, metadata !262, null}
!270 = metadata !{i32 297, i32 0, metadata !18, null}
!271 = metadata !{i32 298, i32 0, metadata !18, null}
!272 = metadata !{i32 300, i32 0, metadata !18, null}
!273 = metadata !{i32 301, i32 0, metadata !18, null}
!274 = metadata !{i32 302, i32 0, metadata !18, null}
!275 = metadata !{i32 303, i32 0, metadata !18, null}
!276 = metadata !{i32 304, i32 0, metadata !18, null}
!277 = metadata !{i32 13, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !35, metadata !37, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c]
!279 = metadata !{i32 14, i32 0, metadata !278, null}
!280 = metadata !{i32 15, i32 0, metadata !37, null}
!281 = metadata !{i32 15, i32 0, metadata !47, null}
!282 = metadata !{i32 16, i32 0, metadata !47, null}
!283 = metadata !{metadata !284, metadata !284, i64 0}
!284 = metadata !{metadata !"int", metadata !285, i64 0}
!285 = metadata !{metadata !"omnipotent char", metadata !286, i64 0}
!286 = metadata !{metadata !"Simple C/C++ TBAA"}
!287 = metadata !{i32 21, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !58, metadata !60, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c]
!289 = metadata !{i32 27, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !58, metadata !288, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c]
!291 = metadata !{i32 29, i32 0, metadata !60, null}
!292 = metadata !{i32 16, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !69, metadata !71, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!294 = metadata !{i32 17, i32 0, metadata !293, null}
!295 = metadata !{i32 19, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !69, metadata !71, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!297 = metadata !{i32 22, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !69, metadata !296, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!299 = metadata !{i32 25, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !69, metadata !298, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!301 = metadata !{i32 26, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !69, metadata !300, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!303 = metadata !{i32 27, i32 0, metadata !302, null}
!304 = metadata !{i32 28, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !69, metadata !300, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!306 = metadata !{i32 29, i32 0, metadata !305, null}
!307 = metadata !{i32 32, i32 0, metadata !298, null}
!308 = metadata !{i32 34, i32 0, metadata !71, null}
!309 = metadata !{i32 16, i32 0, metadata !83, null}
!310 = metadata !{i32 17, i32 0, metadata !83, null}
!311 = metadata !{metadata !311, metadata !312, metadata !313}
!312 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!313 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!314 = metadata !{metadata !285, metadata !285, i64 0}
!315 = metadata !{metadata !315, metadata !312, metadata !313}
!316 = metadata !{i32 18, i32 0, metadata !83, null}
!317 = metadata !{i32 16, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !100, metadata !102, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!319 = metadata !{i32 19, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !100, metadata !102, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!321 = metadata !{i32 20, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !100, metadata !320, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!323 = metadata !{metadata !323, metadata !312, metadata !313}
!324 = metadata !{metadata !324, metadata !312, metadata !313}
!325 = metadata !{i32 22, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !100, metadata !320, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!327 = metadata !{i32 24, i32 0, metadata !326, null}
!328 = metadata !{i32 23, i32 0, metadata !326, null}
!329 = metadata !{metadata !329, metadata !312, metadata !313}
!330 = metadata !{metadata !330, metadata !312, metadata !313}
!331 = metadata !{i32 28, i32 0, metadata !102, null}
!332 = metadata !{i32 15, i32 0, metadata !116, null}
!333 = metadata !{i32 16, i32 0, metadata !116, null}
!334 = metadata !{metadata !334, metadata !312, metadata !313}
!335 = metadata !{metadata !335, metadata !312, metadata !313}
!336 = metadata !{i32 17, i32 0, metadata !116, null}
!337 = metadata !{i32 13, i32 0, metadata !130, null}
!338 = metadata !{i32 14, i32 0, metadata !130, null}
!339 = metadata !{i32 15, i32 0, metadata !130, null}
