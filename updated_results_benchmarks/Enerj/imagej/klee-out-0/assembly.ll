; ModuleID = 'imagej-symbolic.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@targetColor = common global i32 0, align 4
@stackSize = common global i32 0, align 4
@maxStackSize = common global i32 0, align 4
@xstack = common global i32* null, align 8
@ystack = common global i32* null, align 8
@pixels = common global [3 x [2 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [16 x i8] c"__arr32__pixels\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"targetColor\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"__arr32__xstack\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"__arr32__ystack\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"pixels_err\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"xstack_err\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"ystack_err\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"targetColor_err\00", align 1
@.str8 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str210 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str311 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str612 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 2, i32* @targetColor, align 4, !dbg !153
  store i32 0, i32* @stackSize, align 4, !dbg !154
  store i32 1, i32* @maxStackSize, align 4, !dbg !155
  %1 = load i32* @maxStackSize, align 4, !dbg !156
  %2 = sext i32 %1 to i64, !dbg !156
  %3 = mul i64 4, %2, !dbg !156
  %4 = call noalias i8* @malloc(i64 %3) #4, !dbg !156
  %5 = bitcast i8* %4 to i32*, !dbg !156
  store i32* %5, i32** @xstack, align 8, !dbg !156
  %6 = load i32* @maxStackSize, align 4, !dbg !157
  %7 = sext i32 %6 to i64, !dbg !157
  %8 = mul i64 4, %7, !dbg !157
  %9 = call noalias i8* @malloc(i64 %8) #4, !dbg !157
  %10 = bitcast i8* %9 to i32*, !dbg !157
  store i32* %10, i32** @ystack, align 8, !dbg !157
  call void @klee_make_symbolic(i8* bitcast ([3 x [2 x i32]]* @pixels to i8*), i64 24, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)), !dbg !158
  call void @klee_make_symbolic(i8* bitcast (i32* @targetColor to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !159
  %11 = load i32** @xstack, align 8, !dbg !160
  %12 = bitcast i32* %11 to i8*, !dbg !160
  call void @klee_make_symbolic(i8* %12, i64 4, i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)), !dbg !160
  %13 = load i32** @ystack, align 8, !dbg !161
  %14 = bitcast i32* %13 to i8*, !dbg !161
  call void @klee_make_symbolic(i8* %14, i64 4, i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !161
  %15 = load i32* getelementptr inbounds ([3 x [2 x i32]]* @pixels, i32 0, i64 0, i64 0), align 4, !dbg !162
  %16 = icmp sge i32 %15, 0, !dbg !162
  %17 = zext i1 %16 to i32, !dbg !162
  %18 = sext i32 %17 to i64, !dbg !162
  call void @klee_assume(i64 %18), !dbg !162
  %19 = load i32* getelementptr inbounds ([3 x [2 x i32]]* @pixels, i32 0, i64 0, i64 1), align 4, !dbg !163
  %20 = icmp sge i32 %19, 0, !dbg !163
  %21 = zext i1 %20 to i32, !dbg !163
  %22 = sext i32 %21 to i64, !dbg !163
  call void @klee_assume(i64 %22), !dbg !163
  %23 = load i32* getelementptr inbounds ([3 x [2 x i32]]* @pixels, i32 0, i64 1, i64 0), align 4, !dbg !164
  %24 = icmp sge i32 %23, 0, !dbg !164
  %25 = zext i1 %24 to i32, !dbg !164
  %26 = sext i32 %25 to i64, !dbg !164
  call void @klee_assume(i64 %26), !dbg !164
  %27 = load i32* getelementptr inbounds ([3 x [2 x i32]]* @pixels, i32 0, i64 1, i64 1), align 4, !dbg !165
  %28 = icmp sge i32 %27, 0, !dbg !165
  %29 = zext i1 %28 to i32, !dbg !165
  %30 = sext i32 %29 to i64, !dbg !165
  call void @klee_assume(i64 %30), !dbg !165
  %31 = load i32* getelementptr inbounds ([3 x [2 x i32]]* @pixels, i32 0, i64 2, i64 0), align 4, !dbg !166
  %32 = icmp sge i32 %31, 0, !dbg !166
  %33 = zext i1 %32 to i32, !dbg !166
  %34 = sext i32 %33 to i64, !dbg !166
  call void @klee_assume(i64 %34), !dbg !166
  %35 = load i32* getelementptr inbounds ([3 x [2 x i32]]* @pixels, i32 0, i64 2, i64 1), align 4, !dbg !167
  %36 = icmp sge i32 %35, 0, !dbg !167
  %37 = zext i1 %36 to i32, !dbg !167
  %38 = sext i32 %37 to i64, !dbg !167
  call void @klee_assume(i64 %38), !dbg !167
  call void @klee_track_error(i8* bitcast ([3 x [2 x i32]]* @pixels to i8*), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)), !dbg !168
  %39 = load i32** @xstack, align 8, !dbg !169
  %40 = bitcast i32* %39 to i8*, !dbg !169
  call void @klee_track_error(i8* %40, i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0)), !dbg !169
  %41 = load i32** @ystack, align 8, !dbg !170
  %42 = bitcast i32* %41 to i8*, !dbg !170
  call void @klee_track_error(i8* %42, i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0)), !dbg !170
  call void @klee_track_error(i8* bitcast (i32* @targetColor to i8*), i8* getelementptr inbounds ([16 x i8]* @.str7, i32 0, i32 0)), !dbg !171
  %43 = call i32 @fill(i32 0, i32 0), !dbg !172
  ret i32 0, !dbg !173
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_assume(i64) #3

declare void @klee_track_error(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @fill(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %color = alloca i32, align 4
  %newColor = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %inScanLine = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  store i32 %y, i32* %3, align 4
  store i32 3, i32* %width, align 4, !dbg !174
  store i32 2, i32* %height, align 4, !dbg !175
  %4 = load i32* %2, align 4, !dbg !176
  %5 = load i32* %3, align 4, !dbg !176
  %6 = call i32 @getPix(i32 %4, i32 %5), !dbg !176
  store i32 %6, i32* %color, align 4, !dbg !176
  %7 = load i32* %2, align 4, !dbg !177
  %8 = load i32* %2, align 4, !dbg !177
  %9 = load i32* %3, align 4, !dbg !177
  call void @fillLine(i32 %7, i32 %8, i32 %9), !dbg !177
  %10 = load i32* %2, align 4, !dbg !178
  %11 = load i32* %3, align 4, !dbg !178
  %12 = call i32 @getPix(i32 %10, i32 %11), !dbg !178
  store i32 %12, i32* %newColor, align 4, !dbg !178
  %13 = load i32* %2, align 4, !dbg !179
  %14 = load i32* %3, align 4, !dbg !179
  %15 = load i32* %color, align 4, !dbg !179
  call void @setPix(i32 %13, i32 %14, i32 %15), !dbg !179
  %16 = load i32* %color, align 4, !dbg !180
  %17 = load i32* %newColor, align 4, !dbg !180
  %18 = icmp eq i32 %16, %17, !dbg !180
  br i1 %18, label %19, label %20, !dbg !180

; <label>:19                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !182
  br label %155, !dbg !182

; <label>:20                                      ; preds = %0
  store i32 0, i32* @stackSize, align 4, !dbg !183
  %21 = load i32* %2, align 4, !dbg !184
  %22 = load i32* %3, align 4, !dbg !184
  call void @push(i32 %21, i32 %22), !dbg !184
  br label %23, !dbg !185

; <label>:23                                      ; preds = %113, %28, %20
  %24 = call i32 @popx(), !dbg !186
  store i32 %24, i32* %2, align 4, !dbg !186
  %25 = load i32* %2, align 4, !dbg !188
  %26 = icmp eq i32 %25, -1, !dbg !188
  br i1 %26, label %27, label %28, !dbg !188

; <label>:27                                      ; preds = %23
  store i32 1, i32* %1, !dbg !190
  br label %155, !dbg !190

; <label>:28                                      ; preds = %23
  %29 = call i32 @popy(), !dbg !191
  store i32 %29, i32* %3, align 4, !dbg !191
  %30 = load i32* %2, align 4, !dbg !192
  %31 = load i32* %3, align 4, !dbg !192
  %32 = call i32 @getPix(i32 %30, i32 %31), !dbg !192
  %33 = load i32* %color, align 4, !dbg !192
  %34 = icmp ne i32 %32, %33, !dbg !192
  br i1 %34, label %23, label %35, !dbg !192

; <label>:35                                      ; preds = %28
  %36 = load i32* %2, align 4, !dbg !194
  store i32 %36, i32* %x1, align 4, !dbg !194
  %37 = load i32* %2, align 4, !dbg !195
  store i32 %37, i32* %x2, align 4, !dbg !195
  br label %38, !dbg !196

; <label>:38                                      ; preds = %50, %35
  %39 = load i32* %x1, align 4, !dbg !196
  %40 = load i32* %3, align 4, !dbg !196
  %41 = call i32 @getPix(i32 %39, i32 %40), !dbg !196
  %42 = load i32* %color, align 4, !dbg !196
  %43 = icmp eq i32 %41, %42, !dbg !196
  br i1 %43, label %44, label %47, !dbg !196

; <label>:44                                      ; preds = %38
  %45 = load i32* %x1, align 4, !dbg !196
  %46 = icmp sge i32 %45, 0, !dbg !196
  br label %47

; <label>:47                                      ; preds = %44, %38
  %48 = phi i1 [ false, %38 ], [ %46, %44 ]
  %49 = load i32* %x1, align 4, !dbg !197
  br i1 %48, label %50, label %52

; <label>:50                                      ; preds = %47
  %51 = add nsw i32 %49, -1, !dbg !197
  store i32 %51, i32* %x1, align 4, !dbg !197
  br label %38, !dbg !197

; <label>:52                                      ; preds = %47
  %53 = add nsw i32 %49, 1, !dbg !198
  store i32 %53, i32* %x1, align 4, !dbg !198
  br label %54, !dbg !199

; <label>:54                                      ; preds = %67, %52
  %55 = load i32* %x2, align 4, !dbg !199
  %56 = load i32* %3, align 4, !dbg !199
  %57 = call i32 @getPix(i32 %55, i32 %56), !dbg !199
  %58 = load i32* %color, align 4, !dbg !199
  %59 = icmp eq i32 %57, %58, !dbg !199
  br i1 %59, label %60, label %64, !dbg !199

; <label>:60                                      ; preds = %54
  %61 = load i32* %x2, align 4, !dbg !199
  %62 = load i32* %width, align 4, !dbg !199
  %63 = icmp slt i32 %61, %62, !dbg !199
  br label %64

; <label>:64                                      ; preds = %60, %54
  %65 = phi i1 [ false, %54 ], [ %63, %60 ]
  %66 = load i32* %x2, align 4, !dbg !200
  br i1 %65, label %67, label %69

; <label>:67                                      ; preds = %64
  %68 = add nsw i32 %66, 1, !dbg !200
  store i32 %68, i32* %x2, align 4, !dbg !200
  br label %54, !dbg !200

; <label>:69                                      ; preds = %64
  %70 = add nsw i32 %66, -1, !dbg !201
  store i32 %70, i32* %x2, align 4, !dbg !201
  %71 = load i32* %x1, align 4, !dbg !202
  %72 = load i32* %x2, align 4, !dbg !202
  %73 = load i32* %3, align 4, !dbg !202
  call void @fillLine(i32 %71, i32 %72, i32 %73), !dbg !202
  store i32 0, i32* %inScanLine, align 4, !dbg !203
  %74 = load i32* %x1, align 4, !dbg !204
  store i32 %74, i32* %i, align 4, !dbg !204
  br label %75, !dbg !204

; <label>:75                                      ; preds = %108, %69
  %76 = load i32* %i, align 4, !dbg !204
  %77 = load i32* %x2, align 4, !dbg !204
  %78 = icmp sle i32 %76, %77, !dbg !204
  br i1 %78, label %79, label %111, !dbg !204

; <label>:79                                      ; preds = %75
  %80 = load i32* %inScanLine, align 4, !dbg !206
  %81 = icmp eq i32 %80, 0, !dbg !206
  %82 = load i32* %3, align 4, !dbg !206
  %83 = icmp sgt i32 %82, 0, !dbg !206
  %or.cond = and i1 %81, %83, !dbg !206
  br i1 %or.cond, label %84, label %95, !dbg !206

; <label>:84                                      ; preds = %79
  %85 = load i32* %i, align 4, !dbg !206
  %86 = load i32* %3, align 4, !dbg !206
  %87 = sub nsw i32 %86, 1, !dbg !206
  %88 = call i32 @getPix(i32 %85, i32 %87), !dbg !206
  %89 = load i32* %color, align 4, !dbg !206
  %90 = icmp eq i32 %88, %89, !dbg !206
  br i1 %90, label %91, label %95, !dbg !206

; <label>:91                                      ; preds = %84
  %92 = load i32* %i, align 4, !dbg !209
  %93 = load i32* %3, align 4, !dbg !209
  %94 = sub nsw i32 %93, 1, !dbg !209
  call void @push(i32 %92, i32 %94), !dbg !209
  store i32 1, i32* %inScanLine, align 4, !dbg !211
  br label %108, !dbg !212

; <label>:95                                      ; preds = %79, %84
  %96 = load i32* %inScanLine, align 4, !dbg !213
  %97 = icmp ne i32 %96, 0, !dbg !213
  %98 = load i32* %3, align 4, !dbg !213
  %99 = icmp sgt i32 %98, 0, !dbg !213
  %or.cond3 = and i1 %97, %99, !dbg !213
  br i1 %or.cond3, label %100, label %108, !dbg !213

; <label>:100                                     ; preds = %95
  %101 = load i32* %i, align 4, !dbg !213
  %102 = load i32* %3, align 4, !dbg !213
  %103 = sub nsw i32 %102, 1, !dbg !213
  %104 = call i32 @getPix(i32 %101, i32 %103), !dbg !213
  %105 = load i32* %color, align 4, !dbg !213
  %106 = icmp ne i32 %104, %105, !dbg !213
  br i1 %106, label %107, label %108, !dbg !213

; <label>:107                                     ; preds = %100
  store i32 0, i32* %inScanLine, align 4, !dbg !215
  br label %108, !dbg !215

; <label>:108                                     ; preds = %91, %107, %100, %95
  %109 = load i32* %i, align 4, !dbg !204
  %110 = add nsw i32 %109, 1, !dbg !204
  store i32 %110, i32* %i, align 4, !dbg !204
  br label %75, !dbg !204

; <label>:111                                     ; preds = %75
  store i32 0, i32* %inScanLine, align 4, !dbg !216
  %112 = load i32* %x1, align 4, !dbg !217
  store i32 %112, i32* %i, align 4, !dbg !217
  br label %113, !dbg !217

; <label>:113                                     ; preds = %152, %111
  %114 = load i32* %i, align 4, !dbg !217
  %115 = load i32* %x2, align 4, !dbg !217
  %116 = icmp sle i32 %114, %115, !dbg !217
  br i1 %116, label %117, label %23, !dbg !217

; <label>:117                                     ; preds = %113
  %118 = load i32* %inScanLine, align 4, !dbg !219
  %119 = icmp ne i32 %118, 0, !dbg !219
  br i1 %119, label %136, label %120, !dbg !219

; <label>:120                                     ; preds = %117
  %121 = load i32* %3, align 4, !dbg !219
  %122 = load i32* %height, align 4, !dbg !219
  %123 = sub nsw i32 %122, 1, !dbg !219
  %124 = icmp slt i32 %121, %123, !dbg !219
  br i1 %124, label %125, label %136, !dbg !219

; <label>:125                                     ; preds = %120
  %126 = load i32* %i, align 4, !dbg !219
  %127 = load i32* %3, align 4, !dbg !219
  %128 = add nsw i32 %127, 1, !dbg !219
  %129 = call i32 @getPix(i32 %126, i32 %128), !dbg !219
  %130 = load i32* %color, align 4, !dbg !219
  %131 = icmp eq i32 %129, %130, !dbg !219
  br i1 %131, label %132, label %136, !dbg !219

; <label>:132                                     ; preds = %125
  %133 = load i32* %i, align 4, !dbg !222
  %134 = load i32* %3, align 4, !dbg !222
  %135 = add nsw i32 %134, 1, !dbg !222
  call void @push(i32 %133, i32 %135), !dbg !222
  store i32 1, i32* %inScanLine, align 4, !dbg !224
  br label %152, !dbg !225

; <label>:136                                     ; preds = %125, %120, %117
  %137 = load i32* %inScanLine, align 4, !dbg !226
  %138 = icmp ne i32 %137, 0, !dbg !226
  br i1 %138, label %139, label %152, !dbg !226

; <label>:139                                     ; preds = %136
  %140 = load i32* %3, align 4, !dbg !226
  %141 = load i32* %height, align 4, !dbg !226
  %142 = sub nsw i32 %141, 1, !dbg !226
  %143 = icmp slt i32 %140, %142, !dbg !226
  br i1 %143, label %144, label %152, !dbg !226

; <label>:144                                     ; preds = %139
  %145 = load i32* %i, align 4, !dbg !228
  %146 = load i32* %3, align 4, !dbg !228
  %147 = add nsw i32 %146, 1, !dbg !228
  %148 = call i32 @getPix(i32 %145, i32 %147), !dbg !228
  %149 = load i32* %color, align 4, !dbg !228
  %150 = icmp ne i32 %148, %149, !dbg !228
  br i1 %150, label %151, label %152, !dbg !228

; <label>:151                                     ; preds = %144
  store i32 0, i32* %inScanLine, align 4, !dbg !229
  br label %152, !dbg !229

; <label>:152                                     ; preds = %132, %151, %144, %139, %136
  %153 = load i32* %i, align 4, !dbg !217
  %154 = add nsw i32 %153, 1, !dbg !217
  store i32 %154, i32* %i, align 4, !dbg !217
  br label %113, !dbg !217

; <label>:155                                     ; preds = %27, %19
  %156 = load i32* %1, !dbg !230
  ret i32 %156, !dbg !230
}

; Function Attrs: nounwind uwtable
define i32 @getPix(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %returnVal = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  %3 = load i32* %1, align 4, !dbg !231
  %4 = icmp slt i32 %3, 0, !dbg !231
  %5 = load i32* %1, align 4, !dbg !231
  %6 = icmp sge i32 %5, 3, !dbg !231
  %or.cond = or i1 %4, %6, !dbg !231
  %7 = load i32* %2, align 4, !dbg !231
  %8 = icmp slt i32 %7, 0, !dbg !231
  %or.cond3 = or i1 %or.cond, %8, !dbg !231
  %9 = load i32* %2, align 4, !dbg !231
  %10 = icmp sge i32 %9, 2, !dbg !231
  %or.cond5 = or i1 %or.cond3, %10, !dbg !231
  br i1 %or.cond5, label %11, label %12, !dbg !231

; <label>:11                                      ; preds = %0
  store i32 -1, i32* %returnVal, align 4, !dbg !233
  br label %20, !dbg !233

; <label>:12                                      ; preds = %0
  %13 = load i32* %2, align 4, !dbg !234
  %14 = sext i32 %13 to i64, !dbg !234
  %15 = load i32* %1, align 4, !dbg !234
  %16 = sext i32 %15 to i64, !dbg !234
  %17 = getelementptr inbounds [3 x [2 x i32]]* @pixels, i32 0, i64 %16, !dbg !234
  %18 = getelementptr inbounds [2 x i32]* %17, i32 0, i64 %14, !dbg !234
  %19 = load i32* %18, align 4, !dbg !234
  store i32 %19, i32* %returnVal, align 4, !dbg !234
  br label %20

; <label>:20                                      ; preds = %12, %11
  %21 = load i32* %returnVal, align 4, !dbg !235
  ret i32 %21, !dbg !235
}

; Function Attrs: nounwind uwtable
define void @setPix(i32 %x, i32 %y, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32* %1, align 4, !dbg !236
  %5 = icmp slt i32 %4, 0, !dbg !236
  %6 = load i32* %1, align 4, !dbg !236
  %7 = icmp sge i32 %6, 3, !dbg !236
  %or.cond = or i1 %5, %7, !dbg !236
  %8 = load i32* %2, align 4, !dbg !236
  %9 = icmp slt i32 %8, 0, !dbg !236
  %or.cond3 = or i1 %or.cond, %9, !dbg !236
  %10 = load i32* %2, align 4, !dbg !236
  %11 = icmp sge i32 %10, 2, !dbg !236
  %or.cond5 = or i1 %or.cond3, %11, !dbg !236
  br i1 %or.cond5, label %20, label %12, !dbg !236

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !238
  %14 = load i32* %2, align 4, !dbg !238
  %15 = sext i32 %14 to i64, !dbg !238
  %16 = load i32* %1, align 4, !dbg !238
  %17 = sext i32 %16 to i64, !dbg !238
  %18 = getelementptr inbounds [3 x [2 x i32]]* @pixels, i32 0, i64 %17, !dbg !238
  %19 = getelementptr inbounds [2 x i32]* %18, i32 0, i64 %15, !dbg !238
  store i32 %13, i32* %19, align 4, !dbg !238
  br label %20

; <label>:20                                      ; preds = %0, %12
  ret void, !dbg !239
}

; Function Attrs: nounwind uwtable
define i32 @popx() #0 {
  %returnVal = alloca i32, align 4
  %1 = load i32* @stackSize, align 4, !dbg !240
  %2 = icmp eq i32 %1, 0, !dbg !240
  br i1 %2, label %3, label %4, !dbg !240

; <label>:3                                       ; preds = %0
  store i32 -1, i32* %returnVal, align 4, !dbg !242
  br label %11, !dbg !242

; <label>:4                                       ; preds = %0
  %5 = load i32* @stackSize, align 4, !dbg !243
  %6 = sub nsw i32 %5, 1, !dbg !243
  %7 = sext i32 %6 to i64, !dbg !243
  %8 = load i32** @xstack, align 8, !dbg !243
  %9 = getelementptr inbounds i32* %8, i64 %7, !dbg !243
  %10 = load i32* %9, align 4, !dbg !243
  store i32 %10, i32* %returnVal, align 4, !dbg !243
  br label %11

; <label>:11                                      ; preds = %4, %3
  %12 = load i32* %returnVal, align 4, !dbg !244
  ret i32 %12, !dbg !244
}

; Function Attrs: nounwind uwtable
define i32 @popy() #0 {
  %value = alloca i32, align 4
  %1 = load i32* @stackSize, align 4, !dbg !245
  %2 = sub nsw i32 %1, 1, !dbg !245
  %3 = sext i32 %2 to i64, !dbg !245
  %4 = load i32** @ystack, align 8, !dbg !245
  %5 = getelementptr inbounds i32* %4, i64 %3, !dbg !245
  %6 = load i32* %5, align 4, !dbg !245
  store i32 %6, i32* %value, align 4, !dbg !245
  %7 = load i32* @stackSize, align 4, !dbg !246
  %8 = add nsw i32 %7, -1, !dbg !246
  store i32 %8, i32* @stackSize, align 4, !dbg !246
  %9 = load i32* %value, align 4, !dbg !247
  ret i32 %9, !dbg !247
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
  %4 = load i32* %1, align 4, !dbg !248
  %5 = load i32* %2, align 4, !dbg !248
  %6 = icmp sgt i32 %4, %5, !dbg !248
  br i1 %6, label %7, label %11, !dbg !248

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4, !dbg !250
  store i32 %8, i32* %t, align 4, !dbg !250
  %9 = load i32* %2, align 4, !dbg !252
  store i32 %9, i32* %1, align 4, !dbg !252
  %10 = load i32* %t, align 4, !dbg !253
  store i32 %10, i32* %2, align 4, !dbg !253
  br label %11, !dbg !254

; <label>:11                                      ; preds = %7, %0
  %12 = load i32* %1, align 4, !dbg !255
  store i32 %12, i32* %x, align 4, !dbg !255
  br label %13, !dbg !255

; <label>:13                                      ; preds = %17, %11
  %14 = load i32* %x, align 4, !dbg !255
  %15 = load i32* %2, align 4, !dbg !255
  %16 = icmp sle i32 %14, %15, !dbg !255
  br i1 %16, label %17, label %23, !dbg !255

; <label>:17                                      ; preds = %13
  %18 = load i32* %x, align 4, !dbg !257
  %19 = load i32* %3, align 4, !dbg !257
  %20 = load i32* @targetColor, align 4, !dbg !257
  call void @setPix(i32 %18, i32 %19, i32 %20), !dbg !257
  %21 = load i32* %x, align 4, !dbg !255
  %22 = add nsw i32 %21, 1, !dbg !255
  store i32 %22, i32* %x, align 4, !dbg !255
  br label %13, !dbg !255

; <label>:23                                      ; preds = %13
  ret void, !dbg !258
}

; Function Attrs: nounwind uwtable
define void @push(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %newXStack = alloca i32*, align 8
  %newYStack = alloca i32*, align 8
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  %3 = load i32* @stackSize, align 4, !dbg !259
  %4 = add nsw i32 %3, 1, !dbg !259
  store i32 %4, i32* @stackSize, align 4, !dbg !259
  %5 = load i32* @stackSize, align 4, !dbg !260
  %6 = icmp eq i32 %5, 1, !dbg !260
  br i1 %6, label %7, label %40, !dbg !260

; <label>:7                                       ; preds = %0
  %8 = load i32* @maxStackSize, align 4, !dbg !262
  %9 = sext i32 %8 to i64, !dbg !262
  %10 = mul i64 4, %9, !dbg !262
  %11 = mul i64 %10, 2, !dbg !262
  %12 = call noalias i8* @malloc(i64 %11) #4, !dbg !262
  %13 = bitcast i8* %12 to i32*, !dbg !262
  store i32* %13, i32** %newXStack, align 8, !dbg !262
  %14 = load i32* @maxStackSize, align 4, !dbg !264
  %15 = sext i32 %14 to i64, !dbg !264
  %16 = mul i64 4, %15, !dbg !264
  %17 = mul i64 %16, 2, !dbg !264
  %18 = call noalias i8* @malloc(i64 %17) #4, !dbg !264
  %19 = bitcast i8* %18 to i32*, !dbg !264
  store i32* %19, i32** %newYStack, align 8, !dbg !264
  %20 = load i32** %newXStack, align 8, !dbg !265
  %21 = bitcast i32* %20 to i8*, !dbg !265
  %22 = load i32** @xstack, align 8, !dbg !265
  %23 = bitcast i32* %22 to i8*, !dbg !265
  %24 = load i32* @maxStackSize, align 4, !dbg !265
  %25 = sext i32 %24 to i64, !dbg !265
  %26 = mul i64 4, %25, !dbg !265
  %27 = call i8* @memcpy(i8* %21, i8* %23, i64 %26)
  %28 = load i32** %newYStack, align 8, !dbg !266
  %29 = bitcast i32* %28 to i8*, !dbg !266
  %30 = load i32** @ystack, align 8, !dbg !266
  %31 = bitcast i32* %30 to i8*, !dbg !266
  %32 = load i32* @maxStackSize, align 4, !dbg !266
  %33 = sext i32 %32 to i64, !dbg !266
  %34 = mul i64 4, %33, !dbg !266
  %35 = call i8* @memcpy(i8* %29, i8* %31, i64 %34)
  %36 = load i32** %newXStack, align 8, !dbg !267
  store i32* %36, i32** @xstack, align 8, !dbg !267
  %37 = load i32** %newYStack, align 8, !dbg !268
  store i32* %37, i32** @ystack, align 8, !dbg !268
  %38 = load i32* @maxStackSize, align 4, !dbg !269
  %39 = mul nsw i32 %38, 2, !dbg !269
  store i32 %39, i32* @maxStackSize, align 4, !dbg !269
  br label %40, !dbg !270

; <label>:40                                      ; preds = %7, %0
  %41 = load i32* %1, align 4, !dbg !271
  %42 = load i32* @stackSize, align 4, !dbg !271
  %43 = sub nsw i32 %42, 1, !dbg !271
  %44 = sext i32 %43 to i64, !dbg !271
  %45 = load i32** @xstack, align 8, !dbg !271
  %46 = getelementptr inbounds i32* %45, i64 %44, !dbg !271
  store i32 %41, i32* %46, align 4, !dbg !271
  %47 = load i32* %2, align 4, !dbg !272
  %48 = load i32* @stackSize, align 4, !dbg !272
  %49 = sub nsw i32 %48, 1, !dbg !272
  %50 = sext i32 %49 to i64, !dbg !272
  %51 = load i32** @ystack, align 8, !dbg !272
  %52 = getelementptr inbounds i32* %51, i64 %50, !dbg !272
  store i32 %47, i32* %52, align 4, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
  %1 = icmp eq i64 %z, 0, !dbg !274
  br i1 %1, label %2, label %3, !dbg !274

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0)) #7, !dbg !276
  unreachable, !dbg !276

; <label>:3                                       ; preds = %0
  ret void, !dbg !277
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !278
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !278
  %2 = load i32* %x, align 4, !dbg !279, !tbaa !280
  ret i32 %2, !dbg !279
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !284
  br i1 %1, label %3, label %2, !dbg !284

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str311, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !286
  unreachable, !dbg !286

; <label>:3                                       ; preds = %0
  ret void, !dbg !288
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !289
  br i1 %1, label %3, label %2, !dbg !289

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str612, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !291
  unreachable, !dbg !291

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !292
  %5 = icmp eq i32 %4, %end, !dbg !292
  br i1 %5, label %21, label %6, !dbg !292

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !294
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !294
  %8 = icmp eq i32 %start, 0, !dbg !296
  %9 = load i32* %x, align 4, !dbg !298, !tbaa !280
  br i1 %8, label %10, label %13, !dbg !296

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !298
  %12 = zext i1 %11 to i64, !dbg !298
  call void @klee_assume(i64 %12) #8, !dbg !298
  br label %19, !dbg !300

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !301
  %15 = zext i1 %14 to i64, !dbg !301
  call void @klee_assume(i64 %15) #8, !dbg !301
  %16 = load i32* %x, align 4, !dbg !303, !tbaa !280
  %17 = icmp slt i32 %16, %end, !dbg !303
  %18 = zext i1 %17 to i64, !dbg !303
  call void @klee_assume(i64 %18) #8, !dbg !303
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !304, !tbaa !280
  br label %21, !dbg !304

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !305
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !306
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !306

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !307
  %wide.load = load <16 x i8>* %3, align 1, !dbg !307
  %next.gep.sum279 = or i64 %index, 16, !dbg !307
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !307
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !307
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !307
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !307
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !307
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !307
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !307
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !307
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !308

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
  %10 = add i64 %.01, -1, !dbg !306
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !307
  %12 = load i8* %src.03, align 1, !dbg !307, !tbaa !311
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !307
  store i8 %12, i8* %dest.02, align 1, !dbg !307, !tbaa !311
  %14 = icmp eq i64 %10, 0, !dbg !306
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !306, !llvm.loop !312

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !313
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
  %1 = icmp eq i8* %src, %dst, !dbg !314
  br i1 %1, label %.loopexit, label %2, !dbg !314

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !316
  br i1 %3, label %.preheader, label %18, !dbg !316

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !318
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !318

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !318
  %wide.load = load <16 x i8>* %6, align 1, !dbg !318
  %next.gep.sum586 = or i64 %index, 16, !dbg !318
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !318
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !318
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !318
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !318
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !318
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !318
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !318
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !318
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !320

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
  %13 = add i64 %.02, -1, !dbg !318
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !318
  %15 = load i8* %b.04, align 1, !dbg !318, !tbaa !311
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !318
  store i8 %15, i8* %a.03, align 1, !dbg !318, !tbaa !311
  %17 = icmp eq i64 %13, 0, !dbg !318
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !318, !llvm.loop !321

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !322
  %20 = icmp eq i64 %count, 0, !dbg !324
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !324

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !325
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !322
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !324
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !324
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !324
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !324
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !324
  %.sum505 = add i64 %.sum440, -31, !dbg !324
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !324
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !324
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !324
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !324
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !324
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !324
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !324
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !324
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !324
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !324
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !324
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !324
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !326

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
  %32 = add i64 %.16, -1, !dbg !324
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !324
  %34 = load i8* %b.18, align 1, !dbg !324, !tbaa !311
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !324
  store i8 %34, i8* %a.17, align 1, !dbg !324, !tbaa !311
  %36 = icmp eq i64 %32, 0, !dbg !324
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !324, !llvm.loop !327

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !328
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !329
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !329

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !330
  %wide.load = load <16 x i8>* %3, align 1, !dbg !330
  %next.gep.sum280 = or i64 %index, 16, !dbg !330
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !330
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !330
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !330
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !330
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !330
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !330
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !330
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !330
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !331

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
  %10 = add i64 %.01, -1, !dbg !329
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !330
  %12 = load i8* %src.03, align 1, !dbg !330, !tbaa !311
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !330
  store i8 %12, i8* %dest.02, align 1, !dbg !330, !tbaa !311
  %14 = icmp eq i64 %10, 0, !dbg !329
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !329, !llvm.loop !332

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !329

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !333
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
  %1 = icmp eq i64 %count, 0, !dbg !334
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !334

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !335
  br label %3, !dbg !334

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !334
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !335
  store volatile i8 %2, i8* %a.02, align 1, !dbg !335, !tbaa !311
  %6 = icmp eq i64 %4, 0, !dbg !334
  br i1 %6, label %._crit_edge, label %3, !dbg !334

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !336
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !34, !45, !59, !71, !84, !104, !119, !134}
!llvm.module.flags = !{!150, !151}
!llvm.ident = !{!152, !152, !152, !152, !152, !152, !152, !152, !152}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"imagej-symbolic.c", metadata !"/home/himeshi/Projects/workspace/Enerj/imagej"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"getPix", metadata !"getPix", metadata !"", i32 65, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @getPix, null, null, metadata !2, i32 65} ; [ DW_T
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"setPix", metadata !"setPix", metadata !"", i32 74, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @setPix, null, null, metadata !2, i32 74} ;
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popx", metadata !"popx", metadata !"", i32 81, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popx, null, null, metadata !2, i32 81} ; [ DW_TAG_subprogram ] 
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"popy", metadata !"popy", metadata !"", i32 91, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @popy, null, null, metadata !2, i32 91} ; [ DW_TAG_subprogram ] 
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fillLine", metadata !"fillLine", metadata !"", i32 97, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32)* @fillLine, null, null, metadata !2, i32
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"push", metadata !"push", metadata !"", i32 108, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @push, null, null, metadata !2, i32 108} ; [ DW_TAG
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !8, metadata !8}
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fill", metadata !"fill", metadata !"", i32 123, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @fill, null, null, metadata !2, i32 123} ; [ DW_TAG_
!22 = metadata !{metadata !23, metadata !25, metadata !26, metadata !27, metadata !32, metadata !33}
!23 = metadata !{i32 786484, i32 0, null, metadata !"xstack", metadata !"xstack", metadata !"", metadata !5, i32 20, metadata !24, i32 0, i32 1, i32** @xstack, null} ; [ DW_TAG_variable ] [xstack] [line 20] [def]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786484, i32 0, null, metadata !"ystack", metadata !"ystack", metadata !"", metadata !5, i32 21, metadata !24, i32 0, i32 1, i32** @ystack, null} ; [ DW_TAG_variable ] [ystack] [line 21] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"stackSize", metadata !"stackSize", metadata !"", metadata !5, i32 22, metadata !8, i32 0, i32 1, i32* @stackSize, null} ; [ DW_TAG_variable ] [stackSize] [line 22] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"pixels", metadata !"pixels", metadata !"", metadata !5, i32 23, metadata !28, i32 0, i32 1, [3 x [2 x i32]]* @pixels, null} ; [ DW_TAG_variable ] [pixels] [line 23] [def]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!29 = metadata !{metadata !30, metadata !31}
!30 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!31 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!32 = metadata !{i32 786484, i32 0, null, metadata !"targetColor", metadata !"targetColor", metadata !"", metadata !5, i32 24, metadata !8, i32 0, i32 1, i32* @targetColor, null} ; [ DW_TAG_variable ] [targetColor] [line 24] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"maxStackSize", metadata !"maxStackSize", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @maxStackSize, null} ; [ DW_TAG_variable ] [maxStackSize] [line 25] [def]
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
!153 = metadata !{i32 39, i32 0, metadata !4, null}
!154 = metadata !{i32 40, i32 0, metadata !4, null}
!155 = metadata !{i32 41, i32 0, metadata !4, null}
!156 = metadata !{i32 42, i32 0, metadata !4, null}
!157 = metadata !{i32 43, i32 0, metadata !4, null}
!158 = metadata !{i32 45, i32 0, metadata !4, null}
!159 = metadata !{i32 46, i32 0, metadata !4, null}
!160 = metadata !{i32 47, i32 0, metadata !4, null}
!161 = metadata !{i32 48, i32 0, metadata !4, null}
!162 = metadata !{i32 50, i32 0, metadata !4, null}
!163 = metadata !{i32 51, i32 0, metadata !4, null}
!164 = metadata !{i32 52, i32 0, metadata !4, null}
!165 = metadata !{i32 53, i32 0, metadata !4, null}
!166 = metadata !{i32 54, i32 0, metadata !4, null}
!167 = metadata !{i32 55, i32 0, metadata !4, null}
!168 = metadata !{i32 57, i32 0, metadata !4, null}
!169 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!170 = metadata !{i32 59, i32 0, metadata !4, null}
!171 = metadata !{i32 60, i32 0, metadata !4, null}
!172 = metadata !{i32 62, i32 0, metadata !4, null}
!173 = metadata !{i32 63, i32 0, metadata !4, null}
!174 = metadata !{i32 124, i32 0, metadata !21, null}
!175 = metadata !{i32 125, i32 0, metadata !21, null}
!176 = metadata !{i32 126, i32 0, metadata !21, null}
!177 = metadata !{i32 127, i32 0, metadata !21, null}
!178 = metadata !{i32 128, i32 0, metadata !21, null}
!179 = metadata !{i32 129, i32 0, metadata !21, null}
!180 = metadata !{i32 131, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !21, i32 131, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!182 = metadata !{i32 132, i32 0, metadata !181, null}
!183 = metadata !{i32 134, i32 0, metadata !21, null}
!184 = metadata !{i32 135, i32 0, metadata !21, null}
!185 = metadata !{i32 137, i32 0, metadata !21, null}
!186 = metadata !{i32 138, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !21, i32 137, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!188 = metadata !{i32 139, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !187, i32 139, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!190 = metadata !{i32 140, i32 0, metadata !189, null}
!191 = metadata !{i32 141, i32 0, metadata !187, null}
!192 = metadata !{i32 143, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !187, i32 143, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!194 = metadata !{i32 145, i32 0, metadata !187, null}
!195 = metadata !{i32 146, i32 0, metadata !187, null}
!196 = metadata !{i32 148, i32 0, metadata !187, null}
!197 = metadata !{i32 149, i32 0, metadata !187, null}
!198 = metadata !{i32 150, i32 0, metadata !187, null}
!199 = metadata !{i32 152, i32 0, metadata !187, null}
!200 = metadata !{i32 153, i32 0, metadata !187, null}
!201 = metadata !{i32 154, i32 0, metadata !187, null}
!202 = metadata !{i32 156, i32 0, metadata !187, null}
!203 = metadata !{i32 158, i32 0, metadata !187, null}
!204 = metadata !{i32 160, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !187, i32 160, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!206 = metadata !{i32 161, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !208, i32 161, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!208 = metadata !{i32 786443, metadata !1, metadata !205, i32 160, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!209 = metadata !{i32 162, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !207, i32 161, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!211 = metadata !{i32 163, i32 0, metadata !210, null}
!212 = metadata !{i32 164, i32 0, metadata !210, null}
!213 = metadata !{i32 164, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !207, i32 164, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!215 = metadata !{i32 165, i32 0, metadata !214, null}
!216 = metadata !{i32 168, i32 0, metadata !187, null}
!217 = metadata !{i32 169, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !187, i32 169, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!219 = metadata !{i32 170, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !221, i32 170, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!221 = metadata !{i32 786443, metadata !1, metadata !218, i32 169, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!222 = metadata !{i32 171, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !220, i32 170, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!224 = metadata !{i32 172, i32 0, metadata !223, null}
!225 = metadata !{i32 173, i32 0, metadata !223, null}
!226 = metadata !{i32 173, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !220, i32 173, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!228 = metadata !{i32 174, i32 0, metadata !227, null}
!229 = metadata !{i32 175, i32 0, metadata !227, null}
!230 = metadata !{i32 178, i32 0, metadata !21, null}
!231 = metadata !{i32 67, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !9, i32 67, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!233 = metadata !{i32 68, i32 0, metadata !232, null}
!234 = metadata !{i32 70, i32 0, metadata !232, null}
!235 = metadata !{i32 71, i32 0, metadata !9, null}
!236 = metadata !{i32 75, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !12, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!238 = metadata !{i32 78, i32 0, metadata !237, null}
!239 = metadata !{i32 79, i32 0, metadata !12, null}
!240 = metadata !{i32 83, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !15, i32 83, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!242 = metadata !{i32 84, i32 0, metadata !241, null}
!243 = metadata !{i32 86, i32 0, metadata !241, null}
!244 = metadata !{i32 88, i32 0, metadata !15, null}
!245 = metadata !{i32 92, i32 0, metadata !16, null}
!246 = metadata !{i32 93, i32 0, metadata !16, null}
!247 = metadata !{i32 94, i32 0, metadata !16, null}
!248 = metadata !{i32 99, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !17, i32 99, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!250 = metadata !{i32 100, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !249, i32 99, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!252 = metadata !{i32 101, i32 0, metadata !251, null}
!253 = metadata !{i32 102, i32 0, metadata !251, null}
!254 = metadata !{i32 103, i32 0, metadata !251, null}
!255 = metadata !{i32 104, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !17, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!257 = metadata !{i32 105, i32 0, metadata !256, null}
!258 = metadata !{i32 106, i32 0, metadata !17, null}
!259 = metadata !{i32 109, i32 0, metadata !18, null}
!260 = metadata !{i32 110, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !18, i32 110, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!262 = metadata !{i32 111, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !261, i32 110, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/imagej/imagej-symbolic.c]
!264 = metadata !{i32 112, i32 0, metadata !263, null}
!265 = metadata !{i32 113, i32 0, metadata !263, null}
!266 = metadata !{i32 114, i32 0, metadata !263, null}
!267 = metadata !{i32 115, i32 0, metadata !263, null}
!268 = metadata !{i32 116, i32 0, metadata !263, null}
!269 = metadata !{i32 117, i32 0, metadata !263, null}
!270 = metadata !{i32 118, i32 0, metadata !263, null}
!271 = metadata !{i32 119, i32 0, metadata !18, null}
!272 = metadata !{i32 120, i32 0, metadata !18, null}
!273 = metadata !{i32 121, i32 0, metadata !18, null}
!274 = metadata !{i32 13, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !38, metadata !37, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!276 = metadata !{i32 14, i32 0, metadata !275, null}
!277 = metadata !{i32 15, i32 0, metadata !37, null}
!278 = metadata !{i32 15, i32 0, metadata !48, null}
!279 = metadata !{i32 16, i32 0, metadata !48, null}
!280 = metadata !{metadata !281, metadata !281, i64 0}
!281 = metadata !{metadata !"int", metadata !282, i64 0}
!282 = metadata !{metadata !"omnipotent char", metadata !283, i64 0}
!283 = metadata !{metadata !"Simple C/C++ TBAA"}
!284 = metadata !{i32 21, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !63, metadata !62, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!286 = metadata !{i32 27, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !63, metadata !285, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!288 = metadata !{i32 29, i32 0, metadata !62, null}
!289 = metadata !{i32 16, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !75, metadata !74, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!291 = metadata !{i32 17, i32 0, metadata !290, null}
!292 = metadata !{i32 19, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !75, metadata !74, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!294 = metadata !{i32 22, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !75, metadata !293, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!296 = metadata !{i32 25, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !75, metadata !295, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!298 = metadata !{i32 26, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !75, metadata !297, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!300 = metadata !{i32 27, i32 0, metadata !299, null}
!301 = metadata !{i32 28, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !75, metadata !297, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!303 = metadata !{i32 29, i32 0, metadata !302, null}
!304 = metadata !{i32 32, i32 0, metadata !295, null}
!305 = metadata !{i32 34, i32 0, metadata !74, null}
!306 = metadata !{i32 16, i32 0, metadata !87, null}
!307 = metadata !{i32 17, i32 0, metadata !87, null}
!308 = metadata !{metadata !308, metadata !309, metadata !310}
!309 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!310 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!311 = metadata !{metadata !282, metadata !282, i64 0}
!312 = metadata !{metadata !312, metadata !309, metadata !310}
!313 = metadata !{i32 18, i32 0, metadata !87, null}
!314 = metadata !{i32 16, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !108, metadata !107, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!316 = metadata !{i32 19, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !108, metadata !107, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!318 = metadata !{i32 20, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !108, metadata !317, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!320 = metadata !{metadata !320, metadata !309, metadata !310}
!321 = metadata !{metadata !321, metadata !309, metadata !310}
!322 = metadata !{i32 22, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !108, metadata !317, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!324 = metadata !{i32 24, i32 0, metadata !323, null}
!325 = metadata !{i32 23, i32 0, metadata !323, null}
!326 = metadata !{metadata !326, metadata !309, metadata !310}
!327 = metadata !{metadata !327, metadata !309, metadata !310}
!328 = metadata !{i32 28, i32 0, metadata !107, null}
!329 = metadata !{i32 15, i32 0, metadata !122, null}
!330 = metadata !{i32 16, i32 0, metadata !122, null}
!331 = metadata !{metadata !331, metadata !309, metadata !310}
!332 = metadata !{metadata !332, metadata !309, metadata !310}
!333 = metadata !{i32 17, i32 0, metadata !122, null}
!334 = metadata !{i32 13, i32 0, metadata !137, null}
!335 = metadata !{i32 14, i32 0, metadata !137, null}
!336 = metadata !{i32 15, i32 0, metadata !137, null}
