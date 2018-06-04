; ModuleID = 'floodfill.bc'
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
@.str14 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str115 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str216 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str317 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1418 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str619 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @klee_make_symbolic(i8* bitcast ([3 x [2 x i32]]* @image to i8*), i64 24, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)), !dbg !153
  call void @klee_make_symbolic(i8* bitcast (i32* @targetColor to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !154
  call void @klee_track_error(i8* bitcast ([3 x [2 x i32]]* @image to i8*), i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !155
  call void @klee_track_error(i8* bitcast (i32* @targetColor to i8*), i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !156
  store i32 0, i32* @stackSize, align 4, !dbg !157
  store i32 1, i32* @maxStackSize, align 4, !dbg !158
  %1 = load i32* @maxStackSize, align 4, !dbg !159
  %2 = sext i32 %1 to i64, !dbg !159
  %3 = mul i64 4, %2, !dbg !159
  %4 = call noalias i8* @malloc(i64 %3) #4, !dbg !159
  %5 = bitcast i8* %4 to i32*, !dbg !159
  store i32* %5, i32** @xstack, align 8, !dbg !159
  %6 = load i32* @maxStackSize, align 4, !dbg !160
  %7 = sext i32 %6 to i64, !dbg !160
  %8 = mul i64 4, %7, !dbg !160
  %9 = call noalias i8* @malloc(i64 %8) #4, !dbg !160
  %10 = bitcast i8* %9 to i32*, !dbg !160
  store i32* %10, i32** @ystack, align 8, !dbg !160
  %11 = call i32 @fill(i32 0, i32 0), !dbg !161
  ret i32 0, !dbg !162
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
  store i32 3, i32* %width, align 4, !dbg !163
  store i32 2, i32* %height, align 4, !dbg !164
  %4 = load i32* %2, align 4, !dbg !165
  %5 = load i32* %3, align 4, !dbg !165
  %6 = call i32 @getPix(i32 %4, i32 %5), !dbg !165
  store i32 %6, i32* %color, align 4, !dbg !165
  %7 = load i32* %2, align 4, !dbg !166
  %8 = load i32* %2, align 4, !dbg !166
  %9 = load i32* %3, align 4, !dbg !166
  call void @fillLine(i32 %7, i32 %8, i32 %9), !dbg !166
  %10 = load i32* %2, align 4, !dbg !167
  %11 = load i32* %3, align 4, !dbg !167
  %12 = call i32 @getPix(i32 %10, i32 %11), !dbg !167
  store i32 %12, i32* %newColor, align 4, !dbg !167
  %13 = load i32* %2, align 4, !dbg !168
  %14 = load i32* %3, align 4, !dbg !168
  %15 = load i32* %color, align 4, !dbg !168
  call void @setPix(i32 %13, i32 %14, i32 %15), !dbg !168
  %16 = load i32* %color, align 4, !dbg !169
  %17 = load i32* %newColor, align 4, !dbg !169
  %18 = icmp eq i32 %16, %17, !dbg !169
  br i1 %18, label %19, label %20, !dbg !169

; <label>:19                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !171
  br label %164, !dbg !171

; <label>:20                                      ; preds = %0
  store i32 0, i32* @stackSize, align 4, !dbg !172
  %21 = load i32* %2, align 4, !dbg !173
  %22 = load i32* %3, align 4, !dbg !173
  call void @push(i32 %21, i32 %22), !dbg !173
  store i32 0, i32* %i, align 4, !dbg !174
  br label %23, !dbg !174

; <label>:23                                      ; preds = %160, %20
  %24 = load i32* %i, align 4, !dbg !174
  %25 = icmp slt i32 %24, 6, !dbg !174
  br i1 %25, label %26, label %163, !dbg !174

; <label>:26                                      ; preds = %23
  %27 = call i32 @popx(), !dbg !176
  store i32 %27, i32* %2, align 4, !dbg !176
  %28 = load i32* %2, align 4, !dbg !178
  %29 = sext i32 %28 to i64, !dbg !178
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !178
  %30 = load i32* %2, align 4, !dbg !179
  %31 = icmp eq i32 %30, -1, !dbg !179
  br i1 %31, label %32, label %33, !dbg !179

; <label>:32                                      ; preds = %26
  store i32 1, i32* %1, !dbg !181
  br label %164, !dbg !181

; <label>:33                                      ; preds = %26
  %34 = call i32 @popy(), !dbg !182
  store i32 %34, i32* %3, align 4, !dbg !182
  %35 = load i32* %2, align 4, !dbg !183
  %36 = load i32* %3, align 4, !dbg !183
  %37 = call i32 @getPix(i32 %35, i32 %36), !dbg !183
  %38 = load i32* %color, align 4, !dbg !183
  %39 = icmp ne i32 %37, %38, !dbg !183
  br i1 %39, label %160, label %40, !dbg !183

; <label>:40                                      ; preds = %33
  %41 = load i32* %2, align 4, !dbg !185
  store i32 %41, i32* %x1, align 4, !dbg !185
  %42 = load i32* %2, align 4, !dbg !186
  store i32 %42, i32* %x2, align 4, !dbg !186
  br label %43, !dbg !187

; <label>:43                                      ; preds = %55, %40
  %44 = load i32* %x1, align 4, !dbg !187
  %45 = load i32* %3, align 4, !dbg !187
  %46 = call i32 @getPix(i32 %44, i32 %45), !dbg !187
  %47 = load i32* %color, align 4, !dbg !187
  %48 = icmp eq i32 %46, %47, !dbg !187
  br i1 %48, label %49, label %52, !dbg !187

; <label>:49                                      ; preds = %43
  %50 = load i32* %x1, align 4, !dbg !187
  %51 = icmp sge i32 %50, 0, !dbg !187
  br label %52

; <label>:52                                      ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = load i32* %x1, align 4, !dbg !187
  br i1 %53, label %55, label %57

; <label>:55                                      ; preds = %52
  %56 = add nsw i32 %54, -1, !dbg !187
  store i32 %56, i32* %x1, align 4, !dbg !187
  br label %43, !dbg !187

; <label>:57                                      ; preds = %52
  %58 = add nsw i32 %54, 1, !dbg !188
  store i32 %58, i32* %x1, align 4, !dbg !188
  br label %59, !dbg !189

; <label>:59                                      ; preds = %72, %57
  %60 = load i32* %x2, align 4, !dbg !189
  %61 = load i32* %3, align 4, !dbg !189
  %62 = call i32 @getPix(i32 %60, i32 %61), !dbg !189
  %63 = load i32* %color, align 4, !dbg !189
  %64 = icmp eq i32 %62, %63, !dbg !189
  br i1 %64, label %65, label %69, !dbg !189

; <label>:65                                      ; preds = %59
  %66 = load i32* %x2, align 4, !dbg !189
  %67 = load i32* %width, align 4, !dbg !189
  %68 = icmp slt i32 %66, %67, !dbg !189
  br label %69

; <label>:69                                      ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  %71 = load i32* %x2, align 4, !dbg !189
  br i1 %70, label %72, label %74

; <label>:72                                      ; preds = %69
  %73 = add nsw i32 %71, 1, !dbg !189
  store i32 %73, i32* %x2, align 4, !dbg !189
  br label %59, !dbg !189

; <label>:74                                      ; preds = %69
  %75 = add nsw i32 %71, -1, !dbg !190
  store i32 %75, i32* %x2, align 4, !dbg !190
  %76 = load i32* %x1, align 4, !dbg !191
  %77 = load i32* %x2, align 4, !dbg !191
  %78 = load i32* %3, align 4, !dbg !191
  call void @fillLine(i32 %76, i32 %77, i32 %78), !dbg !191
  store i32 0, i32* %inScanLine, align 4, !dbg !192
  %79 = load i32* %x1, align 4, !dbg !193
  store i32 %79, i32* %i1, align 4, !dbg !193
  br label %80, !dbg !193

; <label>:80                                      ; preds = %113, %74
  %81 = load i32* %i1, align 4, !dbg !193
  %82 = load i32* %x2, align 4, !dbg !193
  %83 = icmp sle i32 %81, %82, !dbg !193
  br i1 %83, label %84, label %116, !dbg !193

; <label>:84                                      ; preds = %80
  %85 = load i32* %inScanLine, align 4, !dbg !195
  %86 = icmp eq i32 %85, 0, !dbg !195
  %87 = load i32* %3, align 4, !dbg !195
  %88 = icmp sgt i32 %87, 0, !dbg !195
  %or.cond = and i1 %86, %88, !dbg !195
  br i1 %or.cond, label %89, label %100, !dbg !195

; <label>:89                                      ; preds = %84
  %90 = load i32* %i1, align 4, !dbg !195
  %91 = load i32* %3, align 4, !dbg !195
  %92 = sub nsw i32 %91, 1, !dbg !195
  %93 = call i32 @getPix(i32 %90, i32 %92), !dbg !195
  %94 = load i32* %color, align 4, !dbg !195
  %95 = icmp eq i32 %93, %94, !dbg !195
  br i1 %95, label %96, label %100, !dbg !195

; <label>:96                                      ; preds = %89
  %97 = load i32* %i1, align 4, !dbg !198
  %98 = load i32* %3, align 4, !dbg !198
  %99 = sub nsw i32 %98, 1, !dbg !198
  call void @push(i32 %97, i32 %99), !dbg !198
  store i32 1, i32* %inScanLine, align 4, !dbg !200
  br label %113, !dbg !201

; <label>:100                                     ; preds = %84, %89
  %101 = load i32* %inScanLine, align 4, !dbg !202
  %102 = icmp ne i32 %101, 0, !dbg !202
  %103 = load i32* %3, align 4, !dbg !202
  %104 = icmp sgt i32 %103, 0, !dbg !202
  %or.cond3 = and i1 %102, %104, !dbg !202
  br i1 %or.cond3, label %105, label %113, !dbg !202

; <label>:105                                     ; preds = %100
  %106 = load i32* %i1, align 4, !dbg !202
  %107 = load i32* %3, align 4, !dbg !202
  %108 = sub nsw i32 %107, 1, !dbg !202
  %109 = call i32 @getPix(i32 %106, i32 %108), !dbg !202
  %110 = load i32* %color, align 4, !dbg !202
  %111 = icmp ne i32 %109, %110, !dbg !202
  br i1 %111, label %112, label %113, !dbg !202

; <label>:112                                     ; preds = %105
  store i32 0, i32* %inScanLine, align 4, !dbg !204
  br label %113, !dbg !204

; <label>:113                                     ; preds = %96, %112, %105, %100
  %114 = load i32* %i1, align 4, !dbg !193
  %115 = add nsw i32 %114, 1, !dbg !193
  store i32 %115, i32* %i1, align 4, !dbg !193
  br label %80, !dbg !193

; <label>:116                                     ; preds = %80
  store i32 0, i32* %inScanLine, align 4, !dbg !205
  %117 = load i32* %x1, align 4, !dbg !206
  store i32 %117, i32* %i1, align 4, !dbg !206
  br label %118, !dbg !206

; <label>:118                                     ; preds = %157, %116
  %119 = load i32* %i1, align 4, !dbg !206
  %120 = load i32* %x2, align 4, !dbg !206
  %121 = icmp sle i32 %119, %120, !dbg !206
  br i1 %121, label %122, label %160, !dbg !206

; <label>:122                                     ; preds = %118
  %123 = load i32* %inScanLine, align 4, !dbg !208
  %124 = icmp ne i32 %123, 0, !dbg !208
  br i1 %124, label %141, label %125, !dbg !208

; <label>:125                                     ; preds = %122
  %126 = load i32* %3, align 4, !dbg !208
  %127 = load i32* %height, align 4, !dbg !208
  %128 = sub nsw i32 %127, 1, !dbg !208
  %129 = icmp slt i32 %126, %128, !dbg !208
  br i1 %129, label %130, label %141, !dbg !208

; <label>:130                                     ; preds = %125
  %131 = load i32* %i1, align 4, !dbg !208
  %132 = load i32* %3, align 4, !dbg !208
  %133 = add nsw i32 %132, 1, !dbg !208
  %134 = call i32 @getPix(i32 %131, i32 %133), !dbg !208
  %135 = load i32* %color, align 4, !dbg !208
  %136 = icmp eq i32 %134, %135, !dbg !208
  br i1 %136, label %137, label %141, !dbg !208

; <label>:137                                     ; preds = %130
  %138 = load i32* %i1, align 4, !dbg !211
  %139 = load i32* %3, align 4, !dbg !211
  %140 = add nsw i32 %139, 1, !dbg !211
  call void @push(i32 %138, i32 %140), !dbg !211
  store i32 1, i32* %inScanLine, align 4, !dbg !213
  br label %157, !dbg !214

; <label>:141                                     ; preds = %130, %125, %122
  %142 = load i32* %inScanLine, align 4, !dbg !215
  %143 = icmp ne i32 %142, 0, !dbg !215
  br i1 %143, label %144, label %157, !dbg !215

; <label>:144                                     ; preds = %141
  %145 = load i32* %3, align 4, !dbg !215
  %146 = load i32* %height, align 4, !dbg !215
  %147 = sub nsw i32 %146, 1, !dbg !215
  %148 = icmp slt i32 %145, %147, !dbg !215
  br i1 %148, label %149, label %157, !dbg !215

; <label>:149                                     ; preds = %144
  %150 = load i32* %i1, align 4, !dbg !217
  %151 = load i32* %3, align 4, !dbg !217
  %152 = add nsw i32 %151, 1, !dbg !217
  %153 = call i32 @getPix(i32 %150, i32 %152), !dbg !217
  %154 = load i32* %color, align 4, !dbg !217
  %155 = icmp ne i32 %153, %154, !dbg !217
  br i1 %155, label %156, label %157, !dbg !217

; <label>:156                                     ; preds = %149
  store i32 0, i32* %inScanLine, align 4, !dbg !218
  br label %157, !dbg !218

; <label>:157                                     ; preds = %137, %156, %149, %144, %141
  %158 = load i32* %i1, align 4, !dbg !206
  %159 = add nsw i32 %158, 1, !dbg !206
  store i32 %159, i32* %i1, align 4, !dbg !206
  br label %118, !dbg !206

; <label>:160                                     ; preds = %118, %33
  %161 = load i32* %i, align 4, !dbg !174
  %162 = add nsw i32 %161, 1, !dbg !174
  store i32 %162, i32* %i, align 4, !dbg !174
  br label %23, !dbg !174

; <label>:163                                     ; preds = %23
  store i32 1, i32* %1, !dbg !219
  br label %164, !dbg !219

; <label>:164                                     ; preds = %163, %32, %19
  %165 = load i32* %1, !dbg !220
  ret i32 %165, !dbg !220
}

; Function Attrs: nounwind uwtable
define i32 @getPix(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  %4 = load i32* %2, align 4, !dbg !221
  %5 = icmp slt i32 %4, 0, !dbg !221
  %6 = load i32* %2, align 4, !dbg !221
  %7 = icmp sge i32 %6, 3, !dbg !221
  %or.cond = or i1 %5, %7, !dbg !221
  %8 = load i32* %3, align 4, !dbg !221
  %9 = icmp slt i32 %8, 0, !dbg !221
  %or.cond3 = or i1 %or.cond, %9, !dbg !221
  %10 = load i32* %3, align 4, !dbg !221
  %11 = icmp sge i32 %10, 2, !dbg !221
  %or.cond5 = or i1 %or.cond3, %11, !dbg !221
  %12 = load i32* %2, align 4, !dbg !223
  %13 = sext i32 %12 to i64, !dbg !223
  call void @klee_bound_error(i64 %13, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !223
  %14 = load i32* %3, align 4, !dbg !225
  %15 = sext i32 %14 to i64, !dbg !225
  call void @klee_bound_error(i64 %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !225
  br i1 %or.cond5, label %16, label %17, !dbg !221

; <label>:16                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !226
  br label %33, !dbg !226

; <label>:17                                      ; preds = %0
  %18 = load i32* %3, align 4, !dbg !227
  %19 = sext i32 %18 to i64, !dbg !227
  %20 = load i32* %2, align 4, !dbg !227
  %21 = sext i32 %20 to i64, !dbg !227
  %22 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %21, !dbg !227
  %23 = getelementptr inbounds [2 x i32]* %22, i32 0, i64 %19, !dbg !227
  %24 = load i32* %23, align 4, !dbg !227
  %25 = sext i32 %24 to i64, !dbg !227
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !227
  %26 = load i32* %3, align 4, !dbg !229
  %27 = sext i32 %26 to i64, !dbg !229
  %28 = load i32* %2, align 4, !dbg !229
  %29 = sext i32 %28 to i64, !dbg !229
  %30 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %29, !dbg !229
  %31 = getelementptr inbounds [2 x i32]* %30, i32 0, i64 %27, !dbg !229
  %32 = load i32* %31, align 4, !dbg !229
  store i32 %32, i32* %1, !dbg !229
  br label %33, !dbg !229

; <label>:33                                      ; preds = %17, %16
  %34 = load i32* %1, !dbg !230
  ret i32 %34, !dbg !230
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
  %4 = load i32* %1, align 4, !dbg !231
  %5 = icmp slt i32 %4, 0, !dbg !231
  %6 = load i32* %1, align 4, !dbg !231
  %7 = icmp sge i32 %6, 3, !dbg !231
  %or.cond = or i1 %5, %7, !dbg !231
  %8 = load i32* %2, align 4, !dbg !231
  %9 = icmp slt i32 %8, 0, !dbg !231
  %or.cond3 = or i1 %or.cond, %9, !dbg !231
  %10 = load i32* %2, align 4, !dbg !231
  %11 = icmp sge i32 %10, 2, !dbg !231
  %or.cond5 = or i1 %or.cond3, %11, !dbg !231
  br i1 %or.cond5, label %26, label %12, !dbg !231

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !233
  %14 = load i32* %2, align 4, !dbg !233
  %15 = sext i32 %14 to i64, !dbg !233
  %16 = load i32* %1, align 4, !dbg !233
  %17 = sext i32 %16 to i64, !dbg !233
  %18 = getelementptr inbounds [3 x [2 x i32]]* @image, i32 0, i64 %17, !dbg !233
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 %15, !dbg !233
  store i32 %13, i32* %19, align 4, !dbg !233
  %20 = load i32* %1, align 4, !dbg !235
  %21 = sext i32 %20 to i64, !dbg !235
  call void @klee_bound_error(i64 %21, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !235
  %22 = load i32* %2, align 4, !dbg !236
  %23 = sext i32 %22 to i64, !dbg !236
  call void @klee_bound_error(i64 %23, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !236
  %24 = load i32* %3, align 4, !dbg !237
  %25 = sext i32 %24 to i64, !dbg !237
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), double 1.000000e+00), !dbg !237
  br label %26, !dbg !238

; <label>:26                                      ; preds = %0, %12
  ret void, !dbg !238
}

; Function Attrs: nounwind uwtable
define i32 @popx() #0 {
  %1 = alloca i32, align 4
  %2 = load i32* @stackSize, align 4, !dbg !239
  %3 = icmp eq i32 %2, 0, !dbg !239
  br i1 %3, label %4, label %5, !dbg !239

; <label>:4                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !241
  br label %12, !dbg !241

; <label>:5                                       ; preds = %0
  %6 = load i32* @stackSize, align 4, !dbg !242
  %7 = sub nsw i32 %6, 1, !dbg !242
  %8 = sext i32 %7 to i64, !dbg !242
  %9 = load i32** @xstack, align 8, !dbg !242
  %10 = getelementptr inbounds i32* %9, i64 %8, !dbg !242
  %11 = load i32* %10, align 4, !dbg !242
  store i32 %11, i32* %1, !dbg !242
  br label %12, !dbg !242

; <label>:12                                      ; preds = %5, %4
  %13 = load i32* %1, !dbg !243
  ret i32 %13, !dbg !243
}

; Function Attrs: nounwind uwtable
define i32 @popy() #0 {
  %value = alloca i32, align 4
  %1 = load i32* @stackSize, align 4, !dbg !244
  %2 = sub nsw i32 %1, 1, !dbg !244
  %3 = sext i32 %2 to i64, !dbg !244
  %4 = load i32** @ystack, align 8, !dbg !244
  %5 = getelementptr inbounds i32* %4, i64 %3, !dbg !244
  %6 = load i32* %5, align 4, !dbg !244
  store i32 %6, i32* %value, align 4, !dbg !244
  %7 = load i32* @stackSize, align 4, !dbg !245
  %8 = add nsw i32 %7, -1, !dbg !245
  store i32 %8, i32* @stackSize, align 4, !dbg !245
  %9 = load i32* %value, align 4, !dbg !246
  ret i32 %9, !dbg !246
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
  %4 = load i32* %1, align 4, !dbg !247
  %5 = load i32* %2, align 4, !dbg !247
  %6 = icmp sgt i32 %4, %5, !dbg !247
  br i1 %6, label %7, label %11, !dbg !247

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4, !dbg !249
  store i32 %8, i32* %t, align 4, !dbg !249
  %9 = load i32* %2, align 4, !dbg !251
  store i32 %9, i32* %1, align 4, !dbg !251
  %10 = load i32* %t, align 4, !dbg !252
  store i32 %10, i32* %2, align 4, !dbg !252
  br label %11, !dbg !253

; <label>:11                                      ; preds = %7, %0
  %12 = load i32* %1, align 4, !dbg !254
  store i32 %12, i32* %x, align 4, !dbg !254
  br label %13, !dbg !254

; <label>:13                                      ; preds = %17, %11
  %14 = load i32* %x, align 4, !dbg !254
  %15 = load i32* %2, align 4, !dbg !254
  %16 = icmp sle i32 %14, %15, !dbg !254
  br i1 %16, label %17, label %23, !dbg !254

; <label>:17                                      ; preds = %13
  %18 = load i32* %x, align 4, !dbg !256
  %19 = load i32* %3, align 4, !dbg !256
  %20 = load i32* @targetColor, align 4, !dbg !256
  call void @setPix(i32 %18, i32 %19, i32 %20), !dbg !256
  %21 = load i32* %x, align 4, !dbg !254
  %22 = add nsw i32 %21, 1, !dbg !254
  store i32 %22, i32* %x, align 4, !dbg !254
  br label %13, !dbg !254

; <label>:23                                      ; preds = %13
  %24 = load i32* %1, align 4, !dbg !257
  %25 = sext i32 %24 to i64, !dbg !257
  call void @klee_bound_error(i64 %25, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), double 1.000000e+00), !dbg !257
  %26 = load i32* %2, align 4, !dbg !258
  %27 = sext i32 %26 to i64, !dbg !258
  call void @klee_bound_error(i64 %27, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), double 1.000000e+00), !dbg !258
  %28 = load i32* %t, align 4, !dbg !259
  %29 = sext i32 %28 to i64, !dbg !259
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), double 1.000000e+00), !dbg !259
  %30 = load i32* %x, align 4, !dbg !260
  %31 = sext i32 %30 to i64, !dbg !260
  call void @klee_bound_error(i64 %31, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !260
  %32 = load i32* %3, align 4, !dbg !261
  %33 = sext i32 %32 to i64, !dbg !261
  call void @klee_bound_error(i64 %33, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: nounwind uwtable
define void @push(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %newXStack = alloca i32*, align 8
  %newYStack = alloca i32*, align 8
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  %3 = load i32* @stackSize, align 4, !dbg !263
  %4 = add nsw i32 %3, 1, !dbg !263
  store i32 %4, i32* @stackSize, align 4, !dbg !263
  %5 = load i32* @stackSize, align 4, !dbg !264
  %6 = icmp eq i32 %5, 1, !dbg !264
  br i1 %6, label %7, label %40, !dbg !264

; <label>:7                                       ; preds = %0
  %8 = load i32* @maxStackSize, align 4, !dbg !266
  %9 = sext i32 %8 to i64, !dbg !266
  %10 = mul i64 4, %9, !dbg !266
  %11 = mul i64 %10, 2, !dbg !266
  %12 = call noalias i8* @malloc(i64 %11) #4, !dbg !266
  %13 = bitcast i8* %12 to i32*, !dbg !266
  store i32* %13, i32** %newXStack, align 8, !dbg !266
  %14 = load i32* @maxStackSize, align 4, !dbg !268
  %15 = sext i32 %14 to i64, !dbg !268
  %16 = mul i64 4, %15, !dbg !268
  %17 = mul i64 %16, 2, !dbg !268
  %18 = call noalias i8* @malloc(i64 %17) #4, !dbg !268
  %19 = bitcast i8* %18 to i32*, !dbg !268
  store i32* %19, i32** %newYStack, align 8, !dbg !268
  %20 = load i32** %newXStack, align 8, !dbg !269
  %21 = bitcast i32* %20 to i8*, !dbg !269
  %22 = load i32** @xstack, align 8, !dbg !269
  %23 = bitcast i32* %22 to i8*, !dbg !269
  %24 = load i32* @maxStackSize, align 4, !dbg !269
  %25 = sext i32 %24 to i64, !dbg !269
  %26 = mul i64 4, %25, !dbg !269
  %27 = call i8* @memcpy(i8* %21, i8* %23, i64 %26)
  %28 = load i32** %newYStack, align 8, !dbg !270
  %29 = bitcast i32* %28 to i8*, !dbg !270
  %30 = load i32** @ystack, align 8, !dbg !270
  %31 = bitcast i32* %30 to i8*, !dbg !270
  %32 = load i32* @maxStackSize, align 4, !dbg !270
  %33 = sext i32 %32 to i64, !dbg !270
  %34 = mul i64 4, %33, !dbg !270
  %35 = call i8* @memcpy(i8* %29, i8* %31, i64 %34)
  %36 = load i32** %newXStack, align 8, !dbg !271
  store i32* %36, i32** @xstack, align 8, !dbg !271
  %37 = load i32** %newYStack, align 8, !dbg !272
  store i32* %37, i32** @ystack, align 8, !dbg !272
  %38 = load i32* @maxStackSize, align 4, !dbg !273
  %39 = mul nsw i32 %38, 2, !dbg !273
  store i32 %39, i32* @maxStackSize, align 4, !dbg !273
  br label %40, !dbg !274

; <label>:40                                      ; preds = %7, %0
  %41 = load i32* %1, align 4, !dbg !275
  %42 = load i32* @stackSize, align 4, !dbg !275
  %43 = sub nsw i32 %42, 1, !dbg !275
  %44 = sext i32 %43 to i64, !dbg !275
  %45 = load i32** @xstack, align 8, !dbg !275
  %46 = getelementptr inbounds i32* %45, i64 %44, !dbg !275
  store i32 %41, i32* %46, align 4, !dbg !275
  %47 = load i32* %2, align 4, !dbg !276
  %48 = load i32* @stackSize, align 4, !dbg !276
  %49 = sub nsw i32 %48, 1, !dbg !276
  %50 = sext i32 %49 to i64, !dbg !276
  %51 = load i32** @ystack, align 8, !dbg !276
  %52 = getelementptr inbounds i32* %51, i64 %50, !dbg !276
  store i32 %47, i32* %52, align 4, !dbg !276
  %53 = load i32* %1, align 4, !dbg !277
  %54 = sext i32 %53 to i64, !dbg !277
  call void @klee_bound_error(i64 %54, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !277
  %55 = load i32* %2, align 4, !dbg !278
  %56 = sext i32 %55 to i64, !dbg !278
  call void @klee_bound_error(i64 %56, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !278
  %57 = load i32** @xstack, align 8, !dbg !279
  %58 = getelementptr inbounds i32* %57, i64 0, !dbg !279
  %59 = load i32* %58, align 4, !dbg !279
  %60 = sext i32 %59 to i64, !dbg !279
  call void @klee_bound_error(i64 %60, i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0), double 1.000000e+00), !dbg !279
  %61 = load i32** @ystack, align 8, !dbg !280
  %62 = getelementptr inbounds i32* %61, i64 0, !dbg !280
  %63 = load i32* %62, align 4, !dbg !280
  %64 = sext i32 %63 to i64, !dbg !280
  call void @klee_bound_error(i64 %64, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), double 1.000000e+00), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
  %1 = icmp eq i64 %z, 0, !dbg !282
  br i1 %1, label %2, label %3, !dbg !282

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str14, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str216, i64 0, i64 0)) #8, !dbg !284
  unreachable, !dbg !284

; <label>:3                                       ; preds = %0
  ret void, !dbg !285
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !286
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #9, !dbg !286
  %2 = load i32* %x, align 4, !dbg !287, !tbaa !288
  ret i32 %2, !dbg !287
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !292
  br i1 %1, label %3, label %2, !dbg !292

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str317, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1418, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !294
  unreachable, !dbg !294

; <label>:3                                       ; preds = %0
  ret void, !dbg !296
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !297
  br i1 %1, label %3, label %2, !dbg !297

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str619, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !299
  unreachable, !dbg !299

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !300
  %5 = icmp eq i32 %4, %end, !dbg !300
  br i1 %5, label %21, label %6, !dbg !300

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !302
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #9, !dbg !302
  %8 = icmp eq i32 %start, 0, !dbg !304
  %9 = load i32* %x, align 4, !dbg !306, !tbaa !288
  br i1 %8, label %10, label %13, !dbg !304

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !306
  %12 = zext i1 %11 to i64, !dbg !306
  call void @klee_assume(i64 %12) #9, !dbg !306
  br label %19, !dbg !308

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !309
  %15 = zext i1 %14 to i64, !dbg !309
  call void @klee_assume(i64 %15) #9, !dbg !309
  %16 = load i32* %x, align 4, !dbg !311, !tbaa !288
  %17 = icmp slt i32 %16, %end, !dbg !311
  %18 = zext i1 %17 to i64, !dbg !311
  call void @klee_assume(i64 %18) #9, !dbg !311
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !312, !tbaa !288
  br label %21, !dbg !312

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !313
}

declare void @klee_assume(i64) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !314
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !314

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep4 = getelementptr i8* %srcaddr, i64 %2
  %scevgep = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep4, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end6 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep103 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !315
  %wide.load = load <16 x i8>* %3, align 1, !dbg !315
  %next.gep.sum279 = or i64 %index, 16, !dbg !315
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !315
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !315
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !315
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !315
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !315
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !315
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !315
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !315
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val5 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end6, %vector.body ]
  %resume.val7 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val5, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val7, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !314
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !315
  %12 = load i8* %src.03, align 1, !dbg !315, !tbaa !319
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !315
  store i8 %12, i8* %dest.02, align 1, !dbg !315, !tbaa !319
  %14 = icmp eq i64 %10, 0, !dbg !314
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !314, !llvm.loop !320

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !321
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
  %1 = icmp eq i8* %src, %dst, !dbg !322
  br i1 %1, label %.loopexit, label %2, !dbg !322

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !324
  br i1 %3, label %.preheader, label %18, !dbg !324

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !326
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !326

.lr.ph.preheader:                                 ; preds = %.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %5 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep11 = getelementptr i8* %src, i64 %5
  %scevgep = getelementptr i8* %dst, i64 %5
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep11, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end13 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep110 = getelementptr i8* %dst, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !326
  %wide.load = load <16 x i8>* %6, align 1, !dbg !326
  %next.gep.sum586 = or i64 %index, 16, !dbg !326
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !326
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !326
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !326
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !326
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !326
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !326
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !326
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !326
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %src, %.lr.ph.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val12 = phi i8* [ %dst, %.lr.ph.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end13, %vector.body ]
  %resume.val14 = phi i64 [ %count, %.lr.ph.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %b.04 = phi i8* [ %14, %.lr.ph ], [ %resume.val, %middle.block ]
  %a.03 = phi i8* [ %16, %.lr.ph ], [ %resume.val12, %middle.block ]
  %.02 = phi i64 [ %13, %.lr.ph ], [ %resume.val14, %middle.block ]
  %13 = add i64 %.02, -1, !dbg !326
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !326
  %15 = load i8* %b.04, align 1, !dbg !326, !tbaa !319
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !326
  store i8 %15, i8* %a.03, align 1, !dbg !326, !tbaa !319
  %17 = icmp eq i64 %13, 0, !dbg !326
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !326, !llvm.loop !329

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !330
  %20 = icmp eq i64 %count, 0, !dbg !332
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !332

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !333
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !330
  %n.vec215 = and i64 %count, -32
  %cmp.zero217 = icmp eq i64 %n.vec215, 0
  br i1 %cmp.zero217, label %middle.block210, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph9
  %bound1221 = icmp ule i8* %21, %dst
  %bound0220 = icmp ule i8* %22, %src
  %memcheck.conflict223 = and i1 %bound0220, %bound1221
  %.sum = sub i64 %19, %n.vec215
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %.sum
  %rev.ptr.ind.end229 = getelementptr i8* %dst, i64 %.sum
  %rev.ind.end231 = sub i64 %count, %n.vec215
  br i1 %memcheck.conflict223, label %middle.block210, label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.memcheck224
  %index212 = phi i64 [ %index.next234, %vector.body209 ], [ 0, %vector.memcheck224 ]
  %.sum440 = sub i64 %19, %index212
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !332
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !332
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !332
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !332
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !332
  %.sum505 = add i64 %.sum440, -31, !dbg !332
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !332
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !332
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !332
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !332
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !332
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !332
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !332
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !332
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !332
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !332
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !332
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !332
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !334

middle.block210:                                  ; preds = %vector.body209, %vector.memcheck224, %.lr.ph9
  %resume.val225 = phi i8* [ %21, %.lr.ph9 ], [ %21, %vector.memcheck224 ], [ %rev.ptr.ind.end, %vector.body209 ]
  %resume.val227 = phi i8* [ %22, %.lr.ph9 ], [ %22, %vector.memcheck224 ], [ %rev.ptr.ind.end229, %vector.body209 ]
  %resume.val230 = phi i64 [ %count, %.lr.ph9 ], [ %count, %vector.memcheck224 ], [ %rev.ind.end231, %vector.body209 ]
  %new.indc.resume.val232 = phi i64 [ 0, %.lr.ph9 ], [ 0, %vector.memcheck224 ], [ %n.vec215, %vector.body209 ]
  %cmp.n233 = icmp eq i64 %new.indc.resume.val232, %count
  br i1 %cmp.n233, label %.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211, %middle.block210
  %b.18 = phi i8* [ %33, %scalar.ph211 ], [ %resume.val225, %middle.block210 ]
  %a.17 = phi i8* [ %35, %scalar.ph211 ], [ %resume.val227, %middle.block210 ]
  %.16 = phi i64 [ %32, %scalar.ph211 ], [ %resume.val230, %middle.block210 ]
  %32 = add i64 %.16, -1, !dbg !332
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !332
  %34 = load i8* %b.18, align 1, !dbg !332, !tbaa !319
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !332
  store i8 %34, i8* %a.17, align 1, !dbg !332, !tbaa !319
  %36 = icmp eq i64 %32, 0, !dbg !332
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !332, !llvm.loop !335

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !336
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !337
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !337

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep5 = getelementptr i8* %srcaddr, i64 %2
  %scevgep4 = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep4, %srcaddr
  %bound0 = icmp uge i8* %scevgep5, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end7 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep104 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !338
  %wide.load = load <16 x i8>* %3, align 1, !dbg !338
  %next.gep.sum280 = or i64 %index, 16, !dbg !338
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !338
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !338
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !338
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !338
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !338
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !338
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !338
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !338
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val6 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end7, %vector.body ]
  %resume.val8 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val6, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val8, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !337
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !338
  %12 = load i8* %src.03, align 1, !dbg !338, !tbaa !319
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !338
  store i8 %12, i8* %dest.02, align 1, !dbg !338, !tbaa !319
  %14 = icmp eq i64 %10, 0, !dbg !337
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !337, !llvm.loop !340

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !337

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !341
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
  %1 = icmp eq i64 %count, 0, !dbg !342
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !342

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !343
  br label %3, !dbg !342

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !342
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !343
  store volatile i8 %2, i8* %a.02, align 1, !dbg !343, !tbaa !319
  %6 = icmp eq i64 %4, 0, !dbg !342
  br i1 %6, label %._crit_edge, label %3, !dbg !342

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !344
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

!llvm.dbg.cu = !{!0, !34, !45, !59, !71, !84, !104, !119, !134}
!llvm.module.flags = !{!150, !151}
!llvm.ident = !{!152, !152, !152, !152, !152, !152, !152, !152, !152}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"floodfill.c", metadata !"/home/himeshi/Projects/workspace/floodfill"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 201, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 201} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"getPix", metadata !"getPix", metadata !"", i32 221, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @getPix, null, null, metadata !2, i32 221} ; [ DW
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setPix", metadata !"setPix", metadata !"", i32 234, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @setPix, null, null, metadata !2, i32 234}
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popx", metadata !"popx", metadata !"", i32 245, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popx, null, null, metadata !2, i32 245} ; [ DW_TAG_subprogram 
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popy", metadata !"popy", metadata !"", i32 252, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popy, null, null, metadata !2, i32 252} ; [ DW_TAG_subprogram 
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fillLine", metadata !"fillLine", metadata !"", i32 258, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @fillLine, null, null, metadata !2, i3
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"push", metadata !"push", metadata !"", i32 274, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @push, null, null, metadata !2, i32 274} ; [ DW_TAG
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !8, metadata !8}
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fill", metadata !"fill", metadata !"", i32 295, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @fill, null, null, metadata !2, i32 295} ; [ DW_TAG_
!22 = metadata !{metadata !23, metadata !25, metadata !26, metadata !27, metadata !32, metadata !33}
!23 = metadata !{i32 786484, i32 0, null, metadata !"xstack", metadata !"xstack", metadata !"", metadata !5, i32 186, metadata !24, i32 0, i32 1, i32** @xstack, null} ; [ DW_TAG_variable ] [xstack] [line 186] [def]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786484, i32 0, null, metadata !"ystack", metadata !"ystack", metadata !"", metadata !5, i32 187, metadata !24, i32 0, i32 1, i32** @ystack, null} ; [ DW_TAG_variable ] [ystack] [line 187] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"stackSize", metadata !"stackSize", metadata !"", metadata !5, i32 188, metadata !8, i32 0, i32 1, i32* @stackSize, null} ; [ DW_TAG_variable ] [stackSize] [line 188] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"image", metadata !"image", metadata !"", metadata !5, i32 189, metadata !28, i32 0, i32 1, [3 x [2 x i32]]* @image, null} ; [ DW_TAG_variable ] [image] [line 189] [def]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!29 = metadata !{metadata !30, metadata !31}
!30 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!32 = metadata !{i32 786484, i32 0, null, metadata !"targetColor", metadata !"targetColor", metadata !"", metadata !5, i32 190, metadata !8, i32 0, i32 1, i32* @targetColor, null} ; [ DW_TAG_variable ] [targetColor] [line 190] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"maxStackSize", metadata !"maxStackSize", metadata !"", metadata !5, i32 191, metadata !8, i32 0, i32 1, i32* @maxStackSize, null} ; [ DW_TAG_variable ] [maxStackSize] [line 191] [def]
!34 = metadata !{i32 786449, metadata !35, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !36, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!35 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786478, metadata !38, metadata !39, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!38 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!39 = metadata !{i32 786473, metadata !38}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !42}
!42 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786689, metadata !37, metadata !"z", metadata !39, i32 16777228, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!45 = metadata !{i32 786449, metadata !46, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !47, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!46 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786478, metadata !49, metadata !50, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !56, i32 13} ; [ 
!49 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!50 = metadata !{i32 786473, metadata !49}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !8, metadata !53}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!55 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786689, metadata !48, metadata !"name", metadata !50, i32 16777229, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!58 = metadata !{i32 786688, metadata !48, metadata !"x", metadata !50, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!59 = metadata !{i32 786449, metadata !60, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !61, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!60 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786478, metadata !63, metadata !64, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!63 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!64 = metadata !{i32 786473, metadata !63}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{null, metadata !67, metadata !67}
!67 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786689, metadata !62, metadata !"bitWidth", metadata !64, i32 16777236, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!70 = metadata !{i32 786689, metadata !62, metadata !"shift", metadata !64, i32 33554452, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!71 = metadata !{i32 786449, metadata !72, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !73, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!72 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786478, metadata !75, metadata !76, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!75 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!76 = metadata !{i32 786473, metadata !75}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!77 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !8, metadata !8, metadata !8, metadata !53}
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83}
!80 = metadata !{i32 786689, metadata !74, metadata !"start", metadata !76, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!81 = metadata !{i32 786689, metadata !74, metadata !"end", metadata !76, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!82 = metadata !{i32 786689, metadata !74, metadata !"name", metadata !76, i32 50331661, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!83 = metadata !{i32 786688, metadata !74, metadata !"x", metadata !76, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!84 = metadata !{i32 786449, metadata !85, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !86, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!85 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786478, metadata !88, metadata !89, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !97, i32 12} 
!88 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!89 = metadata !{i32 786473, metadata !88}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!90 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{metadata !92, metadata !92, metadata !93, metadata !95}
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786454, metadata !88, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!96 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !103}
!98 = metadata !{i32 786689, metadata !87, metadata !"destaddr", metadata !89, i32 16777228, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!99 = metadata !{i32 786689, metadata !87, metadata !"srcaddr", metadata !89, i32 33554444, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!100 = metadata !{i32 786689, metadata !87, metadata !"len", metadata !89, i32 50331660, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!101 = metadata !{i32 786688, metadata !87, metadata !"dest", metadata !89, i32 13, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!103 = metadata !{i32 786688, metadata !87, metadata !"src", metadata !89, i32 14, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!104 = metadata !{i32 786449, metadata !105, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !106, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!105 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786478, metadata !108, metadata !109, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !113, 
!108 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!109 = metadata !{i32 786473, metadata !108}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !92, metadata !92, metadata !93, metadata !112}
!112 = metadata !{i32 786454, metadata !108, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!114 = metadata !{i32 786689, metadata !107, metadata !"dst", metadata !109, i32 16777228, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!115 = metadata !{i32 786689, metadata !107, metadata !"src", metadata !109, i32 33554444, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!116 = metadata !{i32 786689, metadata !107, metadata !"count", metadata !109, i32 50331660, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!117 = metadata !{i32 786688, metadata !107, metadata !"a", metadata !109, i32 13, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!118 = metadata !{i32 786688, metadata !107, metadata !"b", metadata !109, i32 14, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!119 = metadata !{i32 786449, metadata !120, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !121, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!120 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786478, metadata !123, metadata !124, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !128, 
!123 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!124 = metadata !{i32 786473, metadata !123}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!125 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !92, metadata !92, metadata !93, metadata !127}
!127 = metadata !{i32 786454, metadata !123, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!129 = metadata !{i32 786689, metadata !122, metadata !"destaddr", metadata !124, i32 16777227, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!130 = metadata !{i32 786689, metadata !122, metadata !"srcaddr", metadata !124, i32 33554443, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!131 = metadata !{i32 786689, metadata !122, metadata !"len", metadata !124, i32 50331659, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!132 = metadata !{i32 786688, metadata !122, metadata !"dest", metadata !124, i32 12, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!133 = metadata !{i32 786688, metadata !122, metadata !"src", metadata !124, i32 13, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!134 = metadata !{i32 786449, metadata !135, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !136, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!135 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786478, metadata !138, metadata !139, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !143, i32
!138 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!139 = metadata !{i32 786473, metadata !138}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!140 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !92, metadata !92, metadata !8, metadata !142}
!142 = metadata !{i32 786454, metadata !138, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147}
!144 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !139, i32 16777227, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!145 = metadata !{i32 786689, metadata !137, metadata !"s", metadata !139, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!146 = metadata !{i32 786689, metadata !137, metadata !"count", metadata !139, i32 50331659, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!147 = metadata !{i32 786688, metadata !137, metadata !"a", metadata !139, i32 12, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!150 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!151 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!152 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!153 = metadata !{i32 204, i32 0, metadata !4, null}
!154 = metadata !{i32 205, i32 0, metadata !4, null}
!155 = metadata !{i32 207, i32 0, metadata !4, null}
!156 = metadata !{i32 208, i32 0, metadata !4, null}
!157 = metadata !{i32 212, i32 0, metadata !4, null}
!158 = metadata !{i32 213, i32 0, metadata !4, null}
!159 = metadata !{i32 214, i32 0, metadata !4, null}
!160 = metadata !{i32 215, i32 0, metadata !4, null}
!161 = metadata !{i32 217, i32 0, metadata !4, null}
!162 = metadata !{i32 219, i32 0, metadata !4, null}
!163 = metadata !{i32 296, i32 0, metadata !21, null}
!164 = metadata !{i32 297, i32 0, metadata !21, null}
!165 = metadata !{i32 299, i32 0, metadata !21, null}
!166 = metadata !{i32 301, i32 0, metadata !21, null}
!167 = metadata !{i32 303, i32 0, metadata !21, null}
!168 = metadata !{i32 305, i32 0, metadata !21, null}
!169 = metadata !{i32 307, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !21, i32 307, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!171 = metadata !{i32 308, i32 0, metadata !170, null}
!172 = metadata !{i32 310, i32 0, metadata !21, null}
!173 = metadata !{i32 311, i32 0, metadata !21, null}
!174 = metadata !{i32 315, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !21, i32 315, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!176 = metadata !{i32 316, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !175, i32 315, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!178 = metadata !{i32 317, i32 0, metadata !177, null}
!179 = metadata !{i32 318, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !177, i32 318, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!181 = metadata !{i32 319, i32 0, metadata !180, null}
!182 = metadata !{i32 320, i32 0, metadata !177, null}
!183 = metadata !{i32 322, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !177, i32 322, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!185 = metadata !{i32 323, i32 0, metadata !177, null}
!186 = metadata !{i32 324, i32 0, metadata !177, null}
!187 = metadata !{i32 326, i32 0, metadata !177, null}
!188 = metadata !{i32 327, i32 0, metadata !177, null}
!189 = metadata !{i32 329, i32 0, metadata !177, null}
!190 = metadata !{i32 330, i32 0, metadata !177, null}
!191 = metadata !{i32 332, i32 0, metadata !177, null}
!192 = metadata !{i32 334, i32 0, metadata !177, null}
!193 = metadata !{i32 337, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !177, i32 337, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!195 = metadata !{i32 338, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !197, i32 338, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!197 = metadata !{i32 786443, metadata !1, metadata !194, i32 337, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!198 = metadata !{i32 339, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !196, i32 338, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!200 = metadata !{i32 340, i32 0, metadata !199, null}
!201 = metadata !{i32 341, i32 0, metadata !199, null}
!202 = metadata !{i32 341, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !196, i32 341, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!204 = metadata !{i32 342, i32 0, metadata !203, null}
!205 = metadata !{i32 345, i32 0, metadata !177, null}
!206 = metadata !{i32 346, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !177, i32 346, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!208 = metadata !{i32 347, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !210, i32 347, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!210 = metadata !{i32 786443, metadata !1, metadata !207, i32 346, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!211 = metadata !{i32 348, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !209, i32 347, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!213 = metadata !{i32 349, i32 0, metadata !212, null}
!214 = metadata !{i32 350, i32 0, metadata !212, null}
!215 = metadata !{i32 350, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !209, i32 350, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!217 = metadata !{i32 351, i32 0, metadata !216, null}
!218 = metadata !{i32 352, i32 0, metadata !216, null}
!219 = metadata !{i32 357, i32 0, metadata !21, null}
!220 = metadata !{i32 358, i32 0, metadata !21, null}
!221 = metadata !{i32 222, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !9, i32 222, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!223 = metadata !{i32 223, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !222, i32 222, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!225 = metadata !{i32 224, i32 0, metadata !224, null}
!226 = metadata !{i32 225, i32 0, metadata !224, null}
!227 = metadata !{i32 229, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !222, i32 226, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!229 = metadata !{i32 230, i32 0, metadata !228, null}
!230 = metadata !{i32 232, i32 0, metadata !9, null}
!231 = metadata !{i32 235, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !12, i32 235, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!233 = metadata !{i32 238, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !232, i32 237, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!235 = metadata !{i32 240, i32 0, metadata !12, null}
!236 = metadata !{i32 241, i32 0, metadata !12, null}
!237 = metadata !{i32 242, i32 0, metadata !12, null}
!238 = metadata !{i32 243, i32 0, metadata !12, null}
!239 = metadata !{i32 246, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !15, i32 246, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!241 = metadata !{i32 247, i32 0, metadata !240, null}
!242 = metadata !{i32 249, i32 0, metadata !240, null}
!243 = metadata !{i32 250, i32 0, metadata !15, null}
!244 = metadata !{i32 253, i32 0, metadata !16, null}
!245 = metadata !{i32 254, i32 0, metadata !16, null}
!246 = metadata !{i32 255, i32 0, metadata !16, null}
!247 = metadata !{i32 260, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !17, i32 260, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!249 = metadata !{i32 261, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 260, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!251 = metadata !{i32 262, i32 0, metadata !250, null}
!252 = metadata !{i32 263, i32 0, metadata !250, null}
!253 = metadata !{i32 264, i32 0, metadata !250, null}
!254 = metadata !{i32 265, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !17, i32 265, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!256 = metadata !{i32 266, i32 0, metadata !255, null}
!257 = metadata !{i32 267, i32 0, metadata !17, null}
!258 = metadata !{i32 268, i32 0, metadata !17, null}
!259 = metadata !{i32 269, i32 0, metadata !17, null}
!260 = metadata !{i32 270, i32 0, metadata !17, null}
!261 = metadata !{i32 271, i32 0, metadata !17, null}
!262 = metadata !{i32 272, i32 0, metadata !17, null}
!263 = metadata !{i32 275, i32 0, metadata !18, null}
!264 = metadata !{i32 277, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !18, i32 277, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!266 = metadata !{i32 278, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !265, i32 277, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!268 = metadata !{i32 279, i32 0, metadata !267, null}
!269 = metadata !{i32 280, i32 0, metadata !267, null}
!270 = metadata !{i32 281, i32 0, metadata !267, null}
!271 = metadata !{i32 282, i32 0, metadata !267, null}
!272 = metadata !{i32 283, i32 0, metadata !267, null}
!273 = metadata !{i32 284, i32 0, metadata !267, null}
!274 = metadata !{i32 285, i32 0, metadata !267, null}
!275 = metadata !{i32 286, i32 0, metadata !18, null}
!276 = metadata !{i32 287, i32 0, metadata !18, null}
!277 = metadata !{i32 289, i32 0, metadata !18, null}
!278 = metadata !{i32 290, i32 0, metadata !18, null}
!279 = metadata !{i32 291, i32 0, metadata !18, null}
!280 = metadata !{i32 292, i32 0, metadata !18, null}
!281 = metadata !{i32 293, i32 0, metadata !18, null}
!282 = metadata !{i32 13, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !38, metadata !37, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!284 = metadata !{i32 14, i32 0, metadata !283, null}
!285 = metadata !{i32 15, i32 0, metadata !37, null}
!286 = metadata !{i32 15, i32 0, metadata !48, null}
!287 = metadata !{i32 16, i32 0, metadata !48, null}
!288 = metadata !{metadata !289, metadata !289, i64 0}
!289 = metadata !{metadata !"int", metadata !290, i64 0}
!290 = metadata !{metadata !"omnipotent char", metadata !291, i64 0}
!291 = metadata !{metadata !"Simple C/C++ TBAA"}
!292 = metadata !{i32 21, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !63, metadata !62, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!294 = metadata !{i32 27, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !63, metadata !293, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!296 = metadata !{i32 29, i32 0, metadata !62, null}
!297 = metadata !{i32 16, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !75, metadata !74, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!299 = metadata !{i32 17, i32 0, metadata !298, null}
!300 = metadata !{i32 19, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !75, metadata !74, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!302 = metadata !{i32 22, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !75, metadata !301, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!304 = metadata !{i32 25, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !75, metadata !303, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!306 = metadata !{i32 26, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !75, metadata !305, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!308 = metadata !{i32 27, i32 0, metadata !307, null}
!309 = metadata !{i32 28, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !75, metadata !305, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!311 = metadata !{i32 29, i32 0, metadata !310, null}
!312 = metadata !{i32 32, i32 0, metadata !303, null}
!313 = metadata !{i32 34, i32 0, metadata !74, null}
!314 = metadata !{i32 16, i32 0, metadata !87, null}
!315 = metadata !{i32 17, i32 0, metadata !87, null}
!316 = metadata !{metadata !316, metadata !317, metadata !318}
!317 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!318 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!319 = metadata !{metadata !290, metadata !290, i64 0}
!320 = metadata !{metadata !320, metadata !317, metadata !318}
!321 = metadata !{i32 18, i32 0, metadata !87, null}
!322 = metadata !{i32 16, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !108, metadata !107, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!324 = metadata !{i32 19, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !108, metadata !107, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!326 = metadata !{i32 20, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !108, metadata !325, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!328 = metadata !{metadata !328, metadata !317, metadata !318}
!329 = metadata !{metadata !329, metadata !317, metadata !318}
!330 = metadata !{i32 22, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !108, metadata !325, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!332 = metadata !{i32 24, i32 0, metadata !331, null}
!333 = metadata !{i32 23, i32 0, metadata !331, null}
!334 = metadata !{metadata !334, metadata !317, metadata !318}
!335 = metadata !{metadata !335, metadata !317, metadata !318}
!336 = metadata !{i32 28, i32 0, metadata !107, null}
!337 = metadata !{i32 15, i32 0, metadata !122, null}
!338 = metadata !{i32 16, i32 0, metadata !122, null}
!339 = metadata !{metadata !339, metadata !317, metadata !318}
!340 = metadata !{metadata !340, metadata !317, metadata !318}
!341 = metadata !{i32 17, i32 0, metadata !122, null}
!342 = metadata !{i32 13, i32 0, metadata !137, null}
!343 = metadata !{i32 14, i32 0, metadata !137, null}
!344 = metadata !{i32 15, i32 0, metadata !137, null}
