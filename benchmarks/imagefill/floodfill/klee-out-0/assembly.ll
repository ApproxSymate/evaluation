; ModuleID = 'floodfill.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@image = common global [2 x [2 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"__arr32__image\00", align 1
@targetColor = common global i32 0, align 4
@.str1 = private unnamed_addr constant [12 x i8] c"targetColor\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"image_err\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"targetColor_err\00", align 1
@stackSize = common global i32 0, align 4
@maxStackSize = common global i32 0, align 4
@xstack = common global i32* null, align 8
@ystack = common global i32* null, align 8
@.str4 = private unnamed_addr constant [12 x i8] c"popx_return\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"fill_inScanLine\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"fill_i\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str310 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str611 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @klee_make_symbolic(i8* bitcast ([2 x [2 x i32]]* @image to i8*), i64 16, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)), !dbg !152
  call void @klee_make_symbolic(i8* bitcast (i32* @targetColor to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !153
  call void @klee_track_error(i8* bitcast ([2 x [2 x i32]]* @image to i8*), i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !154
  call void @klee_track_error(i8* bitcast (i32* @targetColor to i8*), i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !155
  store i32 0, i32* @stackSize, align 4, !dbg !156
  store i32 1, i32* @maxStackSize, align 4, !dbg !157
  %1 = load i32* @maxStackSize, align 4, !dbg !158
  %2 = sext i32 %1 to i64, !dbg !158
  %3 = mul i64 4, %2, !dbg !158
  %4 = call noalias i8* @malloc(i64 %3) #4, !dbg !158
  %5 = bitcast i8* %4 to i32*, !dbg !158
  store i32* %5, i32** @xstack, align 8, !dbg !158
  %6 = load i32* @maxStackSize, align 4, !dbg !159
  %7 = sext i32 %6 to i64, !dbg !159
  %8 = mul i64 4, %7, !dbg !159
  %9 = call noalias i8* @malloc(i64 %8) #4, !dbg !159
  %10 = bitcast i8* %9 to i32*, !dbg !159
  store i32* %10, i32** @ystack, align 8, !dbg !159
  %11 = call i32 @fill(i32 0, i32 0), !dbg !160
  ret i32 0, !dbg !161
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
  store i32 2, i32* %width, align 4, !dbg !162
  store i32 2, i32* %height, align 4, !dbg !163
  %4 = load i32* %2, align 4, !dbg !164
  %5 = load i32* %3, align 4, !dbg !164
  %6 = call i32 @getPix(i32 %4, i32 %5), !dbg !164
  store i32 %6, i32* %color, align 4, !dbg !164
  %7 = load i32* %2, align 4, !dbg !165
  %8 = load i32* %2, align 4, !dbg !165
  %9 = load i32* %3, align 4, !dbg !165
  call void @fillLine(i32 %7, i32 %8, i32 %9), !dbg !165
  %10 = load i32* %2, align 4, !dbg !166
  %11 = load i32* %3, align 4, !dbg !166
  %12 = call i32 @getPix(i32 %10, i32 %11), !dbg !166
  store i32 %12, i32* %newColor, align 4, !dbg !166
  %13 = load i32* %2, align 4, !dbg !167
  %14 = load i32* %3, align 4, !dbg !167
  %15 = load i32* %color, align 4, !dbg !167
  call void @setPix(i32 %13, i32 %14, i32 %15), !dbg !167
  %16 = load i32* %color, align 4, !dbg !168
  %17 = load i32* %newColor, align 4, !dbg !168
  %18 = icmp eq i32 %16, %17, !dbg !168
  br i1 %18, label %19, label %20, !dbg !168

; <label>:19                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !170
  br label %168, !dbg !170

; <label>:20                                      ; preds = %0
  store i32 0, i32* @stackSize, align 4, !dbg !171
  %21 = load i32* %2, align 4, !dbg !172
  %22 = load i32* %3, align 4, !dbg !172
  call void @push(i32 %21, i32 %22), !dbg !172
  store i32 0, i32* %i, align 4, !dbg !173
  br label %23, !dbg !173

; <label>:23                                      ; preds = %164, %20
  %24 = load i32* %i, align 4, !dbg !173
  %25 = icmp slt i32 %24, 9, !dbg !173
  br i1 %25, label %26, label %167, !dbg !173

; <label>:26                                      ; preds = %23
  %27 = call i32 @popx(), !dbg !175
  store i32 %27, i32* %2, align 4, !dbg !175
  %28 = load i32* %2, align 4, !dbg !177
  %29 = sext i32 %28 to i64, !dbg !177
  call void @klee_bound_error(i64 %29, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !177
  %30 = load i32* %2, align 4, !dbg !178
  %31 = icmp eq i32 %30, -1, !dbg !178
  br i1 %31, label %32, label %33, !dbg !178

; <label>:32                                      ; preds = %26
  store i32 1, i32* %1, !dbg !180
  br label %168, !dbg !180

; <label>:33                                      ; preds = %26
  %34 = call i32 @popy(), !dbg !181
  store i32 %34, i32* %3, align 4, !dbg !181
  %35 = load i32* %2, align 4, !dbg !182
  %36 = load i32* %3, align 4, !dbg !182
  %37 = call i32 @getPix(i32 %35, i32 %36), !dbg !182
  %38 = load i32* %color, align 4, !dbg !182
  %39 = icmp ne i32 %37, %38, !dbg !182
  br i1 %39, label %164, label %40, !dbg !182

; <label>:40                                      ; preds = %33
  %41 = load i32* %2, align 4, !dbg !184
  store i32 %41, i32* %x1, align 4, !dbg !184
  %42 = load i32* %2, align 4, !dbg !185
  store i32 %42, i32* %x2, align 4, !dbg !185
  br label %43, !dbg !186

; <label>:43                                      ; preds = %55, %40
  %44 = load i32* %x1, align 4, !dbg !186
  %45 = load i32* %3, align 4, !dbg !186
  %46 = call i32 @getPix(i32 %44, i32 %45), !dbg !186
  %47 = load i32* %color, align 4, !dbg !186
  %48 = icmp eq i32 %46, %47, !dbg !186
  br i1 %48, label %49, label %52, !dbg !186

; <label>:49                                      ; preds = %43
  %50 = load i32* %x1, align 4, !dbg !186
  %51 = icmp sge i32 %50, 0, !dbg !186
  br label %52

; <label>:52                                      ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  %54 = load i32* %x1, align 4, !dbg !186
  br i1 %53, label %55, label %57

; <label>:55                                      ; preds = %52
  %56 = add nsw i32 %54, -1, !dbg !186
  store i32 %56, i32* %x1, align 4, !dbg !186
  br label %43, !dbg !186

; <label>:57                                      ; preds = %52
  %58 = add nsw i32 %54, 1, !dbg !187
  store i32 %58, i32* %x1, align 4, !dbg !187
  br label %59, !dbg !188

; <label>:59                                      ; preds = %72, %57
  %60 = load i32* %x2, align 4, !dbg !188
  %61 = load i32* %3, align 4, !dbg !188
  %62 = call i32 @getPix(i32 %60, i32 %61), !dbg !188
  %63 = load i32* %color, align 4, !dbg !188
  %64 = icmp eq i32 %62, %63, !dbg !188
  br i1 %64, label %65, label %69, !dbg !188

; <label>:65                                      ; preds = %59
  %66 = load i32* %x2, align 4, !dbg !188
  %67 = load i32* %width, align 4, !dbg !188
  %68 = icmp slt i32 %66, %67, !dbg !188
  br label %69

; <label>:69                                      ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  %71 = load i32* %x2, align 4, !dbg !188
  br i1 %70, label %72, label %74

; <label>:72                                      ; preds = %69
  %73 = add nsw i32 %71, 1, !dbg !188
  store i32 %73, i32* %x2, align 4, !dbg !188
  br label %59, !dbg !188

; <label>:74                                      ; preds = %69
  %75 = add nsw i32 %71, -1, !dbg !189
  store i32 %75, i32* %x2, align 4, !dbg !189
  %76 = load i32* %x1, align 4, !dbg !190
  %77 = load i32* %x2, align 4, !dbg !190
  %78 = load i32* %3, align 4, !dbg !190
  call void @fillLine(i32 %76, i32 %77, i32 %78), !dbg !190
  store i32 0, i32* %inScanLine, align 4, !dbg !191
  %79 = load i32* %inScanLine, align 4, !dbg !192
  %80 = sext i32 %79 to i64, !dbg !192
  call void @klee_bound_error(i64 %80, i8* getelementptr inbounds ([16 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !192
  %81 = load i32* %i1, align 4, !dbg !193
  %82 = sext i32 %81 to i64, !dbg !193
  call void @klee_bound_error(i64 %82, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !193
  %83 = load i32* %x1, align 4, !dbg !194
  store i32 %83, i32* %i1, align 4, !dbg !194
  br label %84, !dbg !194

; <label>:84                                      ; preds = %117, %74
  %85 = load i32* %i1, align 4, !dbg !194
  %86 = load i32* %x2, align 4, !dbg !194
  %87 = icmp sle i32 %85, %86, !dbg !194
  br i1 %87, label %88, label %120, !dbg !194

; <label>:88                                      ; preds = %84
  %89 = load i32* %inScanLine, align 4, !dbg !196
  %90 = icmp eq i32 %89, 0, !dbg !196
  %91 = load i32* %3, align 4, !dbg !196
  %92 = icmp sgt i32 %91, 0, !dbg !196
  %or.cond = and i1 %90, %92, !dbg !196
  br i1 %or.cond, label %93, label %104, !dbg !196

; <label>:93                                      ; preds = %88
  %94 = load i32* %i1, align 4, !dbg !196
  %95 = load i32* %3, align 4, !dbg !196
  %96 = sub nsw i32 %95, 1, !dbg !196
  %97 = call i32 @getPix(i32 %94, i32 %96), !dbg !196
  %98 = load i32* %color, align 4, !dbg !196
  %99 = icmp eq i32 %97, %98, !dbg !196
  br i1 %99, label %100, label %104, !dbg !196

; <label>:100                                     ; preds = %93
  %101 = load i32* %i1, align 4, !dbg !199
  %102 = load i32* %3, align 4, !dbg !199
  %103 = sub nsw i32 %102, 1, !dbg !199
  call void @push(i32 %101, i32 %103), !dbg !199
  store i32 1, i32* %inScanLine, align 4, !dbg !201
  br label %117, !dbg !202

; <label>:104                                     ; preds = %88, %93
  %105 = load i32* %inScanLine, align 4, !dbg !203
  %106 = icmp ne i32 %105, 0, !dbg !203
  %107 = load i32* %3, align 4, !dbg !203
  %108 = icmp sgt i32 %107, 0, !dbg !203
  %or.cond3 = and i1 %106, %108, !dbg !203
  br i1 %or.cond3, label %109, label %117, !dbg !203

; <label>:109                                     ; preds = %104
  %110 = load i32* %i1, align 4, !dbg !203
  %111 = load i32* %3, align 4, !dbg !203
  %112 = sub nsw i32 %111, 1, !dbg !203
  %113 = call i32 @getPix(i32 %110, i32 %112), !dbg !203
  %114 = load i32* %color, align 4, !dbg !203
  %115 = icmp ne i32 %113, %114, !dbg !203
  br i1 %115, label %116, label %117, !dbg !203

; <label>:116                                     ; preds = %109
  store i32 0, i32* %inScanLine, align 4, !dbg !205
  br label %117, !dbg !205

; <label>:117                                     ; preds = %100, %116, %109, %104
  %118 = load i32* %i1, align 4, !dbg !194
  %119 = add nsw i32 %118, 1, !dbg !194
  store i32 %119, i32* %i1, align 4, !dbg !194
  br label %84, !dbg !194

; <label>:120                                     ; preds = %84
  store i32 0, i32* %inScanLine, align 4, !dbg !206
  %121 = load i32* %x1, align 4, !dbg !207
  store i32 %121, i32* %i1, align 4, !dbg !207
  br label %122, !dbg !207

; <label>:122                                     ; preds = %161, %120
  %123 = load i32* %i1, align 4, !dbg !207
  %124 = load i32* %x2, align 4, !dbg !207
  %125 = icmp sle i32 %123, %124, !dbg !207
  br i1 %125, label %126, label %164, !dbg !207

; <label>:126                                     ; preds = %122
  %127 = load i32* %inScanLine, align 4, !dbg !209
  %128 = icmp ne i32 %127, 0, !dbg !209
  br i1 %128, label %145, label %129, !dbg !209

; <label>:129                                     ; preds = %126
  %130 = load i32* %3, align 4, !dbg !209
  %131 = load i32* %height, align 4, !dbg !209
  %132 = sub nsw i32 %131, 1, !dbg !209
  %133 = icmp slt i32 %130, %132, !dbg !209
  br i1 %133, label %134, label %145, !dbg !209

; <label>:134                                     ; preds = %129
  %135 = load i32* %i1, align 4, !dbg !209
  %136 = load i32* %3, align 4, !dbg !209
  %137 = add nsw i32 %136, 1, !dbg !209
  %138 = call i32 @getPix(i32 %135, i32 %137), !dbg !209
  %139 = load i32* %color, align 4, !dbg !209
  %140 = icmp eq i32 %138, %139, !dbg !209
  br i1 %140, label %141, label %145, !dbg !209

; <label>:141                                     ; preds = %134
  %142 = load i32* %i1, align 4, !dbg !212
  %143 = load i32* %3, align 4, !dbg !212
  %144 = add nsw i32 %143, 1, !dbg !212
  call void @push(i32 %142, i32 %144), !dbg !212
  store i32 1, i32* %inScanLine, align 4, !dbg !214
  br label %161, !dbg !215

; <label>:145                                     ; preds = %134, %129, %126
  %146 = load i32* %inScanLine, align 4, !dbg !216
  %147 = icmp ne i32 %146, 0, !dbg !216
  br i1 %147, label %148, label %161, !dbg !216

; <label>:148                                     ; preds = %145
  %149 = load i32* %3, align 4, !dbg !216
  %150 = load i32* %height, align 4, !dbg !216
  %151 = sub nsw i32 %150, 1, !dbg !216
  %152 = icmp slt i32 %149, %151, !dbg !216
  br i1 %152, label %153, label %161, !dbg !216

; <label>:153                                     ; preds = %148
  %154 = load i32* %i1, align 4, !dbg !218
  %155 = load i32* %3, align 4, !dbg !218
  %156 = add nsw i32 %155, 1, !dbg !218
  %157 = call i32 @getPix(i32 %154, i32 %156), !dbg !218
  %158 = load i32* %color, align 4, !dbg !218
  %159 = icmp ne i32 %157, %158, !dbg !218
  br i1 %159, label %160, label %161, !dbg !218

; <label>:160                                     ; preds = %153
  store i32 0, i32* %inScanLine, align 4, !dbg !219
  br label %161, !dbg !219

; <label>:161                                     ; preds = %141, %160, %153, %148, %145
  %162 = load i32* %i1, align 4, !dbg !207
  %163 = add nsw i32 %162, 1, !dbg !207
  store i32 %163, i32* %i1, align 4, !dbg !207
  br label %122, !dbg !207

; <label>:164                                     ; preds = %122, %33
  %165 = load i32* %i, align 4, !dbg !173
  %166 = add nsw i32 %165, 1, !dbg !173
  store i32 %166, i32* %i, align 4, !dbg !173
  br label %23, !dbg !173

; <label>:167                                     ; preds = %23
  store i32 1, i32* %1, !dbg !220
  br label %168, !dbg !220

; <label>:168                                     ; preds = %167, %32, %19
  %169 = load i32* %1, !dbg !221
  ret i32 %169, !dbg !221
}

; Function Attrs: nounwind uwtable
define i32 @getPix(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  %4 = load i32* %2, align 4, !dbg !222
  %5 = icmp slt i32 %4, 0, !dbg !222
  %6 = load i32* %2, align 4, !dbg !222
  %7 = icmp sge i32 %6, 2, !dbg !222
  %or.cond = or i1 %5, %7, !dbg !222
  %8 = load i32* %3, align 4, !dbg !222
  %9 = icmp slt i32 %8, 0, !dbg !222
  %or.cond3 = or i1 %or.cond, %9, !dbg !222
  %10 = load i32* %3, align 4, !dbg !222
  %11 = icmp sge i32 %10, 2, !dbg !222
  %or.cond5 = or i1 %or.cond3, %11, !dbg !222
  br i1 %or.cond5, label %12, label %13, !dbg !222

; <label>:12                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !224
  br label %21, !dbg !224

; <label>:13                                      ; preds = %0
  %14 = load i32* %3, align 4, !dbg !226
  %15 = sext i32 %14 to i64, !dbg !226
  %16 = load i32* %2, align 4, !dbg !226
  %17 = sext i32 %16 to i64, !dbg !226
  %18 = getelementptr inbounds [2 x [2 x i32]]* @image, i32 0, i64 %17, !dbg !226
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 %15, !dbg !226
  %20 = load i32* %19, align 4, !dbg !226
  store i32 %20, i32* %1, !dbg !226
  br label %21, !dbg !226

; <label>:21                                      ; preds = %13, %12
  %22 = load i32* %1, !dbg !228
  ret i32 %22, !dbg !228
}

; Function Attrs: nounwind uwtable
define void @setPix(i32 %x, i32 %y, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32* %1, align 4, !dbg !229
  %5 = icmp slt i32 %4, 0, !dbg !229
  %6 = load i32* %1, align 4, !dbg !229
  %7 = icmp sge i32 %6, 2, !dbg !229
  %or.cond = or i1 %5, %7, !dbg !229
  %8 = load i32* %2, align 4, !dbg !229
  %9 = icmp slt i32 %8, 0, !dbg !229
  %or.cond3 = or i1 %or.cond, %9, !dbg !229
  %10 = load i32* %2, align 4, !dbg !229
  %11 = icmp sge i32 %10, 2, !dbg !229
  %or.cond5 = or i1 %or.cond3, %11, !dbg !229
  br i1 %or.cond5, label %20, label %12, !dbg !229

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !231
  %14 = load i32* %2, align 4, !dbg !231
  %15 = sext i32 %14 to i64, !dbg !231
  %16 = load i32* %1, align 4, !dbg !231
  %17 = sext i32 %16 to i64, !dbg !231
  %18 = getelementptr inbounds [2 x [2 x i32]]* @image, i32 0, i64 %17, !dbg !231
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 %15, !dbg !231
  store i32 %13, i32* %19, align 4, !dbg !231
  br label %20

; <label>:20                                      ; preds = %0, %12
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
  %5 = load i32* %2, align 4, !dbg !242
  %6 = icmp sgt i32 %4, %5, !dbg !242
  br i1 %6, label %7, label %11, !dbg !242

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4, !dbg !244
  store i32 %8, i32* %t, align 4, !dbg !244
  %9 = load i32* %2, align 4, !dbg !246
  store i32 %9, i32* %1, align 4, !dbg !246
  %10 = load i32* %t, align 4, !dbg !247
  store i32 %10, i32* %2, align 4, !dbg !247
  br label %11, !dbg !248

; <label>:11                                      ; preds = %7, %0
  %12 = load i32* %1, align 4, !dbg !249
  store i32 %12, i32* %x, align 4, !dbg !249
  br label %13, !dbg !249

; <label>:13                                      ; preds = %17, %11
  %14 = load i32* %x, align 4, !dbg !249
  %15 = load i32* %2, align 4, !dbg !249
  %16 = icmp sle i32 %14, %15, !dbg !249
  br i1 %16, label %17, label %23, !dbg !249

; <label>:17                                      ; preds = %13
  %18 = load i32* %x, align 4, !dbg !251
  %19 = load i32* %3, align 4, !dbg !251
  %20 = load i32* @targetColor, align 4, !dbg !251
  call void @setPix(i32 %18, i32 %19, i32 %20), !dbg !251
  %21 = load i32* %x, align 4, !dbg !249
  %22 = add nsw i32 %21, 1, !dbg !249
  store i32 %22, i32* %x, align 4, !dbg !249
  br label %13, !dbg !249

; <label>:23                                      ; preds = %13
  ret void, !dbg !252
}

; Function Attrs: nounwind uwtable
define void @push(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %newXStack = alloca i32*, align 8
  %newYStack = alloca i32*, align 8
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  %3 = load i32* @stackSize, align 4, !dbg !253
  %4 = add nsw i32 %3, 1, !dbg !253
  store i32 %4, i32* @stackSize, align 4, !dbg !253
  %5 = load i32* @stackSize, align 4, !dbg !254
  %6 = icmp eq i32 %5, 1, !dbg !254
  br i1 %6, label %7, label %40, !dbg !254

; <label>:7                                       ; preds = %0
  %8 = load i32* @maxStackSize, align 4, !dbg !256
  %9 = sext i32 %8 to i64, !dbg !256
  %10 = mul i64 4, %9, !dbg !256
  %11 = mul i64 %10, 2, !dbg !256
  %12 = call noalias i8* @malloc(i64 %11) #4, !dbg !256
  %13 = bitcast i8* %12 to i32*, !dbg !256
  store i32* %13, i32** %newXStack, align 8, !dbg !256
  %14 = load i32* @maxStackSize, align 4, !dbg !258
  %15 = sext i32 %14 to i64, !dbg !258
  %16 = mul i64 4, %15, !dbg !258
  %17 = mul i64 %16, 2, !dbg !258
  %18 = call noalias i8* @malloc(i64 %17) #4, !dbg !258
  %19 = bitcast i8* %18 to i32*, !dbg !258
  store i32* %19, i32** %newYStack, align 8, !dbg !258
  %20 = load i32** %newXStack, align 8, !dbg !259
  %21 = bitcast i32* %20 to i8*, !dbg !259
  %22 = load i32** @xstack, align 8, !dbg !259
  %23 = bitcast i32* %22 to i8*, !dbg !259
  %24 = load i32* @maxStackSize, align 4, !dbg !259
  %25 = sext i32 %24 to i64, !dbg !259
  %26 = mul i64 4, %25, !dbg !259
  %27 = call i8* @memcpy(i8* %21, i8* %23, i64 %26)
  %28 = load i32** %newYStack, align 8, !dbg !260
  %29 = bitcast i32* %28 to i8*, !dbg !260
  %30 = load i32** @ystack, align 8, !dbg !260
  %31 = bitcast i32* %30 to i8*, !dbg !260
  %32 = load i32* @maxStackSize, align 4, !dbg !260
  %33 = sext i32 %32 to i64, !dbg !260
  %34 = mul i64 4, %33, !dbg !260
  %35 = call i8* @memcpy(i8* %29, i8* %31, i64 %34)
  %36 = load i32** %newXStack, align 8, !dbg !261
  store i32* %36, i32** @xstack, align 8, !dbg !261
  %37 = load i32** %newYStack, align 8, !dbg !262
  store i32* %37, i32** @ystack, align 8, !dbg !262
  %38 = load i32* @maxStackSize, align 4, !dbg !263
  %39 = mul nsw i32 %38, 2, !dbg !263
  store i32 %39, i32* @maxStackSize, align 4, !dbg !263
  br label %40, !dbg !264

; <label>:40                                      ; preds = %7, %0
  %41 = load i32* %1, align 4, !dbg !265
  %42 = load i32* @stackSize, align 4, !dbg !265
  %43 = sub nsw i32 %42, 1, !dbg !265
  %44 = sext i32 %43 to i64, !dbg !265
  %45 = load i32** @xstack, align 8, !dbg !265
  %46 = getelementptr inbounds i32* %45, i64 %44, !dbg !265
  store i32 %41, i32* %46, align 4, !dbg !265
  %47 = load i32* %2, align 4, !dbg !266
  %48 = load i32* @stackSize, align 4, !dbg !266
  %49 = sub nsw i32 %48, 1, !dbg !266
  %50 = sext i32 %49 to i64, !dbg !266
  %51 = load i32** @ystack, align 8, !dbg !266
  %52 = getelementptr inbounds i32* %51, i64 %50, !dbg !266
  store i32 %47, i32* %52, align 4, !dbg !266
  ret void, !dbg !267
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @klee_bound_error(i64, i8*, double) #2

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
  %1 = icmp eq i64 %z, 0, !dbg !268
  br i1 %1, label %2, label %3, !dbg !268

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0)) #8, !dbg !270
  unreachable, !dbg !270

; <label>:3                                       ; preds = %0
  ret void, !dbg !271
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !272
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #9, !dbg !272
  %2 = load i32* %x, align 4, !dbg !273, !tbaa !274
  ret i32 %2, !dbg !273
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !278
  br i1 %1, label %3, label %2, !dbg !278

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str310, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !280
  unreachable, !dbg !280

; <label>:3                                       ; preds = %0
  ret void, !dbg !282
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !283
  br i1 %1, label %3, label %2, !dbg !283

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str611, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !285
  unreachable, !dbg !285

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !286
  %5 = icmp eq i32 %4, %end, !dbg !286
  br i1 %5, label %21, label %6, !dbg !286

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !288
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #9, !dbg !288
  %8 = icmp eq i32 %start, 0, !dbg !290
  %9 = load i32* %x, align 4, !dbg !292, !tbaa !274
  br i1 %8, label %10, label %13, !dbg !290

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !292
  %12 = zext i1 %11 to i64, !dbg !292
  call void @klee_assume(i64 %12) #9, !dbg !292
  br label %19, !dbg !294

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !295
  %15 = zext i1 %14 to i64, !dbg !295
  call void @klee_assume(i64 %15) #9, !dbg !295
  %16 = load i32* %x, align 4, !dbg !297, !tbaa !274
  %17 = icmp slt i32 %16, %end, !dbg !297
  %18 = zext i1 %17 to i64, !dbg !297
  call void @klee_assume(i64 %18) #9, !dbg !297
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !298, !tbaa !274
  br label %21, !dbg !298

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !299
}

declare void @klee_assume(i64) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !300
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !300

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !301
  %wide.load = load <16 x i8>* %3, align 1, !dbg !301
  %next.gep.sum279 = or i64 %index, 16, !dbg !301
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !301
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !301
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !301
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !301
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !301
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !301
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !301
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !302

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
  %10 = add i64 %.01, -1, !dbg !300
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !301
  %12 = load i8* %src.03, align 1, !dbg !301, !tbaa !305
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !301
  store i8 %12, i8* %dest.02, align 1, !dbg !301, !tbaa !305
  %14 = icmp eq i64 %10, 0, !dbg !300
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !300, !llvm.loop !306

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !307
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
  %1 = icmp eq i8* %src, %dst, !dbg !308
  br i1 %1, label %.loopexit, label %2, !dbg !308

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !310
  br i1 %3, label %.preheader, label %18, !dbg !310

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !312
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !312

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !312
  %wide.load = load <16 x i8>* %6, align 1, !dbg !312
  %next.gep.sum586 = or i64 %index, 16, !dbg !312
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !312
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !312
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !312
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !312
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !312
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !312
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !312
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !312
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !314

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
  %13 = add i64 %.02, -1, !dbg !312
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !312
  %15 = load i8* %b.04, align 1, !dbg !312, !tbaa !305
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !312
  store i8 %15, i8* %a.03, align 1, !dbg !312, !tbaa !305
  %17 = icmp eq i64 %13, 0, !dbg !312
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !312, !llvm.loop !315

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !316
  %20 = icmp eq i64 %count, 0, !dbg !318
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !318

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !319
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !316
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !318
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !318
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !318
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !318
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !318
  %.sum505 = add i64 %.sum440, -31, !dbg !318
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !318
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !318
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !318
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !318
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !318
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !318
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !318
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !318
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !318
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !318
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !318
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !318
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !320

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
  %32 = add i64 %.16, -1, !dbg !318
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !318
  %34 = load i8* %b.18, align 1, !dbg !318, !tbaa !305
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !318
  store i8 %34, i8* %a.17, align 1, !dbg !318, !tbaa !305
  %36 = icmp eq i64 %32, 0, !dbg !318
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !318, !llvm.loop !321

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !322
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !323
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !323

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !324
  %wide.load = load <16 x i8>* %3, align 1, !dbg !324
  %next.gep.sum280 = or i64 %index, 16, !dbg !324
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !324
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !324
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !324
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !324
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !324
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !324
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !324
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !324
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !325

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
  %10 = add i64 %.01, -1, !dbg !323
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !324
  %12 = load i8* %src.03, align 1, !dbg !324, !tbaa !305
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !324
  store i8 %12, i8* %dest.02, align 1, !dbg !324, !tbaa !305
  %14 = icmp eq i64 %10, 0, !dbg !323
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !323, !llvm.loop !326

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !323

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !327
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
  %1 = icmp eq i64 %count, 0, !dbg !328
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !328

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !329
  br label %3, !dbg !328

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !328
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !329
  store volatile i8 %2, i8* %a.02, align 1, !dbg !329, !tbaa !305
  %6 = icmp eq i64 %4, 0, !dbg !328
  br i1 %6, label %._crit_edge, label %3, !dbg !328

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !330
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

!llvm.dbg.cu = !{!0, !33, !44, !58, !70, !83, !103, !118, !133}
!llvm.module.flags = !{!149, !150}
!llvm.ident = !{!151, !151, !151, !151, !151, !151, !151, !151, !151}

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
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setPix", metadata !"setPix", metadata !"", i32 229, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @setPix, null, null, metadata !2, i32 229}
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popx", metadata !"popx", metadata !"", i32 237, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popx, null, null, metadata !2, i32 237} ; [ DW_TAG_subprogram 
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popy", metadata !"popy", metadata !"", i32 244, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popy, null, null, metadata !2, i32 244} ; [ DW_TAG_subprogram 
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fillLine", metadata !"fillLine", metadata !"", i32 250, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @fillLine, null, null, metadata !2, i3
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"push", metadata !"push", metadata !"", i32 261, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @push, null, null, metadata !2, i32 261} ; [ DW_TAG
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !8, metadata !8}
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fill", metadata !"fill", metadata !"", i32 277, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @fill, null, null, metadata !2, i32 277} ; [ DW_TAG_
!22 = metadata !{metadata !23, metadata !25, metadata !26, metadata !27, metadata !31, metadata !32}
!23 = metadata !{i32 786484, i32 0, null, metadata !"xstack", metadata !"xstack", metadata !"", metadata !5, i32 186, metadata !24, i32 0, i32 1, i32** @xstack, null} ; [ DW_TAG_variable ] [xstack] [line 186] [def]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786484, i32 0, null, metadata !"ystack", metadata !"ystack", metadata !"", metadata !5, i32 187, metadata !24, i32 0, i32 1, i32** @ystack, null} ; [ DW_TAG_variable ] [ystack] [line 187] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"stackSize", metadata !"stackSize", metadata !"", metadata !5, i32 188, metadata !8, i32 0, i32 1, i32* @stackSize, null} ; [ DW_TAG_variable ] [stackSize] [line 188] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"image", metadata !"image", metadata !"", metadata !5, i32 189, metadata !28, i32 0, i32 1, [2 x [2 x i32]]* @image, null} ; [ DW_TAG_variable ] [image] [line 189] [def]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !8, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!29 = metadata !{metadata !30, metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!31 = metadata !{i32 786484, i32 0, null, metadata !"targetColor", metadata !"targetColor", metadata !"", metadata !5, i32 190, metadata !8, i32 0, i32 1, i32* @targetColor, null} ; [ DW_TAG_variable ] [targetColor] [line 190] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"maxStackSize", metadata !"maxStackSize", metadata !"", metadata !5, i32 191, metadata !8, i32 0, i32 1, i32* @maxStackSize, null} ; [ DW_TAG_variable ] [maxStackSize] [line 191] [def]
!33 = metadata !{i32 786449, metadata !34, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !35, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!34 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786478, metadata !37, metadata !38, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!37 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!38 = metadata !{i32 786473, metadata !37}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786689, metadata !36, metadata !"z", metadata !38, i32 16777228, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!44 = metadata !{i32 786449, metadata !45, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !46, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!45 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786478, metadata !48, metadata !49, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !55, i32 13} ; [ 
!48 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!49 = metadata !{i32 786473, metadata !48}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !8, metadata !52}
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!54 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !47, metadata !"name", metadata !49, i32 16777229, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!57 = metadata !{i32 786688, metadata !47, metadata !"x", metadata !49, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!58 = metadata !{i32 786449, metadata !59, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !60, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!59 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786478, metadata !62, metadata !63, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!62 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!63 = metadata !{i32 786473, metadata !62}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!64 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !66, metadata !66}
!66 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{metadata !68, metadata !69}
!68 = metadata !{i32 786689, metadata !61, metadata !"bitWidth", metadata !63, i32 16777236, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!69 = metadata !{i32 786689, metadata !61, metadata !"shift", metadata !63, i32 33554452, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!70 = metadata !{i32 786449, metadata !71, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !72, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!71 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786478, metadata !74, metadata !75, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!74 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!75 = metadata !{i32 786473, metadata !74}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!76 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !8, metadata !8, metadata !8, metadata !52}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82}
!79 = metadata !{i32 786689, metadata !73, metadata !"start", metadata !75, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!80 = metadata !{i32 786689, metadata !73, metadata !"end", metadata !75, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!81 = metadata !{i32 786689, metadata !73, metadata !"name", metadata !75, i32 50331661, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!82 = metadata !{i32 786688, metadata !73, metadata !"x", metadata !75, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!83 = metadata !{i32 786449, metadata !84, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !85, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!84 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !96, i32 12} 
!87 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!88 = metadata !{i32 786473, metadata !87}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!89 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !91, metadata !92, metadata !94}
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{i32 786454, metadata !87, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!95 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !102}
!97 = metadata !{i32 786689, metadata !86, metadata !"destaddr", metadata !88, i32 16777228, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!98 = metadata !{i32 786689, metadata !86, metadata !"srcaddr", metadata !88, i32 33554444, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!99 = metadata !{i32 786689, metadata !86, metadata !"len", metadata !88, i32 50331660, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!100 = metadata !{i32 786688, metadata !86, metadata !"dest", metadata !88, i32 13, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!102 = metadata !{i32 786688, metadata !86, metadata !"src", metadata !88, i32 14, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!103 = metadata !{i32 786449, metadata !104, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !105, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!104 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786478, metadata !107, metadata !108, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !112, 
!107 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!108 = metadata !{i32 786473, metadata !107}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!109 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !91, metadata !91, metadata !92, metadata !111}
!111 = metadata !{i32 786454, metadata !107, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!113 = metadata !{i32 786689, metadata !106, metadata !"dst", metadata !108, i32 16777228, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!114 = metadata !{i32 786689, metadata !106, metadata !"src", metadata !108, i32 33554444, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!115 = metadata !{i32 786689, metadata !106, metadata !"count", metadata !108, i32 50331660, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!116 = metadata !{i32 786688, metadata !106, metadata !"a", metadata !108, i32 13, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!117 = metadata !{i32 786688, metadata !106, metadata !"b", metadata !108, i32 14, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!118 = metadata !{i32 786449, metadata !119, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !120, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!119 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786478, metadata !122, metadata !123, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !127, 
!122 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!123 = metadata !{i32 786473, metadata !122}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!124 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !91, metadata !91, metadata !92, metadata !126}
!126 = metadata !{i32 786454, metadata !122, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!128 = metadata !{i32 786689, metadata !121, metadata !"destaddr", metadata !123, i32 16777227, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!129 = metadata !{i32 786689, metadata !121, metadata !"srcaddr", metadata !123, i32 33554443, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!130 = metadata !{i32 786689, metadata !121, metadata !"len", metadata !123, i32 50331659, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!131 = metadata !{i32 786688, metadata !121, metadata !"dest", metadata !123, i32 12, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!132 = metadata !{i32 786688, metadata !121, metadata !"src", metadata !123, i32 13, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!133 = metadata !{i32 786449, metadata !134, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !135, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!134 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786478, metadata !137, metadata !138, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !142, i32
!137 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!138 = metadata !{i32 786473, metadata !137}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!139 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !91, metadata !91, metadata !8, metadata !141}
!141 = metadata !{i32 786454, metadata !137, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146}
!143 = metadata !{i32 786689, metadata !136, metadata !"dst", metadata !138, i32 16777227, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!144 = metadata !{i32 786689, metadata !136, metadata !"s", metadata !138, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!145 = metadata !{i32 786689, metadata !136, metadata !"count", metadata !138, i32 50331659, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!146 = metadata !{i32 786688, metadata !136, metadata !"a", metadata !138, i32 12, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!148 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!149 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!150 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!151 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!152 = metadata !{i32 204, i32 0, metadata !4, null}
!153 = metadata !{i32 205, i32 0, metadata !4, null}
!154 = metadata !{i32 207, i32 0, metadata !4, null}
!155 = metadata !{i32 208, i32 0, metadata !4, null}
!156 = metadata !{i32 212, i32 0, metadata !4, null}
!157 = metadata !{i32 213, i32 0, metadata !4, null}
!158 = metadata !{i32 214, i32 0, metadata !4, null}
!159 = metadata !{i32 215, i32 0, metadata !4, null}
!160 = metadata !{i32 217, i32 0, metadata !4, null}
!161 = metadata !{i32 219, i32 0, metadata !4, null}
!162 = metadata !{i32 278, i32 0, metadata !21, null}
!163 = metadata !{i32 279, i32 0, metadata !21, null}
!164 = metadata !{i32 281, i32 0, metadata !21, null}
!165 = metadata !{i32 283, i32 0, metadata !21, null}
!166 = metadata !{i32 285, i32 0, metadata !21, null}
!167 = metadata !{i32 287, i32 0, metadata !21, null}
!168 = metadata !{i32 289, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !21, i32 289, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!170 = metadata !{i32 290, i32 0, metadata !169, null}
!171 = metadata !{i32 292, i32 0, metadata !21, null}
!172 = metadata !{i32 293, i32 0, metadata !21, null}
!173 = metadata !{i32 297, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !21, i32 297, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!175 = metadata !{i32 298, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !174, i32 297, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!177 = metadata !{i32 299, i32 0, metadata !176, null}
!178 = metadata !{i32 300, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !176, i32 300, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!180 = metadata !{i32 301, i32 0, metadata !179, null}
!181 = metadata !{i32 302, i32 0, metadata !176, null}
!182 = metadata !{i32 304, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !176, i32 304, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!184 = metadata !{i32 305, i32 0, metadata !176, null}
!185 = metadata !{i32 306, i32 0, metadata !176, null}
!186 = metadata !{i32 308, i32 0, metadata !176, null}
!187 = metadata !{i32 309, i32 0, metadata !176, null}
!188 = metadata !{i32 311, i32 0, metadata !176, null}
!189 = metadata !{i32 312, i32 0, metadata !176, null}
!190 = metadata !{i32 314, i32 0, metadata !176, null}
!191 = metadata !{i32 316, i32 0, metadata !176, null}
!192 = metadata !{i32 319, i32 0, metadata !176, null}
!193 = metadata !{i32 320, i32 0, metadata !176, null}
!194 = metadata !{i32 322, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !176, i32 322, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!196 = metadata !{i32 323, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !198, i32 323, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!198 = metadata !{i32 786443, metadata !1, metadata !195, i32 322, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!199 = metadata !{i32 324, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !197, i32 323, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!201 = metadata !{i32 325, i32 0, metadata !200, null}
!202 = metadata !{i32 326, i32 0, metadata !200, null}
!203 = metadata !{i32 326, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !197, i32 326, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!205 = metadata !{i32 327, i32 0, metadata !204, null}
!206 = metadata !{i32 330, i32 0, metadata !176, null}
!207 = metadata !{i32 331, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !176, i32 331, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!209 = metadata !{i32 332, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !211, i32 332, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!211 = metadata !{i32 786443, metadata !1, metadata !208, i32 331, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!212 = metadata !{i32 333, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !210, i32 332, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!214 = metadata !{i32 334, i32 0, metadata !213, null}
!215 = metadata !{i32 335, i32 0, metadata !213, null}
!216 = metadata !{i32 335, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !210, i32 335, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!218 = metadata !{i32 336, i32 0, metadata !217, null}
!219 = metadata !{i32 337, i32 0, metadata !217, null}
!220 = metadata !{i32 342, i32 0, metadata !21, null}
!221 = metadata !{i32 343, i32 0, metadata !21, null}
!222 = metadata !{i32 222, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !9, i32 222, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!224 = metadata !{i32 223, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !223, i32 222, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!226 = metadata !{i32 225, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !223, i32 224, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!228 = metadata !{i32 227, i32 0, metadata !9, null}
!229 = metadata !{i32 230, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !12, i32 230, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!231 = metadata !{i32 233, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !230, i32 232, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!233 = metadata !{i32 235, i32 0, metadata !12, null}
!234 = metadata !{i32 238, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !15, i32 238, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!236 = metadata !{i32 239, i32 0, metadata !235, null}
!237 = metadata !{i32 241, i32 0, metadata !235, null}
!238 = metadata !{i32 242, i32 0, metadata !15, null}
!239 = metadata !{i32 245, i32 0, metadata !16, null}
!240 = metadata !{i32 246, i32 0, metadata !16, null}
!241 = metadata !{i32 247, i32 0, metadata !16, null}
!242 = metadata !{i32 252, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !17, i32 252, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!244 = metadata !{i32 253, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 252, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!246 = metadata !{i32 254, i32 0, metadata !245, null}
!247 = metadata !{i32 255, i32 0, metadata !245, null}
!248 = metadata !{i32 256, i32 0, metadata !245, null}
!249 = metadata !{i32 257, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !17, i32 257, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!251 = metadata !{i32 258, i32 0, metadata !250, null}
!252 = metadata !{i32 259, i32 0, metadata !17, null}
!253 = metadata !{i32 262, i32 0, metadata !18, null}
!254 = metadata !{i32 264, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !18, i32 264, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!256 = metadata !{i32 265, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 264, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/floodfill/floodfill.c]
!258 = metadata !{i32 266, i32 0, metadata !257, null}
!259 = metadata !{i32 267, i32 0, metadata !257, null}
!260 = metadata !{i32 268, i32 0, metadata !257, null}
!261 = metadata !{i32 269, i32 0, metadata !257, null}
!262 = metadata !{i32 270, i32 0, metadata !257, null}
!263 = metadata !{i32 271, i32 0, metadata !257, null}
!264 = metadata !{i32 272, i32 0, metadata !257, null}
!265 = metadata !{i32 273, i32 0, metadata !18, null}
!266 = metadata !{i32 274, i32 0, metadata !18, null}
!267 = metadata !{i32 275, i32 0, metadata !18, null}
!268 = metadata !{i32 13, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !37, metadata !36, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!270 = metadata !{i32 14, i32 0, metadata !269, null}
!271 = metadata !{i32 15, i32 0, metadata !36, null}
!272 = metadata !{i32 15, i32 0, metadata !47, null}
!273 = metadata !{i32 16, i32 0, metadata !47, null}
!274 = metadata !{metadata !275, metadata !275, i64 0}
!275 = metadata !{metadata !"int", metadata !276, i64 0}
!276 = metadata !{metadata !"omnipotent char", metadata !277, i64 0}
!277 = metadata !{metadata !"Simple C/C++ TBAA"}
!278 = metadata !{i32 21, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !62, metadata !61, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!280 = metadata !{i32 27, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !62, metadata !279, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!282 = metadata !{i32 29, i32 0, metadata !61, null}
!283 = metadata !{i32 16, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !74, metadata !73, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!285 = metadata !{i32 17, i32 0, metadata !284, null}
!286 = metadata !{i32 19, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !74, metadata !73, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!288 = metadata !{i32 22, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !74, metadata !287, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!290 = metadata !{i32 25, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !74, metadata !289, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!292 = metadata !{i32 26, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !74, metadata !291, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!294 = metadata !{i32 27, i32 0, metadata !293, null}
!295 = metadata !{i32 28, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !74, metadata !291, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!297 = metadata !{i32 29, i32 0, metadata !296, null}
!298 = metadata !{i32 32, i32 0, metadata !289, null}
!299 = metadata !{i32 34, i32 0, metadata !73, null}
!300 = metadata !{i32 16, i32 0, metadata !86, null}
!301 = metadata !{i32 17, i32 0, metadata !86, null}
!302 = metadata !{metadata !302, metadata !303, metadata !304}
!303 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!304 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!305 = metadata !{metadata !276, metadata !276, i64 0}
!306 = metadata !{metadata !306, metadata !303, metadata !304}
!307 = metadata !{i32 18, i32 0, metadata !86, null}
!308 = metadata !{i32 16, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !107, metadata !106, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!310 = metadata !{i32 19, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !107, metadata !106, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!312 = metadata !{i32 20, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !107, metadata !311, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!314 = metadata !{metadata !314, metadata !303, metadata !304}
!315 = metadata !{metadata !315, metadata !303, metadata !304}
!316 = metadata !{i32 22, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !107, metadata !311, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!318 = metadata !{i32 24, i32 0, metadata !317, null}
!319 = metadata !{i32 23, i32 0, metadata !317, null}
!320 = metadata !{metadata !320, metadata !303, metadata !304}
!321 = metadata !{metadata !321, metadata !303, metadata !304}
!322 = metadata !{i32 28, i32 0, metadata !106, null}
!323 = metadata !{i32 15, i32 0, metadata !121, null}
!324 = metadata !{i32 16, i32 0, metadata !121, null}
!325 = metadata !{metadata !325, metadata !303, metadata !304}
!326 = metadata !{metadata !326, metadata !303, metadata !304}
!327 = metadata !{i32 17, i32 0, metadata !121, null}
!328 = metadata !{i32 13, i32 0, metadata !136, null}
!329 = metadata !{i32 14, i32 0, metadata !136, null}
!330 = metadata !{i32 15, i32 0, metadata !136, null}
