; ModuleID = './plane.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numIterations = global i32 0, align 4
@light = common global i32 0, align 4
@lcoff = common global i32 0, align 4
@texture = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"col\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@w = common global i32 0, align 4
@h = common global i32 0, align 4
@k = common global i32 0, align 4
@sng = common global i32 0, align 4
@.str8 = private unnamed_addr constant [10 x i8] c"pixels[0]\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"pixels[1]\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"lcoff\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"sng\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"numIterations\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"xe\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"ye\00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"ze\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"xd\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"yd\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"zd\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"iy\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"iz\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"lx\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"ly\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"lz\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"lly\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"w1\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"h1\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"arg3\00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"arg0_err\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"arg1_err\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"arg2_err\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"arg3_err\00", align 1
@.str44 = private unnamed_addr constant [80 x i8] c"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str145 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str246 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str347 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1448 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str2549 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str650 = private unnamed_addr constant [71 x i8] c"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str1751 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2852 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind readnone uwtable
define i32 @abs(i32 %value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %value, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !146
  %4 = icmp slt i32 %3, 0, !dbg !146
  %5 = load i32* %2, align 4, !dbg !148
  br i1 %4, label %6, label %8, !dbg !146

; <label>:6                                       ; preds = %0
  %7 = sub nsw i32 0, %5, !dbg !148
  store i32 %7, i32* %1, !dbg !148
  br label %9, !dbg !148

; <label>:8                                       ; preds = %0
  store i32 %5, i32* %1, !dbg !149
  br label %9, !dbg !149

; <label>:9                                       ; preds = %8, %6
  %10 = load i32* %1, !dbg !150
  ret i32 %10, !dbg !150
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @isqrt(i32 %n) #2 {
  %1 = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store i32 0, i32* %b, align 4, !dbg !151
  store i32 0, i32* %i, align 4, !dbg !152
  br label %2, !dbg !152

; <label>:2                                       ; preds = %5, %0
  %3 = load i32* %i, align 4, !dbg !152
  %4 = icmp slt i32 %3, 2, !dbg !152
  br i1 %4, label %5, label %16, !dbg !152

; <label>:5                                       ; preds = %2
  %6 = load i32* %1, align 4, !dbg !154
  %7 = load i32* %b, align 4, !dbg !154
  %8 = sub nsw i32 %6, %7, !dbg !154
  store i32 %8, i32* %1, align 4, !dbg !154
  %9 = load i32* %b, align 4, !dbg !156
  %10 = add nsw i32 %9, 1, !dbg !156
  store i32 %10, i32* %b, align 4, !dbg !156
  %11 = load i32* %1, align 4, !dbg !157
  %12 = load i32* %b, align 4, !dbg !157
  %13 = sub nsw i32 %11, %12, !dbg !157
  store i32 %13, i32* %1, align 4, !dbg !157
  %14 = load i32* %i, align 4, !dbg !152
  %15 = add nsw i32 %14, 1, !dbg !152
  store i32 %15, i32* %i, align 4, !dbg !152
  br label %2, !dbg !152

; <label>:16                                      ; preds = %2
  %17 = load i32* %b, align 4, !dbg !158
  %18 = sub nsw i32 %17, 1, !dbg !158
  ret i32 %18, !dbg !158
}

; Function Attrs: nounwind uwtable
define i32 @usqrt4(i32 %val) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %val, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !159
  %4 = icmp ult i32 %3, 2, !dbg !159
  br i1 %4, label %5, label %7, !dbg !159

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !159
  store i32 %6, i32* %1, !dbg !159
  br label %37, !dbg !159

; <label>:7                                       ; preds = %0
  store i32 1255, i32* %a, align 4, !dbg !161
  %8 = load i32* %2, align 4, !dbg !162
  %9 = load i32* %a, align 4, !dbg !162
  %int_cast_to_i64 = zext i32 %9 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !162
  %10 = udiv i32 %8, %9, !dbg !162
  store i32 %10, i32* %b, align 4, !dbg !162
  %11 = load i32* %a, align 4, !dbg !162
  %12 = load i32* %b, align 4, !dbg !162
  %13 = add i32 %11, %12, !dbg !162
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !162
  %14 = udiv i32 %13, 2, !dbg !162
  store i32 %14, i32* %a, align 4, !dbg !162
  %15 = load i32* %2, align 4, !dbg !163
  %16 = load i32* %a, align 4, !dbg !163
  %int_cast_to_i642 = zext i32 %16 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !163
  %17 = udiv i32 %15, %16, !dbg !163
  store i32 %17, i32* %b, align 4, !dbg !163
  %18 = load i32* %a, align 4, !dbg !163
  %19 = load i32* %b, align 4, !dbg !163
  %20 = add i32 %18, %19, !dbg !163
  %int_cast_to_i643 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !163
  %21 = udiv i32 %20, 2, !dbg !163
  store i32 %21, i32* %a, align 4, !dbg !163
  %22 = load i32* %2, align 4, !dbg !164
  %23 = load i32* %a, align 4, !dbg !164
  %int_cast_to_i644 = zext i32 %23 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !164
  %24 = udiv i32 %22, %23, !dbg !164
  store i32 %24, i32* %b, align 4, !dbg !164
  %25 = load i32* %a, align 4, !dbg !164
  %26 = load i32* %b, align 4, !dbg !164
  %27 = add i32 %25, %26, !dbg !164
  %int_cast_to_i645 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !164
  %28 = udiv i32 %27, 2, !dbg !164
  store i32 %28, i32* %a, align 4, !dbg !164
  %29 = load i32* %2, align 4, !dbg !165
  %30 = load i32* %a, align 4, !dbg !165
  %int_cast_to_i646 = zext i32 %30 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !165
  %31 = udiv i32 %29, %30, !dbg !165
  store i32 %31, i32* %b, align 4, !dbg !165
  %32 = load i32* %a, align 4, !dbg !165
  %33 = load i32* %b, align 4, !dbg !165
  %34 = add i32 %32, %33, !dbg !165
  %int_cast_to_i647 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !165
  %35 = udiv i32 %34, 2, !dbg !165
  store i32 %35, i32* %a, align 4, !dbg !165
  %36 = load i32* %a, align 4, !dbg !166
  store i32 %36, i32* %1, !dbg !166
  br label %37, !dbg !166

; <label>:37                                      ; preds = %7, %5
  %38 = load i32* %1, !dbg !167
  ret i32 %38, !dbg !167
}

; Function Attrs: nounwind uwtable
define i32 @my_round(i32 %x) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !168
  %4 = icmp slt i32 %3, 0, !dbg !168
  %5 = load i32* %2, align 4, !dbg !170
  %6 = mul nsw i32 2, %5, !dbg !170
  br i1 %4, label %7, label %10, !dbg !168

; <label>:7                                       ; preds = %0
  %8 = sub nsw i32 %6, 1, !dbg !170
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !170
  %9 = sdiv i32 %8, 2, !dbg !170
  store i32 %9, i32* %1, !dbg !170
  br label %13, !dbg !170

; <label>:10                                      ; preds = %0
  %11 = add nsw i32 %6, 1, !dbg !171
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !171
  %12 = sdiv i32 %11, 2, !dbg !171
  store i32 %12, i32* %1, !dbg !171
  br label %13, !dbg !171

; <label>:13                                      ; preds = %10, %7
  %14 = load i32* %1, !dbg !172
  ret i32 %14, !dbg !172
}

; Function Attrs: nounwind uwtable
define i32 @texture1(i32 %x, i32 %y, i32 %z) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %v = alloca i32, align 4
  %col = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  store i32 %y, i32* %2, align 4
  store i32 %z, i32* %3, align 4
  store i32 255, i32* %r, align 4, !dbg !173
  store i32 0, i32* %b, align 4, !dbg !174
  store i32 0, i32* %col, align 4, !dbg !175
  %4 = load i32* @light, align 4, !dbg !176
  %5 = icmp ne i32 %4, 0, !dbg !176
  br i1 %5, label %6, label %9, !dbg !176

; <label>:6                                       ; preds = %0
  %7 = load i32* @lcoff, align 4, !dbg !178
  %8 = mul nsw i32 255, %7, !dbg !178
  store i32 %8, i32* %r, align 4, !dbg !178
  br label %9, !dbg !180

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %r, align 4, !dbg !181
  store i32 %10, i32* %b, align 4, !dbg !181
  %11 = load i32* @texture, align 4, !dbg !182
  %12 = icmp eq i32 %11, 1, !dbg !182
  br i1 %12, label %13, label %14, !dbg !182

; <label>:13                                      ; preds = %9
  store i32 -65536, i32* %col, align 4, !dbg !184
  br label %33, !dbg !186

; <label>:14                                      ; preds = %9
  %15 = load i32* @texture, align 4, !dbg !187
  %16 = icmp eq i32 %15, 2, !dbg !187
  br i1 %16, label %17, label %33, !dbg !187

; <label>:17                                      ; preds = %14
  %18 = load i32* %1, align 4, !dbg !189
  %19 = call i32 @my_round(i32 %18), !dbg !189
  %20 = load i32* %3, align 4, !dbg !189
  %21 = call i32 @my_round(i32 %20), !dbg !189
  %22 = add nsw i32 %19, %21, !dbg !189
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !189
  %23 = srem i32 %22, 2, !dbg !189
  store i32 %23, i32* %v, align 4, !dbg !189
  %24 = load i32* %v, align 4, !dbg !191
  %25 = icmp eq i32 %24, 0, !dbg !191
  br i1 %25, label %26, label %29, !dbg !191

; <label>:26                                      ; preds = %17
  %27 = load i32* %b, align 4, !dbg !193
  %28 = or i32 -16777216, %27, !dbg !193
  store i32 %28, i32* %col, align 4, !dbg !193
  br label %33, !dbg !195

; <label>:29                                      ; preds = %17
  %30 = load i32* %r, align 4, !dbg !196
  %int_cast_to_i641 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !196
  %31 = shl i32 %30, 16, !dbg !196
  %32 = or i32 -16777216, %31, !dbg !196
  store i32 %32, i32* %col, align 4, !dbg !196
  br label %33

; <label>:33                                      ; preds = %14, %29, %26, %13
  %34 = load i32* %col, align 4, !dbg !198
  %35 = sext i32 %34 to i64, !dbg !198
  call void @klee_bound_error(i64 %35, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), double 1.000000e+00), !dbg !198
  %36 = load i32* %1, align 4, !dbg !199
  %37 = sext i32 %36 to i64, !dbg !199
  call void @klee_bound_error(i64 %37, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), double 1.000000e+00), !dbg !199
  %38 = load i32* %2, align 4, !dbg !200
  %39 = sext i32 %38 to i64, !dbg !200
  call void @klee_bound_error(i64 %39, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), double 1.000000e+00), !dbg !200
  %40 = load i32* %3, align 4, !dbg !201
  %41 = sext i32 %40 to i64, !dbg !201
  call void @klee_bound_error(i64 %41, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), double 1.000000e+00), !dbg !201
  %42 = load i32* %r, align 4, !dbg !202
  %43 = sext i32 %42 to i64, !dbg !202
  call void @klee_bound_error(i64 %43, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !202
  %44 = load i32* %g, align 4, !dbg !203
  %45 = sext i32 %44 to i64, !dbg !203
  call void @klee_bound_error(i64 %45, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !203
  %46 = load i32* %b, align 4, !dbg !204
  %47 = sext i32 %46 to i64, !dbg !204
  call void @klee_bound_error(i64 %47, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !204
  %48 = load i32* %v, align 4, !dbg !205
  %49 = sext i32 %48 to i64, !dbg !205
  call void @klee_bound_error(i64 %49, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), double 1.000000e+00), !dbg !205
  %50 = load i32* %col, align 4, !dbg !206
  ret i32 %50, !dbg !206
}

declare void @klee_bound_error(i64, i8*, double) #3

; Function Attrs: nounwind uwtable
define void @init(i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*
  %index = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %ze = alloca i32, align 4
  %xd = alloca i32, align 4
  %yd = alloca i32, align 4
  %zd = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %lx = alloca i32, align 4
  %ly = alloca i32, align 4
  %lz = alloca i32, align 4
  %lly = alloca i32, align 4
  %bl = alloca i32, align 4
  %t = alloca i32, align 4
  %l = alloca i32, align 4
  %w1 = alloca i32, align 4
  %h1 = alloca i32, align 4
  store i32 %arg0, i32* %1, align 4
  store i32 %arg1, i32* %2, align 4
  store i32 %arg2, i32* %3, align 4
  store i32 %arg3, i32* %4, align 4
  store i32 2, i32* @w, align 4, !dbg !207
  store i32 2, i32* @h, align 4, !dbg !208
  %6 = load i32* %1, align 4, !dbg !209
  store i32 %6, i32* @texture, align 4, !dbg !209
  %7 = load i32* %2, align 4, !dbg !210
  store i32 %7, i32* @light, align 4, !dbg !210
  %8 = load i32* @w, align 4, !dbg !211
  %9 = load i32* @h, align 4, !dbg !211
  %10 = mul nsw i32 %8, %9, !dbg !211
  %11 = zext i32 %10 to i64, !dbg !211
  store i8* null, i8** %5, !dbg !211
  %12 = alloca i32, i64 %11, align 16, !dbg !211
  %13 = load i32* %3, align 4, !dbg !212
  store i32 %13, i32* %lly, align 4, !dbg !212
  %14 = load i32* %4, align 4, !dbg !213
  store i32 %14, i32* %ye, align 4, !dbg !213
  store i32 0, i32* %nx, align 4, !dbg !214
  store i32 1, i32* %ny, align 4, !dbg !215
  store i32 0, i32* %nz, align 4, !dbg !216
  store i32 -16777216, i32* %bl, align 4, !dbg !217
  %15 = load i32* @w, align 4, !dbg !218
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !218
  %16 = sdiv i32 %15, 2, !dbg !218
  store i32 %16, i32* %w1, align 4, !dbg !218
  %17 = load i32* @h, align 4, !dbg !219
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !219
  %18 = sdiv i32 %17, 2, !dbg !219
  store i32 %18, i32* %h1, align 4, !dbg !219
  store i32 0, i32* %xe, align 4, !dbg !220
  store i32 0, i32* %ze, align 4, !dbg !221
  store i32 -1, i32* @k, align 4, !dbg !222
  store i32 0, i32* %y, align 4, !dbg !223
  br label %19, !dbg !223

; <label>:19                                      ; preds = %150, %0
  %20 = load i32* %y, align 4, !dbg !223
  %21 = load i32* @h, align 4, !dbg !223
  %22 = icmp slt i32 %20, %21, !dbg !223
  br i1 %22, label %23, label %153, !dbg !223

; <label>:23                                      ; preds = %19
  store i32 0, i32* %x, align 4, !dbg !225
  br label %24, !dbg !225

; <label>:24                                      ; preds = %145, %23
  %25 = load i32* %x, align 4, !dbg !225
  %26 = load i32* @w, align 4, !dbg !225
  %27 = icmp slt i32 %25, %26, !dbg !225
  br i1 %27, label %28, label %150, !dbg !225

; <label>:28                                      ; preds = %24
  store i32 -1, i32* %t, align 4, !dbg !228
  %29 = load i32* %x, align 4, !dbg !230
  %30 = load i32* %w1, align 4, !dbg !230
  %31 = sub nsw i32 %29, %30, !dbg !230
  %32 = load i32* %w1, align 4, !dbg !230
  %int_cast_to_i642 = zext i32 %32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !230
  %33 = sdiv i32 %31, %32, !dbg !230
  store i32 %33, i32* %xd, align 4, !dbg !230
  %34 = load i32* %h1, align 4, !dbg !231
  %35 = load i32* %y, align 4, !dbg !231
  %36 = sub nsw i32 %34, %35, !dbg !231
  %37 = load i32* %h1, align 4, !dbg !231
  %int_cast_to_i643 = zext i32 %37 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !231
  %38 = sdiv i32 %36, %37, !dbg !231
  store i32 %38, i32* %yd, align 4, !dbg !231
  store i32 -1, i32* %zd, align 4, !dbg !232
  %39 = load i32* %xd, align 4, !dbg !233
  %40 = load i32* %xd, align 4, !dbg !233
  %41 = mul nsw i32 %39, %40, !dbg !233
  %42 = load i32* %yd, align 4, !dbg !233
  %43 = load i32* %yd, align 4, !dbg !233
  %44 = mul nsw i32 %42, %43, !dbg !233
  %45 = add nsw i32 %41, %44, !dbg !233
  %46 = load i32* %zd, align 4, !dbg !233
  %47 = load i32* %zd, align 4, !dbg !233
  %48 = mul nsw i32 %46, %47, !dbg !233
  %49 = add nsw i32 %45, %48, !dbg !233
  store i32 %49, i32* %l, align 4, !dbg !233
  %50 = load i32* %l, align 4, !dbg !234
  %51 = load i32* %xd, align 4, !dbg !234
  %int_cast_to_i644 = zext i32 %50 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !234
  %52 = sdiv i32 %51, %50, !dbg !234
  store i32 %52, i32* %xd, align 4, !dbg !234
  %53 = load i32* %l, align 4, !dbg !235
  %54 = load i32* %yd, align 4, !dbg !235
  %int_cast_to_i645 = zext i32 %53 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !235
  %55 = sdiv i32 %54, %53, !dbg !235
  store i32 %55, i32* %yd, align 4, !dbg !235
  %56 = load i32* %l, align 4, !dbg !236
  %57 = load i32* %zd, align 4, !dbg !236
  %int_cast_to_i646 = zext i32 %56 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !236
  %58 = sdiv i32 %57, %56, !dbg !236
  store i32 %58, i32* %zd, align 4, !dbg !236
  %59 = load i32* @k, align 4, !dbg !237
  %60 = load i32* %ye, align 4, !dbg !237
  %61 = sub nsw i32 %59, %60, !dbg !237
  %62 = load i32* %yd, align 4, !dbg !237
  %63 = mul nsw i32 %61, %62, !dbg !237
  %64 = icmp sle i32 %63, 0, !dbg !237
  br i1 %64, label %65, label %66, !dbg !237

; <label>:65                                      ; preds = %28
  store i32 -1, i32* %t, align 4, !dbg !239
  br label %72, !dbg !241

; <label>:66                                      ; preds = %28
  %67 = load i32* @k, align 4, !dbg !242
  %68 = load i32* %ye, align 4, !dbg !242
  %69 = sub nsw i32 %67, %68, !dbg !242
  %70 = load i32* %yd, align 4, !dbg !242
  %int_cast_to_i647 = zext i32 %70 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !242
  %71 = sdiv i32 %69, %70, !dbg !242
  store i32 %71, i32* %t, align 4, !dbg !242
  br label %72

; <label>:72                                      ; preds = %66, %65
  %73 = load i32* %y, align 4, !dbg !244
  %74 = load i32* @w, align 4, !dbg !244
  %75 = mul nsw i32 %73, %74, !dbg !244
  %76 = load i32* %x, align 4, !dbg !244
  %77 = add nsw i32 %75, %76, !dbg !244
  store i32 %77, i32* %index, align 4, !dbg !244
  %78 = load i32* %t, align 4, !dbg !245
  %79 = icmp sge i32 %78, 0, !dbg !245
  br i1 %79, label %80, label %140, !dbg !245

; <label>:80                                      ; preds = %72
  %81 = load i32* %xe, align 4, !dbg !247
  %82 = load i32* %t, align 4, !dbg !247
  %83 = load i32* %xd, align 4, !dbg !247
  %84 = mul nsw i32 %82, %83, !dbg !247
  %85 = add nsw i32 %81, %84, !dbg !247
  store i32 %85, i32* %ix, align 4, !dbg !247
  %86 = load i32* %ye, align 4, !dbg !249
  %87 = load i32* %t, align 4, !dbg !249
  %88 = load i32* %yd, align 4, !dbg !249
  %89 = mul nsw i32 %87, %88, !dbg !249
  %90 = add nsw i32 %86, %89, !dbg !249
  store i32 %90, i32* %iy, align 4, !dbg !249
  %91 = load i32* %ze, align 4, !dbg !250
  %92 = load i32* %t, align 4, !dbg !250
  %93 = load i32* %zd, align 4, !dbg !250
  %94 = mul nsw i32 %92, %93, !dbg !250
  %95 = add nsw i32 %91, %94, !dbg !250
  store i32 %95, i32* %iz, align 4, !dbg !250
  store i32 0, i32* %lx, align 4, !dbg !251
  %96 = load i32* %lly, align 4, !dbg !252
  store i32 %96, i32* %ly, align 4, !dbg !252
  store i32 0, i32* %lz, align 4, !dbg !253
  %97 = load i32* %lx, align 4, !dbg !254
  %98 = load i32* %ix, align 4, !dbg !254
  %99 = sub nsw i32 %97, %98, !dbg !254
  store i32 %99, i32* %lx, align 4, !dbg !254
  %100 = load i32* %ly, align 4, !dbg !255
  %101 = load i32* %iy, align 4, !dbg !255
  %102 = sub nsw i32 %100, %101, !dbg !255
  store i32 %102, i32* %ly, align 4, !dbg !255
  %103 = load i32* %lz, align 4, !dbg !256
  %104 = load i32* %iz, align 4, !dbg !256
  %105 = sub nsw i32 %103, %104, !dbg !256
  store i32 %105, i32* %lz, align 4, !dbg !256
  %106 = load i32* %lx, align 4, !dbg !257
  %107 = load i32* %lx, align 4, !dbg !257
  %108 = mul nsw i32 %106, %107, !dbg !257
  %109 = load i32* %ly, align 4, !dbg !257
  %110 = load i32* %ly, align 4, !dbg !257
  %111 = mul nsw i32 %109, %110, !dbg !257
  %112 = add nsw i32 %108, %111, !dbg !257
  %113 = load i32* %lz, align 4, !dbg !257
  %114 = load i32* %lz, align 4, !dbg !257
  %115 = mul nsw i32 %113, %114, !dbg !257
  %116 = add nsw i32 %112, %115, !dbg !257
  %117 = call i32 @isqrt(i32 %116), !dbg !257
  store i32 %117, i32* @sng, align 4, !dbg !257
  %118 = load i32* @sng, align 4, !dbg !258
  %int_cast_to_i648 = zext i32 %118 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !258
  %119 = sdiv i32 1, %118, !dbg !258
  store i32 %119, i32* @sng, align 4, !dbg !258
  %120 = load i32* %lx, align 4, !dbg !259
  %121 = load i32* %nx, align 4, !dbg !259
  %122 = mul nsw i32 %120, %121, !dbg !259
  %123 = load i32* %ly, align 4, !dbg !259
  %124 = load i32* %ny, align 4, !dbg !259
  %125 = mul nsw i32 %123, %124, !dbg !259
  %126 = add nsw i32 %122, %125, !dbg !259
  %127 = load i32* %lz, align 4, !dbg !259
  %128 = load i32* %nz, align 4, !dbg !259
  %129 = mul nsw i32 %127, %128, !dbg !259
  %130 = add nsw i32 %126, %129, !dbg !259
  %131 = load i32* @sng, align 4, !dbg !259
  %132 = mul nsw i32 %130, %131, !dbg !259
  store i32 %132, i32* @lcoff, align 4, !dbg !259
  %133 = load i32* %ix, align 4, !dbg !260
  %134 = load i32* %iy, align 4, !dbg !260
  %135 = load i32* %iz, align 4, !dbg !260
  %136 = call i32 @texture1(i32 %133, i32 %134, i32 %135), !dbg !260
  %137 = load i32* %index, align 4, !dbg !260
  %138 = sext i32 %137 to i64, !dbg !260
  %139 = getelementptr inbounds i32* %12, i64 %138, !dbg !260
  store i32 %136, i32* %139, align 4, !dbg !260
  br label %145, !dbg !261

; <label>:140                                     ; preds = %72
  %141 = load i32* %bl, align 4, !dbg !262
  %142 = load i32* %index, align 4, !dbg !262
  %143 = sext i32 %142 to i64, !dbg !262
  %144 = getelementptr inbounds i32* %12, i64 %143, !dbg !262
  store i32 %141, i32* %144, align 4, !dbg !262
  br label %145

; <label>:145                                     ; preds = %140, %80
  %146 = load i32* @numIterations, align 4, !dbg !264
  %147 = add nsw i32 %146, 1, !dbg !264
  store i32 %147, i32* @numIterations, align 4, !dbg !264
  %148 = load i32* %x, align 4, !dbg !225
  %149 = add nsw i32 %148, 1, !dbg !225
  store i32 %149, i32* %x, align 4, !dbg !225
  br label %24, !dbg !225

; <label>:150                                     ; preds = %24
  %151 = load i32* %y, align 4, !dbg !223
  %152 = add nsw i32 %151, 1, !dbg !223
  store i32 %152, i32* %y, align 4, !dbg !223
  br label %19, !dbg !223

; <label>:153                                     ; preds = %19
  %154 = getelementptr inbounds i32* %12, i64 0, !dbg !265
  %155 = load i32* %154, align 4, !dbg !265
  %156 = sext i32 %155 to i64, !dbg !265
  call void @klee_bound_error(i64 %156, i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), double 1.000000e+00), !dbg !265
  %157 = getelementptr inbounds i32* %12, i64 1, !dbg !266
  %158 = load i32* %157, align 4, !dbg !266
  %159 = sext i32 %158 to i64, !dbg !266
  call void @klee_bound_error(i64 %159, i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), double 1.000000e+00), !dbg !266
  %160 = load i32* @k, align 4, !dbg !267
  %161 = sext i32 %160 to i64, !dbg !267
  call void @klee_bound_error(i64 %161, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), double 1.000000e+00), !dbg !267
  %162 = load i32* @texture, align 4, !dbg !268
  %163 = sext i32 %162 to i64, !dbg !268
  call void @klee_bound_error(i64 %163, i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0), double 1.000000e+00), !dbg !268
  %164 = load i32* @light, align 4, !dbg !269
  %165 = sext i32 %164 to i64, !dbg !269
  call void @klee_bound_error(i64 %165, i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0), double 1.000000e+00), !dbg !269
  %166 = load i32* @lcoff, align 4, !dbg !270
  %167 = sext i32 %166 to i64, !dbg !270
  call void @klee_bound_error(i64 %167, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !270
  %168 = load i32* @sng, align 4, !dbg !271
  %169 = sext i32 %168 to i64, !dbg !271
  call void @klee_bound_error(i64 %169, i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), double 1.000000e+00), !dbg !271
  %170 = load i32* @numIterations, align 4, !dbg !272
  %171 = sext i32 %170 to i64, !dbg !272
  call void @klee_bound_error(i64 %171, i8* getelementptr inbounds ([14 x i8]* @.str15, i32 0, i32 0), double 1.000000e+00), !dbg !272
  %172 = load i32* %index, align 4, !dbg !273
  %173 = sext i32 %172 to i64, !dbg !273
  call void @klee_bound_error(i64 %173, i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), double 1.000000e+00), !dbg !273
  %174 = load i32* %x, align 4, !dbg !274
  %175 = sext i32 %174 to i64, !dbg !274
  call void @klee_bound_error(i64 %175, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), double 1.000000e+00), !dbg !274
  %176 = load i32* %y, align 4, !dbg !275
  %177 = sext i32 %176 to i64, !dbg !275
  call void @klee_bound_error(i64 %177, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), double 1.000000e+00), !dbg !275
  %178 = load i32* %xe, align 4, !dbg !276
  %179 = sext i32 %178 to i64, !dbg !276
  call void @klee_bound_error(i64 %179, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), double 1.000000e+00), !dbg !276
  %180 = load i32* %ye, align 4, !dbg !277
  %181 = sext i32 %180 to i64, !dbg !277
  call void @klee_bound_error(i64 %181, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0), double 1.000000e+00), !dbg !277
  %182 = load i32* %ze, align 4, !dbg !278
  %183 = sext i32 %182 to i64, !dbg !278
  call void @klee_bound_error(i64 %183, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0), double 1.000000e+00), !dbg !278
  %184 = load i32* %xd, align 4, !dbg !279
  %185 = sext i32 %184 to i64, !dbg !279
  call void @klee_bound_error(i64 %185, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), double 1.000000e+00), !dbg !279
  %186 = load i32* %yd, align 4, !dbg !280
  %187 = sext i32 %186 to i64, !dbg !280
  call void @klee_bound_error(i64 %187, i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), double 1.000000e+00), !dbg !280
  %188 = load i32* %zd, align 4, !dbg !281
  %189 = sext i32 %188 to i64, !dbg !281
  call void @klee_bound_error(i64 %189, i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), double 1.000000e+00), !dbg !281
  %190 = load i32* %ix, align 4, !dbg !282
  %191 = sext i32 %190 to i64, !dbg !282
  call void @klee_bound_error(i64 %191, i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0), double 1.000000e+00), !dbg !282
  %192 = load i32* %iy, align 4, !dbg !283
  %193 = sext i32 %192 to i64, !dbg !283
  call void @klee_bound_error(i64 %193, i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0), double 1.000000e+00), !dbg !283
  %194 = load i32* %iz, align 4, !dbg !284
  %195 = sext i32 %194 to i64, !dbg !284
  call void @klee_bound_error(i64 %195, i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), double 1.000000e+00), !dbg !284
  %196 = load i32* %nx, align 4, !dbg !285
  %197 = sext i32 %196 to i64, !dbg !285
  call void @klee_bound_error(i64 %197, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0), double 1.000000e+00), !dbg !285
  %198 = load i32* %ny, align 4, !dbg !286
  %199 = sext i32 %198 to i64, !dbg !286
  call void @klee_bound_error(i64 %199, i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), double 1.000000e+00), !dbg !286
  %200 = load i32* %nz, align 4, !dbg !287
  %201 = sext i32 %200 to i64, !dbg !287
  call void @klee_bound_error(i64 %201, i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), double 1.000000e+00), !dbg !287
  %202 = load i32* %lx, align 4, !dbg !288
  %203 = sext i32 %202 to i64, !dbg !288
  call void @klee_bound_error(i64 %203, i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0), double 1.000000e+00), !dbg !288
  %204 = load i32* %ly, align 4, !dbg !289
  %205 = sext i32 %204 to i64, !dbg !289
  call void @klee_bound_error(i64 %205, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0), double 1.000000e+00), !dbg !289
  %206 = load i32* %lx, align 4, !dbg !290
  %207 = sext i32 %206 to i64, !dbg !290
  call void @klee_bound_error(i64 %207, i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0), double 1.000000e+00), !dbg !290
  %208 = load i32* %lly, align 4, !dbg !291
  %209 = sext i32 %208 to i64, !dbg !291
  call void @klee_bound_error(i64 %209, i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), double 1.000000e+00), !dbg !291
  %210 = load i32* %bl, align 4, !dbg !292
  %211 = sext i32 %210 to i64, !dbg !292
  call void @klee_bound_error(i64 %211, i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0), double 1.000000e+00), !dbg !292
  %212 = load i32* @lcoff, align 4, !dbg !293
  %213 = sext i32 %212 to i64, !dbg !293
  call void @klee_bound_error(i64 %213, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !293
  %214 = load i32* %w1, align 4, !dbg !294
  %215 = sext i32 %214 to i64, !dbg !294
  call void @klee_bound_error(i64 %215, i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0), double 1.000000e+00), !dbg !294
  %216 = load i32* %h1, align 4, !dbg !295
  %217 = sext i32 %216 to i64, !dbg !295
  call void @klee_bound_error(i64 %217, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), double 1.000000e+00), !dbg !295
  %218 = load i8** %5, !dbg !296
  ret void, !dbg !296
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %arg0 = alloca i32, align 4
  %arg1 = alloca i32, align 4
  %arg2 = alloca i32, align 4
  %arg3 = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = bitcast i32* %arg0 to i8*, !dbg !297
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0)), !dbg !297
  %4 = bitcast i32* %arg1 to i8*, !dbg !298
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0)), !dbg !298
  %5 = bitcast i32* %arg2 to i8*, !dbg !299
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0)), !dbg !299
  %6 = bitcast i32* %arg3 to i8*, !dbg !300
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0)), !dbg !300
  %7 = bitcast i32* %arg0 to i8*, !dbg !301
  call void @klee_track_error(i8* %7, i8* getelementptr inbounds ([9 x i8]* @.str40, i32 0, i32 0)), !dbg !301
  %8 = bitcast i32* %arg1 to i8*, !dbg !302
  call void @klee_track_error(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str41, i32 0, i32 0)), !dbg !302
  %9 = bitcast i32* %arg2 to i8*, !dbg !303
  call void @klee_track_error(i8* %9, i8* getelementptr inbounds ([9 x i8]* @.str42, i32 0, i32 0)), !dbg !303
  %10 = bitcast i32* %arg3 to i8*, !dbg !304
  call void @klee_track_error(i8* %10, i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0)), !dbg !304
  %11 = load i32* %arg0, align 4, !dbg !305
  %12 = load i32* %arg1, align 4, !dbg !305
  %13 = load i32* %arg2, align 4, !dbg !305
  %14 = load i32* %arg3, align 4, !dbg !305
  call void @init(i32 %11, i32 %12, i32 %13, i32 %14), !dbg !305
  ret i32 0, !dbg !306
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_track_error(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str44, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str246, i64 0, i64 0)) #8, !dbg !309
  unreachable, !dbg !309

if.end:                                           ; preds = %entry
  ret void, !dbg !310
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !311
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #9, !dbg !311
  %1 = load i32* %x, align 4, !dbg !312, !tbaa !313
  ret i32 %1, !dbg !312
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !317
  br i1 %cmp, label %if.end, label %if.then, !dbg !317

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str347, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1448, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2549, i64 0, i64 0)) #8, !dbg !319
  unreachable, !dbg !319

if.end:                                           ; preds = %entry
  ret void, !dbg !321
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !322
  br i1 %cmp, label %if.end, label %if.then, !dbg !322

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str650, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1751, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2852, i64 0, i64 0)) #8, !dbg !324
  unreachable, !dbg !324

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !325
  %cmp1 = icmp eq i32 %add, %end, !dbg !325
  br i1 %cmp1, label %return, label %if.else, !dbg !325

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !327
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #9, !dbg !327
  %cmp3 = icmp eq i32 %start, 0, !dbg !329
  %1 = load i32* %x, align 4, !dbg !331, !tbaa !313
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !329

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !331
  %conv6 = zext i1 %cmp5 to i64, !dbg !331
  call void @klee_assume(i64 %conv6) #9, !dbg !331
  br label %if.end14, !dbg !333

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !334
  %conv10 = zext i1 %cmp8 to i64, !dbg !334
  call void @klee_assume(i64 %conv10) #9, !dbg !334
  %2 = load i32* %x, align 4, !dbg !336, !tbaa !313
  %cmp11 = icmp slt i32 %2, %end, !dbg !336
  %conv13 = zext i1 %cmp11 to i64, !dbg !336
  call void @klee_assume(i64 %conv13) #9, !dbg !336
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !337, !tbaa !313
  br label %return, !dbg !337

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !338
}

declare void @klee_assume(i64) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !339
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !339

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !340
  %wide.load = load <16 x i8>* %1, align 1, !dbg !340
  %next.gep.sum282 = or i64 %index, 16, !dbg !340
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !340
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !340
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !340
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !340
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !340
  %next.gep106.sum299 = or i64 %index, 16, !dbg !340
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !340
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !340
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !340
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !341

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
  %dec = add i64 %len.addr.04, -1, !dbg !339
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !340
  %8 = load i8* %src.06, align 1, !dbg !340, !tbaa !344
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !340
  store i8 %8, i8* %dest.05, align 1, !dbg !340, !tbaa !344
  %cmp = icmp eq i64 %dec, 0, !dbg !339
  br i1 %cmp, label %while.end, label %while.body, !dbg !339, !llvm.loop !345

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !346
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !347
  br i1 %cmp, label %return, label %if.end, !dbg !347

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !349
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !349

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !351
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !351

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !351
  %wide.load = load <16 x i8>* %1, align 1, !dbg !351
  %next.gep.sum610 = or i64 %index, 16, !dbg !351
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !351
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !351
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !351
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !351
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !351
  %next.gep136.sum627 = or i64 %index, 16, !dbg !351
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !351
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !351
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !351
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !353

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
  %dec = add i64 %count.addr.028, -1, !dbg !351
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !351
  %8 = load i8* %b.030, align 1, !dbg !351, !tbaa !344
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !351
  store i8 %8, i8* %a.029, align 1, !dbg !351, !tbaa !344
  %tobool = icmp eq i64 %dec, 0, !dbg !351
  br i1 %tobool, label %return, label %while.body, !dbg !351, !llvm.loop !354

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !355
  %tobool832 = icmp eq i64 %count, 0, !dbg !357
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !357

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !358
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !355
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !357
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !357
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !357
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !357
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !357
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !357
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !357
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !357
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !357
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !357
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !357
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !357
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !357
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !357
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !357
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !357
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !357
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !357
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !357
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !357
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !359

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !357
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !357
  %19 = load i8* %b.135, align 1, !dbg !357, !tbaa !344
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !357
  store i8 %19, i8* %a.134, align 1, !dbg !357, !tbaa !344
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !357
  br i1 %tobool8, label %return, label %while.body9, !dbg !357, !llvm.loop !360

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !361
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !362
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !362

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !363
  %wide.load = load <16 x i8>* %1, align 1, !dbg !363
  %next.gep.sum283 = or i64 %index, 16, !dbg !363
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !363
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !363
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !363
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !363
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !363
  %next.gep107.sum300 = or i64 %index, 16, !dbg !363
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !363
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !363
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !363
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !364

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
  %dec = add i64 %len.addr.04, -1, !dbg !362
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !363
  %8 = load i8* %src.06, align 1, !dbg !363, !tbaa !344
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !363
  store i8 %8, i8* %dest.05, align 1, !dbg !363, !tbaa !344
  %cmp = icmp eq i64 %dec, 0, !dbg !362
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !362, !llvm.loop !365

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !362

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !366
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !367
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !367

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !368
  br label %while.body, !dbg !367

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !367
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !368
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !368, !tbaa !344
  %cmp = icmp eq i64 %dec, 0, !dbg !367
  br i1 %cmp, label %while.end, label %while.body, !dbg !367

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !369
}

attributes #0 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noreturn nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !36, !46, !58, !69, !81, !99, !113, !127}
!llvm.module.flags = !{!142, !143}
!llvm.ident = !{!144, !145, !145, !145, !145, !145, !145, !145, !145}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !27, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"plane.c", metadata !"/home/himeshi/Projects/workspace/simpleRayTracer"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !14, metadata !15, metadata !18, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"abs", metadata !"abs", metadata !"", i32 216, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @abs, null, null, metadata !2, i32 216} ; [ DW_TAG_subprogram
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"isqrt", metadata !"isqrt", metadata !"", i32 224, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isqrt, null, null, metadata !2, i32 224} ; [ DW_TAG_subp
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"usqrt4", metadata !"usqrt4", metadata !"", i32 242, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @usqrt4, null, null, metadata !2, i32 242} ; [ DW_TAG
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13, metadata !13}
!13 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"my_round", metadata !"my_round", metadata !"", i32 276, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @my_round, null, null, metadata !2, i32 276} ; [ D
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"texture1", metadata !"texture1", metadata !"", i32 284, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @texture1, null, null, metadata !2, i32
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init", metadata !"init", metadata !"", i32 329, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32)* @init, null, null, metadata !2, i32 329} 
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8}
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 449, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 449} ; [ DW_TAG
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !8, metadata !8, metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!28 = metadata !{i32 786484, i32 0, null, metadata !"numIterations", metadata !"numIterations", metadata !"", metadata !5, i32 214, metadata !8, i32 0, i32 1, i32* @numIterations, null} ; [ DW_TAG_variable ] [numIterations] [line 214] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"w", metadata !"w", metadata !"", metadata !5, i32 207, metadata !8, i32 0, i32 1, i32* @w, null} ; [ DW_TAG_variable ] [w] [line 207] [def]
!30 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !5, i32 207, metadata !8, i32 0, i32 1, i32* @h, null} ; [ DW_TAG_variable ] [h] [line 207] [def]
!31 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !5, i32 208, metadata !8, i32 0, i32 1, i32* @k, null} ; [ DW_TAG_variable ] [k] [line 208] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"texture", metadata !"texture", metadata !"", metadata !5, i32 210, metadata !8, i32 0, i32 1, i32* @texture, null} ; [ DW_TAG_variable ] [texture] [line 210] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"light", metadata !"light", metadata !"", metadata !5, i32 210, metadata !8, i32 0, i32 1, i32* @light, null} ; [ DW_TAG_variable ] [light] [line 210] [def]
!34 = metadata !{i32 786484, i32 0, null, metadata !"lcoff", metadata !"lcoff", metadata !"", metadata !5, i32 212, metadata !8, i32 0, i32 1, i32* @lcoff, null} ; [ DW_TAG_variable ] [lcoff] [line 212] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"sng", metadata !"sng", metadata !"", metadata !5, i32 213, metadata !8, i32 0, i32 1, i32* @sng, null} ; [ DW_TAG_variable ] [sng] [line 213] [def]
!36 = metadata !{i32 786449, metadata !37, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !38, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!37 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786478, metadata !37, metadata !40, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!40 = metadata !{i32 786473, metadata !37}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !43}
!43 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !39, metadata !"z", metadata !40, i32 16777228, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!46 = metadata !{i32 786449, metadata !47, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !48, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!47 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786478, metadata !47, metadata !50, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !55, i32 13} ; [ 
!50 = metadata !{i32 786473, metadata !47}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_int.c]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !8, metadata !53}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !49, metadata !"name", metadata !50, i32 16777229, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!57 = metadata !{i32 786688, metadata !49, metadata !"x", metadata !50, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!58 = metadata !{i32 786449, metadata !59, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !60, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!59 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786478, metadata !59, metadata !62, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!62 = metadata !{i32 786473, metadata !59}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c]
!63 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !65, metadata !65}
!65 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!66 = metadata !{metadata !67, metadata !68}
!67 = metadata !{i32 786689, metadata !61, metadata !"bitWidth", metadata !62, i32 16777236, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!68 = metadata !{i32 786689, metadata !61, metadata !"shift", metadata !62, i32 33554452, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!69 = metadata !{i32 786449, metadata !70, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !71, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!70 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786478, metadata !70, metadata !73, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!73 = metadata !{i32 786473, metadata !70}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!74 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !8, metadata !8, metadata !8, metadata !53}
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80}
!77 = metadata !{i32 786689, metadata !72, metadata !"start", metadata !73, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!78 = metadata !{i32 786689, metadata !72, metadata !"end", metadata !73, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!79 = metadata !{i32 786689, metadata !72, metadata !"name", metadata !73, i32 50331661, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!80 = metadata !{i32 786688, metadata !72, metadata !"x", metadata !73, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!81 = metadata !{i32 786449, metadata !82, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !83, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!82 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786478, metadata !82, metadata !85, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !93, i32 12} 
!85 = metadata !{i32 786473, metadata !82}        ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memcpy.c]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !88, metadata !89, metadata !91}
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{i32 786454, metadata !82, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!92 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!94 = metadata !{i32 786689, metadata !84, metadata !"destaddr", metadata !85, i32 16777228, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!95 = metadata !{i32 786689, metadata !84, metadata !"srcaddr", metadata !85, i32 33554444, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!96 = metadata !{i32 786689, metadata !84, metadata !"len", metadata !85, i32 50331660, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!97 = metadata !{i32 786688, metadata !84, metadata !"dest", metadata !85, i32 13, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!98 = metadata !{i32 786688, metadata !84, metadata !"src", metadata !85, i32 14, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!99 = metadata !{i32 786449, metadata !100, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !101, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/ho
!100 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786478, metadata !100, metadata !103, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !107, 
!103 = metadata !{i32 786473, metadata !100}      ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !88, metadata !88, metadata !89, metadata !106}
!106 = metadata !{i32 786454, metadata !100, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!108 = metadata !{i32 786689, metadata !102, metadata !"dst", metadata !103, i32 16777228, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!109 = metadata !{i32 786689, metadata !102, metadata !"src", metadata !103, i32 33554444, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!110 = metadata !{i32 786689, metadata !102, metadata !"count", metadata !103, i32 50331660, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!111 = metadata !{i32 786688, metadata !102, metadata !"a", metadata !103, i32 13, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!112 = metadata !{i32 786688, metadata !102, metadata !"b", metadata !103, i32 14, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!113 = metadata !{i32 786449, metadata !114, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !115, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!114 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786478, metadata !114, metadata !117, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !121, 
!117 = metadata !{i32 786473, metadata !114}      ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/mempcpy.c]
!118 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{metadata !88, metadata !88, metadata !89, metadata !120}
!120 = metadata !{i32 786454, metadata !114, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!122 = metadata !{i32 786689, metadata !116, metadata !"destaddr", metadata !117, i32 16777227, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!123 = metadata !{i32 786689, metadata !116, metadata !"srcaddr", metadata !117, i32 33554443, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!124 = metadata !{i32 786689, metadata !116, metadata !"len", metadata !117, i32 50331659, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!125 = metadata !{i32 786688, metadata !116, metadata !"dest", metadata !117, i32 12, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!126 = metadata !{i32 786688, metadata !116, metadata !"src", metadata !117, i32 13, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!127 = metadata !{i32 786449, metadata !128, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !129, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!128 = metadata !{metadata !"/home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic"}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786478, metadata !128, metadata !131, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !135, i32
!131 = metadata !{i32 786473, metadata !128}      ; [ DW_TAG_file_type ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memset.c]
!132 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !88, metadata !88, metadata !8, metadata !134}
!134 = metadata !{i32 786454, metadata !128, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !130, metadata !"dst", metadata !131, i32 16777227, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!137 = metadata !{i32 786689, metadata !130, metadata !"s", metadata !131, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!138 = metadata !{i32 786689, metadata !130, metadata !"count", metadata !131, i32 50331659, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!139 = metadata !{i32 786688, metadata !130, metadata !"a", metadata !131, i32 12, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!142 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!143 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!144 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!145 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!146 = metadata !{i32 217, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !4, i32 217, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!148 = metadata !{i32 218, i32 0, metadata !147, null}
!149 = metadata !{i32 219, i32 0, metadata !4, null}
!150 = metadata !{i32 220, i32 0, metadata !4, null}
!151 = metadata !{i32 225, i32 0, metadata !9, null}
!152 = metadata !{i32 229, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !9, i32 229, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!154 = metadata !{i32 230, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !153, i32 229, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!156 = metadata !{i32 231, i32 0, metadata !155, null}
!157 = metadata !{i32 232, i32 0, metadata !155, null}
!158 = metadata !{i32 236, i32 0, metadata !9, null}
!159 = metadata !{i32 245, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !10, i32 245, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!161 = metadata !{i32 247, i32 0, metadata !10, null}
!162 = metadata !{i32 249, i32 0, metadata !10, null}
!163 = metadata !{i32 250, i32 0, metadata !10, null}
!164 = metadata !{i32 251, i32 0, metadata !10, null}
!165 = metadata !{i32 252, i32 0, metadata !10, null}
!166 = metadata !{i32 254, i32 0, metadata !10, null}
!167 = metadata !{i32 255, i32 0, metadata !10, null}
!168 = metadata !{i32 277, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !14, i32 277, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!170 = metadata !{i32 278, i32 0, metadata !169, null}
!171 = metadata !{i32 280, i32 0, metadata !169, null}
!172 = metadata !{i32 281, i32 0, metadata !14, null}
!173 = metadata !{i32 296, i32 0, metadata !15, null}
!174 = metadata !{i32 297, i32 0, metadata !15, null}
!175 = metadata !{i32 298, i32 0, metadata !15, null}
!176 = metadata !{i32 299, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !15, i32 299, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!178 = metadata !{i32 300, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !177, i32 299, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!180 = metadata !{i32 303, i32 0, metadata !179, null}
!181 = metadata !{i32 304, i32 0, metadata !15, null}
!182 = metadata !{i32 306, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !15, i32 306, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!184 = metadata !{i32 307, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !183, i32 306, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!186 = metadata !{i32 308, i32 0, metadata !185, null}
!187 = metadata !{i32 308, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !183, i32 308, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!189 = metadata !{i32 309, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !188, i32 308, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!191 = metadata !{i32 310, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !190, i32 310, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!193 = metadata !{i32 311, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !192, i32 310, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!195 = metadata !{i32 312, i32 0, metadata !194, null}
!196 = metadata !{i32 313, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !192, i32 312, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!198 = metadata !{i32 317, i32 0, metadata !15, null}
!199 = metadata !{i32 318, i32 0, metadata !15, null}
!200 = metadata !{i32 319, i32 0, metadata !15, null}
!201 = metadata !{i32 320, i32 0, metadata !15, null}
!202 = metadata !{i32 321, i32 0, metadata !15, null}
!203 = metadata !{i32 322, i32 0, metadata !15, null}
!204 = metadata !{i32 323, i32 0, metadata !15, null}
!205 = metadata !{i32 324, i32 0, metadata !15, null}
!206 = metadata !{i32 326, i32 0, metadata !15, null}
!207 = metadata !{i32 332, i32 0, metadata !18, null}
!208 = metadata !{i32 333, i32 0, metadata !18, null}
!209 = metadata !{i32 334, i32 0, metadata !18, null}
!210 = metadata !{i32 335, i32 0, metadata !18, null}
!211 = metadata !{i32 337, i32 0, metadata !18, null}
!212 = metadata !{i32 348, i32 0, metadata !18, null}
!213 = metadata !{i32 349, i32 0, metadata !18, null}
!214 = metadata !{i32 351, i32 0, metadata !18, null}
!215 = metadata !{i32 352, i32 0, metadata !18, null}
!216 = metadata !{i32 353, i32 0, metadata !18, null}
!217 = metadata !{i32 354, i32 0, metadata !18, null}
!218 = metadata !{i32 360, i32 0, metadata !18, null}
!219 = metadata !{i32 361, i32 0, metadata !18, null}
!220 = metadata !{i32 363, i32 0, metadata !18, null}
!221 = metadata !{i32 365, i32 0, metadata !18, null}
!222 = metadata !{i32 366, i32 0, metadata !18, null}
!223 = metadata !{i32 368, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !18, i32 368, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!225 = metadata !{i32 369, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 369, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!227 = metadata !{i32 786443, metadata !1, metadata !224, i32 368, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!228 = metadata !{i32 370, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !226, i32 369, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!230 = metadata !{i32 371, i32 0, metadata !229, null}
!231 = metadata !{i32 372, i32 0, metadata !229, null}
!232 = metadata !{i32 373, i32 0, metadata !229, null}
!233 = metadata !{i32 374, i32 0, metadata !229, null}
!234 = metadata !{i32 375, i32 0, metadata !229, null}
!235 = metadata !{i32 376, i32 0, metadata !229, null}
!236 = metadata !{i32 377, i32 0, metadata !229, null}
!237 = metadata !{i32 379, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !229, i32 379, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!239 = metadata !{i32 380, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !238, i32 379, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!241 = metadata !{i32 381, i32 0, metadata !240, null}
!242 = metadata !{i32 382, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !238, i32 381, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!244 = metadata !{i32 385, i32 0, metadata !229, null}
!245 = metadata !{i32 386, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !229, i32 386, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!247 = metadata !{i32 387, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !246, i32 386, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!249 = metadata !{i32 388, i32 0, metadata !248, null}
!250 = metadata !{i32 389, i32 0, metadata !248, null}
!251 = metadata !{i32 390, i32 0, metadata !248, null}
!252 = metadata !{i32 391, i32 0, metadata !248, null}
!253 = metadata !{i32 392, i32 0, metadata !248, null}
!254 = metadata !{i32 393, i32 0, metadata !248, null}
!255 = metadata !{i32 394, i32 0, metadata !248, null}
!256 = metadata !{i32 395, i32 0, metadata !248, null}
!257 = metadata !{i32 397, i32 0, metadata !248, null}
!258 = metadata !{i32 399, i32 0, metadata !248, null}
!259 = metadata !{i32 400, i32 0, metadata !248, null}
!260 = metadata !{i32 401, i32 0, metadata !248, null}
!261 = metadata !{i32 402, i32 0, metadata !248, null}
!262 = metadata !{i32 403, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !246, i32 402, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!264 = metadata !{i32 405, i32 0, metadata !229, null}
!265 = metadata !{i32 409, i32 0, metadata !18, null}
!266 = metadata !{i32 410, i32 0, metadata !18, null}
!267 = metadata !{i32 411, i32 0, metadata !18, null}
!268 = metadata !{i32 412, i32 0, metadata !18, null}
!269 = metadata !{i32 413, i32 0, metadata !18, null}
!270 = metadata !{i32 414, i32 0, metadata !18, null}
!271 = metadata !{i32 415, i32 0, metadata !18, null}
!272 = metadata !{i32 416, i32 0, metadata !18, null}
!273 = metadata !{i32 417, i32 0, metadata !18, null}
!274 = metadata !{i32 418, i32 0, metadata !18, null}
!275 = metadata !{i32 419, i32 0, metadata !18, null}
!276 = metadata !{i32 420, i32 0, metadata !18, null}
!277 = metadata !{i32 421, i32 0, metadata !18, null}
!278 = metadata !{i32 422, i32 0, metadata !18, null}
!279 = metadata !{i32 423, i32 0, metadata !18, null}
!280 = metadata !{i32 424, i32 0, metadata !18, null}
!281 = metadata !{i32 425, i32 0, metadata !18, null}
!282 = metadata !{i32 426, i32 0, metadata !18, null}
!283 = metadata !{i32 427, i32 0, metadata !18, null}
!284 = metadata !{i32 428, i32 0, metadata !18, null}
!285 = metadata !{i32 429, i32 0, metadata !18, null}
!286 = metadata !{i32 430, i32 0, metadata !18, null}
!287 = metadata !{i32 431, i32 0, metadata !18, null}
!288 = metadata !{i32 432, i32 0, metadata !18, null}
!289 = metadata !{i32 433, i32 0, metadata !18, null}
!290 = metadata !{i32 434, i32 0, metadata !18, null}
!291 = metadata !{i32 435, i32 0, metadata !18, null}
!292 = metadata !{i32 436, i32 0, metadata !18, null}
!293 = metadata !{i32 437, i32 0, metadata !18, null}
!294 = metadata !{i32 438, i32 0, metadata !18, null}
!295 = metadata !{i32 439, i32 0, metadata !18, null}
!296 = metadata !{i32 447, i32 0, metadata !18, null}
!297 = metadata !{i32 452, i32 0, metadata !21, null}
!298 = metadata !{i32 453, i32 0, metadata !21, null}
!299 = metadata !{i32 454, i32 0, metadata !21, null}
!300 = metadata !{i32 455, i32 0, metadata !21, null}
!301 = metadata !{i32 457, i32 0, metadata !21, null}
!302 = metadata !{i32 458, i32 0, metadata !21, null}
!303 = metadata !{i32 459, i32 0, metadata !21, null}
!304 = metadata !{i32 460, i32 0, metadata !21, null}
!305 = metadata !{i32 467, i32 0, metadata !21, null}
!306 = metadata !{i32 468, i32 0, metadata !21, null}
!307 = metadata !{i32 13, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !37, metadata !39, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_div_zero_check.c]
!309 = metadata !{i32 14, i32 0, metadata !308, null}
!310 = metadata !{i32 15, i32 0, metadata !39, null}
!311 = metadata !{i32 15, i32 0, metadata !49, null}
!312 = metadata !{i32 16, i32 0, metadata !49, null}
!313 = metadata !{metadata !314, metadata !314, i64 0}
!314 = metadata !{metadata !"int", metadata !315, i64 0}
!315 = metadata !{metadata !"omnipotent char", metadata !316, i64 0}
!316 = metadata !{metadata !"Simple C/C++ TBAA"}
!317 = metadata !{i32 21, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !59, metadata !61, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c]
!319 = metadata !{i32 27, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !59, metadata !318, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_overshift_check.c]
!321 = metadata !{i32 29, i32 0, metadata !61, null}
!322 = metadata !{i32 16, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !70, metadata !72, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!324 = metadata !{i32 17, i32 0, metadata !323, null}
!325 = metadata !{i32 19, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !70, metadata !72, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!327 = metadata !{i32 22, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !70, metadata !326, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!329 = metadata !{i32 25, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !70, metadata !328, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!331 = metadata !{i32 26, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !70, metadata !330, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!333 = metadata !{i32 27, i32 0, metadata !332, null}
!334 = metadata !{i32 28, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !70, metadata !330, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/klee_range.c]
!336 = metadata !{i32 29, i32 0, metadata !335, null}
!337 = metadata !{i32 32, i32 0, metadata !328, null}
!338 = metadata !{i32 34, i32 0, metadata !72, null}
!339 = metadata !{i32 16, i32 0, metadata !84, null}
!340 = metadata !{i32 17, i32 0, metadata !84, null}
!341 = metadata !{metadata !341, metadata !342, metadata !343}
!342 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!343 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!344 = metadata !{metadata !315, metadata !315, i64 0}
!345 = metadata !{metadata !345, metadata !342, metadata !343}
!346 = metadata !{i32 18, i32 0, metadata !84, null}
!347 = metadata !{i32 16, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !100, metadata !102, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!349 = metadata !{i32 19, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !100, metadata !102, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!351 = metadata !{i32 20, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !100, metadata !350, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!353 = metadata !{metadata !353, metadata !342, metadata !343}
!354 = metadata !{metadata !354, metadata !342, metadata !343}
!355 = metadata !{i32 22, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !100, metadata !350, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/software/fp-analysis-klee/build/runtime/Intrinsic//home/dcsandr/software/fp-analysis-klee/runtime/Intrinsic/memmove.c]
!357 = metadata !{i32 24, i32 0, metadata !356, null}
!358 = metadata !{i32 23, i32 0, metadata !356, null}
!359 = metadata !{metadata !359, metadata !342, metadata !343}
!360 = metadata !{metadata !360, metadata !342, metadata !343}
!361 = metadata !{i32 28, i32 0, metadata !102, null}
!362 = metadata !{i32 15, i32 0, metadata !116, null}
!363 = metadata !{i32 16, i32 0, metadata !116, null}
!364 = metadata !{metadata !364, metadata !342, metadata !343}
!365 = metadata !{metadata !365, metadata !342, metadata !343}
!366 = metadata !{i32 17, i32 0, metadata !116, null}
!367 = metadata !{i32 13, i32 0, metadata !130, null}
!368 = metadata !{i32 14, i32 0, metadata !130, null}
!369 = metadata !{i32 15, i32 0, metadata !130, null}
