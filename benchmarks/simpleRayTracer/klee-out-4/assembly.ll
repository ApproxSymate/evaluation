; ModuleID = 'plane.bc'
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
@.str44 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str145 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str246 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str347 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1448 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str2549 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str650 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str1751 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2852 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind readnone uwtable
define i32 @abs(i32 %value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %value, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !153
  %4 = icmp slt i32 %3, 0, !dbg !153
  %5 = load i32* %2, align 4, !dbg !155
  br i1 %4, label %6, label %8, !dbg !153

; <label>:6                                       ; preds = %0
  %7 = sub nsw i32 0, %5, !dbg !155
  store i32 %7, i32* %1, !dbg !155
  br label %9, !dbg !155

; <label>:8                                       ; preds = %0
  store i32 %5, i32* %1, !dbg !156
  br label %9, !dbg !156

; <label>:9                                       ; preds = %8, %6
  %10 = load i32* %1, !dbg !157
  ret i32 %10, !dbg !157
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @isqrt(i32 %n) #2 {
  %1 = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store i32 0, i32* %b, align 4, !dbg !158
  store i32 0, i32* %i, align 4, !dbg !159
  br label %2, !dbg !159

; <label>:2                                       ; preds = %5, %0
  %3 = load i32* %i, align 4, !dbg !159
  %4 = icmp slt i32 %3, 2, !dbg !159
  br i1 %4, label %5, label %16, !dbg !159

; <label>:5                                       ; preds = %2
  %6 = load i32* %1, align 4, !dbg !161
  %7 = load i32* %b, align 4, !dbg !161
  %8 = sub nsw i32 %6, %7, !dbg !161
  store i32 %8, i32* %1, align 4, !dbg !161
  %9 = load i32* %b, align 4, !dbg !163
  %10 = add nsw i32 %9, 1, !dbg !163
  store i32 %10, i32* %b, align 4, !dbg !163
  %11 = load i32* %1, align 4, !dbg !164
  %12 = load i32* %b, align 4, !dbg !164
  %13 = sub nsw i32 %11, %12, !dbg !164
  store i32 %13, i32* %1, align 4, !dbg !164
  %14 = load i32* %i, align 4, !dbg !159
  %15 = add nsw i32 %14, 1, !dbg !159
  store i32 %15, i32* %i, align 4, !dbg !159
  br label %2, !dbg !159

; <label>:16                                      ; preds = %2
  %17 = load i32* %b, align 4, !dbg !165
  %18 = sub nsw i32 %17, 1, !dbg !165
  ret i32 %18, !dbg !165
}

; Function Attrs: nounwind uwtable
define i32 @usqrt4(i32 %val) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %val, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !166
  %4 = icmp ult i32 %3, 2, !dbg !166
  br i1 %4, label %5, label %7, !dbg !166

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !166
  store i32 %6, i32* %1, !dbg !166
  br label %37, !dbg !166

; <label>:7                                       ; preds = %0
  store i32 1255, i32* %a, align 4, !dbg !168
  %8 = load i32* %2, align 4, !dbg !169
  %9 = load i32* %a, align 4, !dbg !169
  %int_cast_to_i64 = zext i32 %9 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !169
  %10 = udiv i32 %8, %9, !dbg !169
  store i32 %10, i32* %b, align 4, !dbg !169
  %11 = load i32* %a, align 4, !dbg !169
  %12 = load i32* %b, align 4, !dbg !169
  %13 = add i32 %11, %12, !dbg !169
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !169
  %14 = udiv i32 %13, 2, !dbg !169
  store i32 %14, i32* %a, align 4, !dbg !169
  %15 = load i32* %2, align 4, !dbg !170
  %16 = load i32* %a, align 4, !dbg !170
  %int_cast_to_i642 = zext i32 %16 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !170
  %17 = udiv i32 %15, %16, !dbg !170
  store i32 %17, i32* %b, align 4, !dbg !170
  %18 = load i32* %a, align 4, !dbg !170
  %19 = load i32* %b, align 4, !dbg !170
  %20 = add i32 %18, %19, !dbg !170
  %int_cast_to_i643 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !170
  %21 = udiv i32 %20, 2, !dbg !170
  store i32 %21, i32* %a, align 4, !dbg !170
  %22 = load i32* %2, align 4, !dbg !171
  %23 = load i32* %a, align 4, !dbg !171
  %int_cast_to_i644 = zext i32 %23 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !171
  %24 = udiv i32 %22, %23, !dbg !171
  store i32 %24, i32* %b, align 4, !dbg !171
  %25 = load i32* %a, align 4, !dbg !171
  %26 = load i32* %b, align 4, !dbg !171
  %27 = add i32 %25, %26, !dbg !171
  %int_cast_to_i645 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !171
  %28 = udiv i32 %27, 2, !dbg !171
  store i32 %28, i32* %a, align 4, !dbg !171
  %29 = load i32* %2, align 4, !dbg !172
  %30 = load i32* %a, align 4, !dbg !172
  %int_cast_to_i646 = zext i32 %30 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !172
  %31 = udiv i32 %29, %30, !dbg !172
  store i32 %31, i32* %b, align 4, !dbg !172
  %32 = load i32* %a, align 4, !dbg !172
  %33 = load i32* %b, align 4, !dbg !172
  %34 = add i32 %32, %33, !dbg !172
  %int_cast_to_i647 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !172
  %35 = udiv i32 %34, 2, !dbg !172
  store i32 %35, i32* %a, align 4, !dbg !172
  %36 = load i32* %a, align 4, !dbg !173
  store i32 %36, i32* %1, !dbg !173
  br label %37, !dbg !173

; <label>:37                                      ; preds = %7, %5
  %38 = load i32* %1, !dbg !174
  ret i32 %38, !dbg !174
}

; Function Attrs: nounwind uwtable
define i32 @my_round(i32 %x) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !175
  %4 = icmp slt i32 %3, 0, !dbg !175
  %5 = load i32* %2, align 4, !dbg !177
  %6 = mul nsw i32 2, %5, !dbg !177
  br i1 %4, label %7, label %10, !dbg !175

; <label>:7                                       ; preds = %0
  %8 = sub nsw i32 %6, 1, !dbg !177
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !177
  %9 = sdiv i32 %8, 2, !dbg !177
  store i32 %9, i32* %1, !dbg !177
  br label %13, !dbg !177

; <label>:10                                      ; preds = %0
  %11 = add nsw i32 %6, 1, !dbg !178
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !178
  %12 = sdiv i32 %11, 2, !dbg !178
  store i32 %12, i32* %1, !dbg !178
  br label %13, !dbg !178

; <label>:13                                      ; preds = %10, %7
  %14 = load i32* %1, !dbg !179
  ret i32 %14, !dbg !179
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
  store i32 255, i32* %r, align 4, !dbg !180
  store i32 0, i32* %b, align 4, !dbg !181
  store i32 0, i32* %col, align 4, !dbg !182
  %4 = load i32* @light, align 4, !dbg !183
  %5 = icmp ne i32 %4, 0, !dbg !183
  br i1 %5, label %6, label %9, !dbg !183

; <label>:6                                       ; preds = %0
  %7 = load i32* @lcoff, align 4, !dbg !185
  %8 = mul nsw i32 255, %7, !dbg !185
  store i32 %8, i32* %r, align 4, !dbg !185
  br label %9, !dbg !187

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %r, align 4, !dbg !188
  store i32 %10, i32* %b, align 4, !dbg !188
  %11 = load i32* @texture, align 4, !dbg !189
  %12 = icmp eq i32 %11, 1, !dbg !189
  br i1 %12, label %13, label %14, !dbg !189

; <label>:13                                      ; preds = %9
  store i32 -65536, i32* %col, align 4, !dbg !191
  br label %33, !dbg !193

; <label>:14                                      ; preds = %9
  %15 = load i32* @texture, align 4, !dbg !194
  %16 = icmp eq i32 %15, 2, !dbg !194
  br i1 %16, label %17, label %33, !dbg !194

; <label>:17                                      ; preds = %14
  %18 = load i32* %1, align 4, !dbg !196
  %19 = call i32 @my_round(i32 %18), !dbg !196
  %20 = load i32* %3, align 4, !dbg !196
  %21 = call i32 @my_round(i32 %20), !dbg !196
  %22 = add nsw i32 %19, %21, !dbg !196
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !196
  %23 = srem i32 %22, 2, !dbg !196
  store i32 %23, i32* %v, align 4, !dbg !196
  %24 = load i32* %v, align 4, !dbg !198
  %25 = icmp eq i32 %24, 0, !dbg !198
  br i1 %25, label %26, label %29, !dbg !198

; <label>:26                                      ; preds = %17
  %27 = load i32* %b, align 4, !dbg !200
  %28 = or i32 -16777216, %27, !dbg !200
  store i32 %28, i32* %col, align 4, !dbg !200
  br label %33, !dbg !202

; <label>:29                                      ; preds = %17
  %30 = load i32* %r, align 4, !dbg !203
  %int_cast_to_i641 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !203
  %31 = shl i32 %30, 16, !dbg !203
  %32 = or i32 -16777216, %31, !dbg !203
  store i32 %32, i32* %col, align 4, !dbg !203
  br label %33

; <label>:33                                      ; preds = %14, %29, %26, %13
  %34 = load i32* %col, align 4, !dbg !205
  %35 = sext i32 %34 to i64, !dbg !205
  call void @klee_bound_error(i64 %35, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), double 1.000000e+00), !dbg !205
  %36 = load i32* %1, align 4, !dbg !206
  %37 = sext i32 %36 to i64, !dbg !206
  call void @klee_bound_error(i64 %37, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), double 1.000000e+00), !dbg !206
  %38 = load i32* %2, align 4, !dbg !207
  %39 = sext i32 %38 to i64, !dbg !207
  call void @klee_bound_error(i64 %39, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), double 1.000000e+00), !dbg !207
  %40 = load i32* %3, align 4, !dbg !208
  %41 = sext i32 %40 to i64, !dbg !208
  call void @klee_bound_error(i64 %41, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), double 1.000000e+00), !dbg !208
  %42 = load i32* %r, align 4, !dbg !209
  %43 = sext i32 %42 to i64, !dbg !209
  call void @klee_bound_error(i64 %43, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !209
  %44 = load i32* %g, align 4, !dbg !210
  %45 = sext i32 %44 to i64, !dbg !210
  call void @klee_bound_error(i64 %45, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !210
  %46 = load i32* %b, align 4, !dbg !211
  %47 = sext i32 %46 to i64, !dbg !211
  call void @klee_bound_error(i64 %47, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !211
  %48 = load i32* %v, align 4, !dbg !212
  %49 = sext i32 %48 to i64, !dbg !212
  call void @klee_bound_error(i64 %49, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), double 1.000000e+00), !dbg !212
  %50 = load i32* %col, align 4, !dbg !213
  ret i32 %50, !dbg !213
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
  store i32 2, i32* @w, align 4, !dbg !214
  store i32 2, i32* @h, align 4, !dbg !215
  %6 = load i32* %1, align 4, !dbg !216
  store i32 %6, i32* @texture, align 4, !dbg !216
  %7 = load i32* %2, align 4, !dbg !217
  store i32 %7, i32* @light, align 4, !dbg !217
  %8 = load i32* @w, align 4, !dbg !218
  %9 = load i32* @h, align 4, !dbg !218
  %10 = mul nsw i32 %8, %9, !dbg !218
  %11 = zext i32 %10 to i64, !dbg !218
  store i8* null, i8** %5, !dbg !218
  %12 = alloca i32, i64 %11, align 16, !dbg !218
  %13 = load i32* %3, align 4, !dbg !219
  store i32 %13, i32* %lly, align 4, !dbg !219
  %14 = load i32* %4, align 4, !dbg !220
  store i32 %14, i32* %ye, align 4, !dbg !220
  store i32 0, i32* %nx, align 4, !dbg !221
  store i32 1, i32* %ny, align 4, !dbg !222
  store i32 0, i32* %nz, align 4, !dbg !223
  store i32 -16777216, i32* %bl, align 4, !dbg !224
  %15 = load i32* @w, align 4, !dbg !225
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !225
  %16 = sdiv i32 %15, 2, !dbg !225
  store i32 %16, i32* %w1, align 4, !dbg !225
  %17 = load i32* @h, align 4, !dbg !226
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !226
  %18 = sdiv i32 %17, 2, !dbg !226
  store i32 %18, i32* %h1, align 4, !dbg !226
  store i32 0, i32* %xe, align 4, !dbg !227
  store i32 0, i32* %ze, align 4, !dbg !228
  store i32 -1, i32* @k, align 4, !dbg !229
  store i32 0, i32* %y, align 4, !dbg !230
  br label %19, !dbg !230

; <label>:19                                      ; preds = %150, %0
  %20 = load i32* %y, align 4, !dbg !230
  %21 = load i32* @h, align 4, !dbg !230
  %22 = icmp slt i32 %20, %21, !dbg !230
  br i1 %22, label %23, label %153, !dbg !230

; <label>:23                                      ; preds = %19
  store i32 0, i32* %x, align 4, !dbg !232
  br label %24, !dbg !232

; <label>:24                                      ; preds = %145, %23
  %25 = load i32* %x, align 4, !dbg !232
  %26 = load i32* @w, align 4, !dbg !232
  %27 = icmp slt i32 %25, %26, !dbg !232
  br i1 %27, label %28, label %150, !dbg !232

; <label>:28                                      ; preds = %24
  store i32 -1, i32* %t, align 4, !dbg !235
  %29 = load i32* %x, align 4, !dbg !237
  %30 = load i32* %w1, align 4, !dbg !237
  %31 = sub nsw i32 %29, %30, !dbg !237
  %32 = load i32* %w1, align 4, !dbg !237
  %int_cast_to_i642 = zext i32 %32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !237
  %33 = sdiv i32 %31, %32, !dbg !237
  store i32 %33, i32* %xd, align 4, !dbg !237
  %34 = load i32* %h1, align 4, !dbg !238
  %35 = load i32* %y, align 4, !dbg !238
  %36 = sub nsw i32 %34, %35, !dbg !238
  %37 = load i32* %h1, align 4, !dbg !238
  %int_cast_to_i643 = zext i32 %37 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !238
  %38 = sdiv i32 %36, %37, !dbg !238
  store i32 %38, i32* %yd, align 4, !dbg !238
  store i32 -1, i32* %zd, align 4, !dbg !239
  %39 = load i32* %xd, align 4, !dbg !240
  %40 = load i32* %xd, align 4, !dbg !240
  %41 = mul nsw i32 %39, %40, !dbg !240
  %42 = load i32* %yd, align 4, !dbg !240
  %43 = load i32* %yd, align 4, !dbg !240
  %44 = mul nsw i32 %42, %43, !dbg !240
  %45 = add nsw i32 %41, %44, !dbg !240
  %46 = load i32* %zd, align 4, !dbg !240
  %47 = load i32* %zd, align 4, !dbg !240
  %48 = mul nsw i32 %46, %47, !dbg !240
  %49 = add nsw i32 %45, %48, !dbg !240
  store i32 %49, i32* %l, align 4, !dbg !240
  %50 = load i32* %l, align 4, !dbg !241
  %51 = load i32* %xd, align 4, !dbg !241
  %int_cast_to_i644 = zext i32 %50 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !241
  %52 = sdiv i32 %51, %50, !dbg !241
  store i32 %52, i32* %xd, align 4, !dbg !241
  %53 = load i32* %l, align 4, !dbg !242
  %54 = load i32* %yd, align 4, !dbg !242
  %int_cast_to_i645 = zext i32 %53 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !242
  %55 = sdiv i32 %54, %53, !dbg !242
  store i32 %55, i32* %yd, align 4, !dbg !242
  %56 = load i32* %l, align 4, !dbg !243
  %57 = load i32* %zd, align 4, !dbg !243
  %int_cast_to_i646 = zext i32 %56 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !243
  %58 = sdiv i32 %57, %56, !dbg !243
  store i32 %58, i32* %zd, align 4, !dbg !243
  %59 = load i32* @k, align 4, !dbg !244
  %60 = load i32* %ye, align 4, !dbg !244
  %61 = sub nsw i32 %59, %60, !dbg !244
  %62 = load i32* %yd, align 4, !dbg !244
  %63 = mul nsw i32 %61, %62, !dbg !244
  %64 = icmp sle i32 %63, 0, !dbg !244
  br i1 %64, label %65, label %66, !dbg !244

; <label>:65                                      ; preds = %28
  store i32 -1, i32* %t, align 4, !dbg !246
  br label %72, !dbg !248

; <label>:66                                      ; preds = %28
  %67 = load i32* @k, align 4, !dbg !249
  %68 = load i32* %ye, align 4, !dbg !249
  %69 = sub nsw i32 %67, %68, !dbg !249
  %70 = load i32* %yd, align 4, !dbg !249
  %int_cast_to_i647 = zext i32 %70 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !249
  %71 = sdiv i32 %69, %70, !dbg !249
  store i32 %71, i32* %t, align 4, !dbg !249
  br label %72

; <label>:72                                      ; preds = %66, %65
  %73 = load i32* %y, align 4, !dbg !251
  %74 = load i32* @w, align 4, !dbg !251
  %75 = mul nsw i32 %73, %74, !dbg !251
  %76 = load i32* %x, align 4, !dbg !251
  %77 = add nsw i32 %75, %76, !dbg !251
  store i32 %77, i32* %index, align 4, !dbg !251
  %78 = load i32* %t, align 4, !dbg !252
  %79 = icmp sge i32 %78, 0, !dbg !252
  br i1 %79, label %80, label %140, !dbg !252

; <label>:80                                      ; preds = %72
  %81 = load i32* %xe, align 4, !dbg !254
  %82 = load i32* %t, align 4, !dbg !254
  %83 = load i32* %xd, align 4, !dbg !254
  %84 = mul nsw i32 %82, %83, !dbg !254
  %85 = add nsw i32 %81, %84, !dbg !254
  store i32 %85, i32* %ix, align 4, !dbg !254
  %86 = load i32* %ye, align 4, !dbg !256
  %87 = load i32* %t, align 4, !dbg !256
  %88 = load i32* %yd, align 4, !dbg !256
  %89 = mul nsw i32 %87, %88, !dbg !256
  %90 = add nsw i32 %86, %89, !dbg !256
  store i32 %90, i32* %iy, align 4, !dbg !256
  %91 = load i32* %ze, align 4, !dbg !257
  %92 = load i32* %t, align 4, !dbg !257
  %93 = load i32* %zd, align 4, !dbg !257
  %94 = mul nsw i32 %92, %93, !dbg !257
  %95 = add nsw i32 %91, %94, !dbg !257
  store i32 %95, i32* %iz, align 4, !dbg !257
  store i32 0, i32* %lx, align 4, !dbg !258
  %96 = load i32* %lly, align 4, !dbg !259
  store i32 %96, i32* %ly, align 4, !dbg !259
  store i32 0, i32* %lz, align 4, !dbg !260
  %97 = load i32* %lx, align 4, !dbg !261
  %98 = load i32* %ix, align 4, !dbg !261
  %99 = sub nsw i32 %97, %98, !dbg !261
  store i32 %99, i32* %lx, align 4, !dbg !261
  %100 = load i32* %ly, align 4, !dbg !262
  %101 = load i32* %iy, align 4, !dbg !262
  %102 = sub nsw i32 %100, %101, !dbg !262
  store i32 %102, i32* %ly, align 4, !dbg !262
  %103 = load i32* %lz, align 4, !dbg !263
  %104 = load i32* %iz, align 4, !dbg !263
  %105 = sub nsw i32 %103, %104, !dbg !263
  store i32 %105, i32* %lz, align 4, !dbg !263
  %106 = load i32* %lx, align 4, !dbg !264
  %107 = load i32* %lx, align 4, !dbg !264
  %108 = mul nsw i32 %106, %107, !dbg !264
  %109 = load i32* %ly, align 4, !dbg !264
  %110 = load i32* %ly, align 4, !dbg !264
  %111 = mul nsw i32 %109, %110, !dbg !264
  %112 = add nsw i32 %108, %111, !dbg !264
  %113 = load i32* %lz, align 4, !dbg !264
  %114 = load i32* %lz, align 4, !dbg !264
  %115 = mul nsw i32 %113, %114, !dbg !264
  %116 = add nsw i32 %112, %115, !dbg !264
  %117 = call i32 @isqrt(i32 %116), !dbg !264
  store i32 %117, i32* @sng, align 4, !dbg !264
  %118 = load i32* @sng, align 4, !dbg !265
  %int_cast_to_i648 = zext i32 %118 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !265
  %119 = sdiv i32 1, %118, !dbg !265
  store i32 %119, i32* @sng, align 4, !dbg !265
  %120 = load i32* %lx, align 4, !dbg !266
  %121 = load i32* %nx, align 4, !dbg !266
  %122 = mul nsw i32 %120, %121, !dbg !266
  %123 = load i32* %ly, align 4, !dbg !266
  %124 = load i32* %ny, align 4, !dbg !266
  %125 = mul nsw i32 %123, %124, !dbg !266
  %126 = add nsw i32 %122, %125, !dbg !266
  %127 = load i32* %lz, align 4, !dbg !266
  %128 = load i32* %nz, align 4, !dbg !266
  %129 = mul nsw i32 %127, %128, !dbg !266
  %130 = add nsw i32 %126, %129, !dbg !266
  %131 = load i32* @sng, align 4, !dbg !266
  %132 = mul nsw i32 %130, %131, !dbg !266
  store i32 %132, i32* @lcoff, align 4, !dbg !266
  %133 = load i32* %ix, align 4, !dbg !267
  %134 = load i32* %iy, align 4, !dbg !267
  %135 = load i32* %iz, align 4, !dbg !267
  %136 = call i32 @texture1(i32 %133, i32 %134, i32 %135), !dbg !267
  %137 = load i32* %index, align 4, !dbg !267
  %138 = sext i32 %137 to i64, !dbg !267
  %139 = getelementptr inbounds i32* %12, i64 %138, !dbg !267
  store i32 %136, i32* %139, align 4, !dbg !267
  br label %145, !dbg !268

; <label>:140                                     ; preds = %72
  %141 = load i32* %bl, align 4, !dbg !269
  %142 = load i32* %index, align 4, !dbg !269
  %143 = sext i32 %142 to i64, !dbg !269
  %144 = getelementptr inbounds i32* %12, i64 %143, !dbg !269
  store i32 %141, i32* %144, align 4, !dbg !269
  br label %145

; <label>:145                                     ; preds = %140, %80
  %146 = load i32* @numIterations, align 4, !dbg !271
  %147 = add nsw i32 %146, 1, !dbg !271
  store i32 %147, i32* @numIterations, align 4, !dbg !271
  %148 = load i32* %x, align 4, !dbg !232
  %149 = add nsw i32 %148, 1, !dbg !232
  store i32 %149, i32* %x, align 4, !dbg !232
  br label %24, !dbg !232

; <label>:150                                     ; preds = %24
  %151 = load i32* %y, align 4, !dbg !230
  %152 = add nsw i32 %151, 1, !dbg !230
  store i32 %152, i32* %y, align 4, !dbg !230
  br label %19, !dbg !230

; <label>:153                                     ; preds = %19
  %154 = getelementptr inbounds i32* %12, i64 0, !dbg !272
  %155 = load i32* %154, align 4, !dbg !272
  %156 = sext i32 %155 to i64, !dbg !272
  call void @klee_bound_error(i64 %156, i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), double 1.000000e+00), !dbg !272
  %157 = getelementptr inbounds i32* %12, i64 1, !dbg !273
  %158 = load i32* %157, align 4, !dbg !273
  %159 = sext i32 %158 to i64, !dbg !273
  call void @klee_bound_error(i64 %159, i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), double 1.000000e+00), !dbg !273
  %160 = load i32* @k, align 4, !dbg !274
  %161 = sext i32 %160 to i64, !dbg !274
  call void @klee_bound_error(i64 %161, i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0), double 1.000000e+00), !dbg !274
  %162 = load i32* @texture, align 4, !dbg !275
  %163 = sext i32 %162 to i64, !dbg !275
  call void @klee_bound_error(i64 %163, i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0), double 1.000000e+00), !dbg !275
  %164 = load i32* @light, align 4, !dbg !276
  %165 = sext i32 %164 to i64, !dbg !276
  call void @klee_bound_error(i64 %165, i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0), double 1.000000e+00), !dbg !276
  %166 = load i32* @lcoff, align 4, !dbg !277
  %167 = sext i32 %166 to i64, !dbg !277
  call void @klee_bound_error(i64 %167, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !277
  %168 = load i32* @sng, align 4, !dbg !278
  %169 = sext i32 %168 to i64, !dbg !278
  call void @klee_bound_error(i64 %169, i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), double 1.000000e+00), !dbg !278
  %170 = load i32* @numIterations, align 4, !dbg !279
  %171 = sext i32 %170 to i64, !dbg !279
  call void @klee_bound_error(i64 %171, i8* getelementptr inbounds ([14 x i8]* @.str15, i32 0, i32 0), double 1.000000e+00), !dbg !279
  %172 = load i32* %index, align 4, !dbg !280
  %173 = sext i32 %172 to i64, !dbg !280
  call void @klee_bound_error(i64 %173, i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), double 1.000000e+00), !dbg !280
  %174 = load i32* %x, align 4, !dbg !281
  %175 = sext i32 %174 to i64, !dbg !281
  call void @klee_bound_error(i64 %175, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), double 1.000000e+00), !dbg !281
  %176 = load i32* %y, align 4, !dbg !282
  %177 = sext i32 %176 to i64, !dbg !282
  call void @klee_bound_error(i64 %177, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), double 1.000000e+00), !dbg !282
  %178 = load i32* %xe, align 4, !dbg !283
  %179 = sext i32 %178 to i64, !dbg !283
  call void @klee_bound_error(i64 %179, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), double 1.000000e+00), !dbg !283
  %180 = load i32* %ye, align 4, !dbg !284
  %181 = sext i32 %180 to i64, !dbg !284
  call void @klee_bound_error(i64 %181, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0), double 1.000000e+00), !dbg !284
  %182 = load i32* %ze, align 4, !dbg !285
  %183 = sext i32 %182 to i64, !dbg !285
  call void @klee_bound_error(i64 %183, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0), double 1.000000e+00), !dbg !285
  %184 = load i32* %xd, align 4, !dbg !286
  %185 = sext i32 %184 to i64, !dbg !286
  call void @klee_bound_error(i64 %185, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), double 1.000000e+00), !dbg !286
  %186 = load i32* %yd, align 4, !dbg !287
  %187 = sext i32 %186 to i64, !dbg !287
  call void @klee_bound_error(i64 %187, i8* getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), double 1.000000e+00), !dbg !287
  %188 = load i32* %zd, align 4, !dbg !288
  %189 = sext i32 %188 to i64, !dbg !288
  call void @klee_bound_error(i64 %189, i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), double 1.000000e+00), !dbg !288
  %190 = load i32* %ix, align 4, !dbg !289
  %191 = sext i32 %190 to i64, !dbg !289
  call void @klee_bound_error(i64 %191, i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0), double 1.000000e+00), !dbg !289
  %192 = load i32* %iy, align 4, !dbg !290
  %193 = sext i32 %192 to i64, !dbg !290
  call void @klee_bound_error(i64 %193, i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0), double 1.000000e+00), !dbg !290
  %194 = load i32* %iz, align 4, !dbg !291
  %195 = sext i32 %194 to i64, !dbg !291
  call void @klee_bound_error(i64 %195, i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), double 1.000000e+00), !dbg !291
  %196 = load i32* %nx, align 4, !dbg !292
  %197 = sext i32 %196 to i64, !dbg !292
  call void @klee_bound_error(i64 %197, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0), double 1.000000e+00), !dbg !292
  %198 = load i32* %ny, align 4, !dbg !293
  %199 = sext i32 %198 to i64, !dbg !293
  call void @klee_bound_error(i64 %199, i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), double 1.000000e+00), !dbg !293
  %200 = load i32* %nz, align 4, !dbg !294
  %201 = sext i32 %200 to i64, !dbg !294
  call void @klee_bound_error(i64 %201, i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), double 1.000000e+00), !dbg !294
  %202 = load i32* %lx, align 4, !dbg !295
  %203 = sext i32 %202 to i64, !dbg !295
  call void @klee_bound_error(i64 %203, i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0), double 1.000000e+00), !dbg !295
  %204 = load i32* %ly, align 4, !dbg !296
  %205 = sext i32 %204 to i64, !dbg !296
  call void @klee_bound_error(i64 %205, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0), double 1.000000e+00), !dbg !296
  %206 = load i32* %lx, align 4, !dbg !297
  %207 = sext i32 %206 to i64, !dbg !297
  call void @klee_bound_error(i64 %207, i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0), double 1.000000e+00), !dbg !297
  %208 = load i32* %lly, align 4, !dbg !298
  %209 = sext i32 %208 to i64, !dbg !298
  call void @klee_bound_error(i64 %209, i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), double 1.000000e+00), !dbg !298
  %210 = load i32* %bl, align 4, !dbg !299
  %211 = sext i32 %210 to i64, !dbg !299
  call void @klee_bound_error(i64 %211, i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0), double 1.000000e+00), !dbg !299
  %212 = load i32* @lcoff, align 4, !dbg !300
  %213 = sext i32 %212 to i64, !dbg !300
  call void @klee_bound_error(i64 %213, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !300
  %214 = load i32* %w1, align 4, !dbg !301
  %215 = sext i32 %214 to i64, !dbg !301
  call void @klee_bound_error(i64 %215, i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0), double 1.000000e+00), !dbg !301
  %216 = load i32* %h1, align 4, !dbg !302
  %217 = sext i32 %216 to i64, !dbg !302
  call void @klee_bound_error(i64 %217, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), double 1.000000e+00), !dbg !302
  %218 = load i8** %5, !dbg !303
  ret void, !dbg !303
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
  %3 = bitcast i32* %arg0 to i8*, !dbg !304
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0)), !dbg !304
  %4 = bitcast i32* %arg1 to i8*, !dbg !305
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0)), !dbg !305
  %5 = bitcast i32* %arg2 to i8*, !dbg !306
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0)), !dbg !306
  %6 = bitcast i32* %arg3 to i8*, !dbg !307
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0)), !dbg !307
  %7 = bitcast i32* %arg0 to i8*, !dbg !308
  call void @klee_track_error(i8* %7, i8* getelementptr inbounds ([9 x i8]* @.str40, i32 0, i32 0)), !dbg !308
  %8 = bitcast i32* %arg1 to i8*, !dbg !309
  call void @klee_track_error(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str41, i32 0, i32 0)), !dbg !309
  %9 = bitcast i32* %arg2 to i8*, !dbg !310
  call void @klee_track_error(i8* %9, i8* getelementptr inbounds ([9 x i8]* @.str42, i32 0, i32 0)), !dbg !310
  %10 = bitcast i32* %arg3 to i8*, !dbg !311
  call void @klee_track_error(i8* %10, i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0)), !dbg !311
  %11 = load i32* %arg0, align 4, !dbg !312
  %12 = load i32* %arg1, align 4, !dbg !312
  %13 = load i32* %arg2, align 4, !dbg !312
  %14 = load i32* %arg3, align 4, !dbg !312
  call void @init(i32 %11, i32 %12, i32 %13, i32 %14), !dbg !312
  ret i32 0, !dbg !313
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_track_error(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
  %1 = icmp eq i64 %z, 0, !dbg !314
  br i1 %1, label %2, label %3, !dbg !314

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str44, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str145, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str246, i64 0, i64 0)) #8, !dbg !316
  unreachable, !dbg !316

; <label>:3                                       ; preds = %0
  ret void, !dbg !317
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !318
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #9, !dbg !318
  %2 = load i32* %x, align 4, !dbg !319, !tbaa !320
  ret i32 %2, !dbg !319
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !324
  br i1 %1, label %3, label %2, !dbg !324

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str347, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1448, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2549, i64 0, i64 0)) #8, !dbg !326
  unreachable, !dbg !326

; <label>:3                                       ; preds = %0
  ret void, !dbg !328
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !329
  br i1 %1, label %3, label %2, !dbg !329

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str650, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1751, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2852, i64 0, i64 0)) #8, !dbg !331
  unreachable, !dbg !331

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !332
  %5 = icmp eq i32 %4, %end, !dbg !332
  br i1 %5, label %21, label %6, !dbg !332

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !334
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #9, !dbg !334
  %8 = icmp eq i32 %start, 0, !dbg !336
  %9 = load i32* %x, align 4, !dbg !338, !tbaa !320
  br i1 %8, label %10, label %13, !dbg !336

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !338
  %12 = zext i1 %11 to i64, !dbg !338
  call void @klee_assume(i64 %12) #9, !dbg !338
  br label %19, !dbg !340

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !341
  %15 = zext i1 %14 to i64, !dbg !341
  call void @klee_assume(i64 %15) #9, !dbg !341
  %16 = load i32* %x, align 4, !dbg !343, !tbaa !320
  %17 = icmp slt i32 %16, %end, !dbg !343
  %18 = zext i1 %17 to i64, !dbg !343
  call void @klee_assume(i64 %18) #9, !dbg !343
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !344, !tbaa !320
  br label %21, !dbg !344

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !345
}

declare void @klee_assume(i64) #7

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !346
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !346

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !347
  %wide.load = load <16 x i8>* %3, align 1, !dbg !347
  %next.gep.sum279 = or i64 %index, 16, !dbg !347
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !347
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !347
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !347
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !347
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !347
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !347
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !347
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !347
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !348

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
  %10 = add i64 %.01, -1, !dbg !346
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !347
  %12 = load i8* %src.03, align 1, !dbg !347, !tbaa !351
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !347
  store i8 %12, i8* %dest.02, align 1, !dbg !347, !tbaa !351
  %14 = icmp eq i64 %10, 0, !dbg !346
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !346, !llvm.loop !352

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !353
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
  %1 = icmp eq i8* %src, %dst, !dbg !354
  br i1 %1, label %.loopexit, label %2, !dbg !354

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !356
  br i1 %3, label %.preheader, label %18, !dbg !356

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !358
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !358

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !358
  %wide.load = load <16 x i8>* %6, align 1, !dbg !358
  %next.gep.sum586 = or i64 %index, 16, !dbg !358
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !358
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !358
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !358
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !358
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !358
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !358
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !358
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !358
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !360

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
  %13 = add i64 %.02, -1, !dbg !358
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !358
  %15 = load i8* %b.04, align 1, !dbg !358, !tbaa !351
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !358
  store i8 %15, i8* %a.03, align 1, !dbg !358, !tbaa !351
  %17 = icmp eq i64 %13, 0, !dbg !358
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !358, !llvm.loop !361

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !362
  %20 = icmp eq i64 %count, 0, !dbg !364
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !364

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !365
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !362
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !364
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !364
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !364
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !364
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !364
  %.sum505 = add i64 %.sum440, -31, !dbg !364
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !364
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !364
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !364
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !364
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !364
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !364
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !364
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !364
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !364
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !364
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !364
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !364
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !366

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
  %32 = add i64 %.16, -1, !dbg !364
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !364
  %34 = load i8* %b.18, align 1, !dbg !364, !tbaa !351
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !364
  store i8 %34, i8* %a.17, align 1, !dbg !364, !tbaa !351
  %36 = icmp eq i64 %32, 0, !dbg !364
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !364, !llvm.loop !367

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !368
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
  %1 = icmp eq i64 %len, 0, !dbg !369
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !369

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !370
  %wide.load = load <16 x i8>* %3, align 1, !dbg !370
  %next.gep.sum280 = or i64 %index, 16, !dbg !370
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !370
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !370
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !370
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !370
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !370
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !370
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !370
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !370
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !371

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
  %10 = add i64 %.01, -1, !dbg !369
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !370
  %12 = load i8* %src.03, align 1, !dbg !370, !tbaa !351
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !370
  store i8 %12, i8* %dest.02, align 1, !dbg !370, !tbaa !351
  %14 = icmp eq i64 %10, 0, !dbg !369
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !369, !llvm.loop !372

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !369

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !373
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
  %1 = icmp eq i64 %count, 0, !dbg !374
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !374

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !375
  br label %3, !dbg !374

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !374
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !375
  store volatile i8 %2, i8* %a.02, align 1, !dbg !375, !tbaa !351
  %6 = icmp eq i64 %4, 0, !dbg !374
  br i1 %6, label %._crit_edge, label %3, !dbg !374

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !376
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

!llvm.dbg.cu = !{!0, !36, !47, !60, !72, !85, !104, !119, !134}
!llvm.module.flags = !{!150, !151}
!llvm.ident = !{!152, !152, !152, !152, !152, !152, !152, !152, !152}

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
!36 = metadata !{i32 786449, metadata !37, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !38, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!37 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786478, metadata !40, metadata !41, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!40 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!41 = metadata !{i32 786473, metadata !40}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!42 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !44}
!44 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786689, metadata !39, metadata !"z", metadata !41, i32 16777228, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!47 = metadata !{i32 786449, metadata !48, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !49, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!48 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786478, metadata !51, metadata !52, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !57, i32 13} ; [ 
!51 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!52 = metadata !{i32 786473, metadata !51}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!53 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !8, metadata !55}
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!56 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!57 = metadata !{metadata !58, metadata !59}
!58 = metadata !{i32 786689, metadata !50, metadata !"name", metadata !52, i32 16777229, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!59 = metadata !{i32 786688, metadata !50, metadata !"x", metadata !52, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!60 = metadata !{i32 786449, metadata !61, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !62, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!61 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786478, metadata !64, metadata !65, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!64 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!65 = metadata !{i32 786473, metadata !64}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!66 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null, metadata !68, metadata !68}
!68 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786689, metadata !63, metadata !"bitWidth", metadata !65, i32 16777236, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!71 = metadata !{i32 786689, metadata !63, metadata !"shift", metadata !65, i32 33554452, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!72 = metadata !{i32 786449, metadata !73, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !74, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!73 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786478, metadata !76, metadata !77, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!76 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!77 = metadata !{i32 786473, metadata !76}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!78 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !8, metadata !8, metadata !8, metadata !55}
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786689, metadata !75, metadata !"start", metadata !77, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!82 = metadata !{i32 786689, metadata !75, metadata !"end", metadata !77, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!83 = metadata !{i32 786689, metadata !75, metadata !"name", metadata !77, i32 50331661, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!84 = metadata !{i32 786688, metadata !75, metadata !"x", metadata !77, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!85 = metadata !{i32 786449, metadata !86, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !87, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!86 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786478, metadata !89, metadata !90, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !98, i32 12} 
!89 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!90 = metadata !{i32 786473, metadata !89}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !93, metadata !93, metadata !94, metadata !96}
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!95 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{i32 786454, metadata !89, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!97 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103}
!99 = metadata !{i32 786689, metadata !88, metadata !"destaddr", metadata !90, i32 16777228, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!100 = metadata !{i32 786689, metadata !88, metadata !"srcaddr", metadata !90, i32 33554444, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!101 = metadata !{i32 786689, metadata !88, metadata !"len", metadata !90, i32 50331660, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!102 = metadata !{i32 786688, metadata !88, metadata !"dest", metadata !90, i32 13, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!103 = metadata !{i32 786688, metadata !88, metadata !"src", metadata !90, i32 14, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!104 = metadata !{i32 786449, metadata !105, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !106, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!105 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786478, metadata !108, metadata !109, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !113, 
!108 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!109 = metadata !{i32 786473, metadata !108}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !93, metadata !93, metadata !94, metadata !112}
!112 = metadata !{i32 786454, metadata !108, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!114 = metadata !{i32 786689, metadata !107, metadata !"dst", metadata !109, i32 16777228, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!115 = metadata !{i32 786689, metadata !107, metadata !"src", metadata !109, i32 33554444, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!116 = metadata !{i32 786689, metadata !107, metadata !"count", metadata !109, i32 50331660, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!117 = metadata !{i32 786688, metadata !107, metadata !"a", metadata !109, i32 13, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!118 = metadata !{i32 786688, metadata !107, metadata !"b", metadata !109, i32 14, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!119 = metadata !{i32 786449, metadata !120, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !121, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!120 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786478, metadata !123, metadata !124, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !128, 
!123 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!124 = metadata !{i32 786473, metadata !123}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!125 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !93, metadata !93, metadata !94, metadata !127}
!127 = metadata !{i32 786454, metadata !123, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!129 = metadata !{i32 786689, metadata !122, metadata !"destaddr", metadata !124, i32 16777227, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!130 = metadata !{i32 786689, metadata !122, metadata !"srcaddr", metadata !124, i32 33554443, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!131 = metadata !{i32 786689, metadata !122, metadata !"len", metadata !124, i32 50331659, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!132 = metadata !{i32 786688, metadata !122, metadata !"dest", metadata !124, i32 12, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!133 = metadata !{i32 786688, metadata !122, metadata !"src", metadata !124, i32 13, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!134 = metadata !{i32 786449, metadata !135, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !136, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!135 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786478, metadata !138, metadata !139, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !143, i32
!138 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!139 = metadata !{i32 786473, metadata !138}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!140 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !93, metadata !93, metadata !8, metadata !142}
!142 = metadata !{i32 786454, metadata !138, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147}
!144 = metadata !{i32 786689, metadata !137, metadata !"dst", metadata !139, i32 16777227, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!145 = metadata !{i32 786689, metadata !137, metadata !"s", metadata !139, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!146 = metadata !{i32 786689, metadata !137, metadata !"count", metadata !139, i32 50331659, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!147 = metadata !{i32 786688, metadata !137, metadata !"a", metadata !139, i32 12, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!150 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!151 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!152 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!153 = metadata !{i32 217, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !4, i32 217, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!155 = metadata !{i32 218, i32 0, metadata !154, null}
!156 = metadata !{i32 219, i32 0, metadata !4, null}
!157 = metadata !{i32 220, i32 0, metadata !4, null}
!158 = metadata !{i32 225, i32 0, metadata !9, null}
!159 = metadata !{i32 229, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !9, i32 229, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!161 = metadata !{i32 230, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !160, i32 229, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!163 = metadata !{i32 231, i32 0, metadata !162, null}
!164 = metadata !{i32 232, i32 0, metadata !162, null}
!165 = metadata !{i32 236, i32 0, metadata !9, null}
!166 = metadata !{i32 245, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !10, i32 245, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!168 = metadata !{i32 247, i32 0, metadata !10, null}
!169 = metadata !{i32 249, i32 0, metadata !10, null}
!170 = metadata !{i32 250, i32 0, metadata !10, null}
!171 = metadata !{i32 251, i32 0, metadata !10, null}
!172 = metadata !{i32 252, i32 0, metadata !10, null}
!173 = metadata !{i32 254, i32 0, metadata !10, null}
!174 = metadata !{i32 255, i32 0, metadata !10, null}
!175 = metadata !{i32 277, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !14, i32 277, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!177 = metadata !{i32 278, i32 0, metadata !176, null}
!178 = metadata !{i32 280, i32 0, metadata !176, null}
!179 = metadata !{i32 281, i32 0, metadata !14, null}
!180 = metadata !{i32 296, i32 0, metadata !15, null}
!181 = metadata !{i32 297, i32 0, metadata !15, null}
!182 = metadata !{i32 298, i32 0, metadata !15, null}
!183 = metadata !{i32 299, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !15, i32 299, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!185 = metadata !{i32 300, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !184, i32 299, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!187 = metadata !{i32 303, i32 0, metadata !186, null}
!188 = metadata !{i32 304, i32 0, metadata !15, null}
!189 = metadata !{i32 306, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !15, i32 306, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!191 = metadata !{i32 307, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !190, i32 306, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!193 = metadata !{i32 308, i32 0, metadata !192, null}
!194 = metadata !{i32 308, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !190, i32 308, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!196 = metadata !{i32 309, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !195, i32 308, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!198 = metadata !{i32 310, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !197, i32 310, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!200 = metadata !{i32 311, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !199, i32 310, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!202 = metadata !{i32 312, i32 0, metadata !201, null}
!203 = metadata !{i32 313, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !199, i32 312, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!205 = metadata !{i32 317, i32 0, metadata !15, null}
!206 = metadata !{i32 318, i32 0, metadata !15, null}
!207 = metadata !{i32 319, i32 0, metadata !15, null}
!208 = metadata !{i32 320, i32 0, metadata !15, null}
!209 = metadata !{i32 321, i32 0, metadata !15, null}
!210 = metadata !{i32 322, i32 0, metadata !15, null}
!211 = metadata !{i32 323, i32 0, metadata !15, null}
!212 = metadata !{i32 324, i32 0, metadata !15, null}
!213 = metadata !{i32 326, i32 0, metadata !15, null}
!214 = metadata !{i32 332, i32 0, metadata !18, null}
!215 = metadata !{i32 333, i32 0, metadata !18, null}
!216 = metadata !{i32 334, i32 0, metadata !18, null}
!217 = metadata !{i32 335, i32 0, metadata !18, null}
!218 = metadata !{i32 337, i32 0, metadata !18, null}
!219 = metadata !{i32 348, i32 0, metadata !18, null}
!220 = metadata !{i32 349, i32 0, metadata !18, null}
!221 = metadata !{i32 351, i32 0, metadata !18, null}
!222 = metadata !{i32 352, i32 0, metadata !18, null}
!223 = metadata !{i32 353, i32 0, metadata !18, null}
!224 = metadata !{i32 354, i32 0, metadata !18, null}
!225 = metadata !{i32 360, i32 0, metadata !18, null}
!226 = metadata !{i32 361, i32 0, metadata !18, null}
!227 = metadata !{i32 363, i32 0, metadata !18, null}
!228 = metadata !{i32 365, i32 0, metadata !18, null}
!229 = metadata !{i32 366, i32 0, metadata !18, null}
!230 = metadata !{i32 368, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !18, i32 368, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!232 = metadata !{i32 369, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 369, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!234 = metadata !{i32 786443, metadata !1, metadata !231, i32 368, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!235 = metadata !{i32 370, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !233, i32 369, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!237 = metadata !{i32 371, i32 0, metadata !236, null}
!238 = metadata !{i32 372, i32 0, metadata !236, null}
!239 = metadata !{i32 373, i32 0, metadata !236, null}
!240 = metadata !{i32 374, i32 0, metadata !236, null}
!241 = metadata !{i32 375, i32 0, metadata !236, null}
!242 = metadata !{i32 376, i32 0, metadata !236, null}
!243 = metadata !{i32 377, i32 0, metadata !236, null}
!244 = metadata !{i32 379, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !236, i32 379, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!246 = metadata !{i32 380, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !245, i32 379, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!248 = metadata !{i32 381, i32 0, metadata !247, null}
!249 = metadata !{i32 382, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !245, i32 381, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!251 = metadata !{i32 385, i32 0, metadata !236, null}
!252 = metadata !{i32 386, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !236, i32 386, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!254 = metadata !{i32 387, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 386, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!256 = metadata !{i32 388, i32 0, metadata !255, null}
!257 = metadata !{i32 389, i32 0, metadata !255, null}
!258 = metadata !{i32 390, i32 0, metadata !255, null}
!259 = metadata !{i32 391, i32 0, metadata !255, null}
!260 = metadata !{i32 392, i32 0, metadata !255, null}
!261 = metadata !{i32 393, i32 0, metadata !255, null}
!262 = metadata !{i32 394, i32 0, metadata !255, null}
!263 = metadata !{i32 395, i32 0, metadata !255, null}
!264 = metadata !{i32 397, i32 0, metadata !255, null}
!265 = metadata !{i32 399, i32 0, metadata !255, null}
!266 = metadata !{i32 400, i32 0, metadata !255, null}
!267 = metadata !{i32 401, i32 0, metadata !255, null}
!268 = metadata !{i32 402, i32 0, metadata !255, null}
!269 = metadata !{i32 403, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !253, i32 402, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/simpleRayTracer/plane.c]
!271 = metadata !{i32 405, i32 0, metadata !236, null}
!272 = metadata !{i32 409, i32 0, metadata !18, null}
!273 = metadata !{i32 410, i32 0, metadata !18, null}
!274 = metadata !{i32 411, i32 0, metadata !18, null}
!275 = metadata !{i32 412, i32 0, metadata !18, null}
!276 = metadata !{i32 413, i32 0, metadata !18, null}
!277 = metadata !{i32 414, i32 0, metadata !18, null}
!278 = metadata !{i32 415, i32 0, metadata !18, null}
!279 = metadata !{i32 416, i32 0, metadata !18, null}
!280 = metadata !{i32 417, i32 0, metadata !18, null}
!281 = metadata !{i32 418, i32 0, metadata !18, null}
!282 = metadata !{i32 419, i32 0, metadata !18, null}
!283 = metadata !{i32 420, i32 0, metadata !18, null}
!284 = metadata !{i32 421, i32 0, metadata !18, null}
!285 = metadata !{i32 422, i32 0, metadata !18, null}
!286 = metadata !{i32 423, i32 0, metadata !18, null}
!287 = metadata !{i32 424, i32 0, metadata !18, null}
!288 = metadata !{i32 425, i32 0, metadata !18, null}
!289 = metadata !{i32 426, i32 0, metadata !18, null}
!290 = metadata !{i32 427, i32 0, metadata !18, null}
!291 = metadata !{i32 428, i32 0, metadata !18, null}
!292 = metadata !{i32 429, i32 0, metadata !18, null}
!293 = metadata !{i32 430, i32 0, metadata !18, null}
!294 = metadata !{i32 431, i32 0, metadata !18, null}
!295 = metadata !{i32 432, i32 0, metadata !18, null}
!296 = metadata !{i32 433, i32 0, metadata !18, null}
!297 = metadata !{i32 434, i32 0, metadata !18, null}
!298 = metadata !{i32 435, i32 0, metadata !18, null}
!299 = metadata !{i32 436, i32 0, metadata !18, null}
!300 = metadata !{i32 437, i32 0, metadata !18, null}
!301 = metadata !{i32 438, i32 0, metadata !18, null}
!302 = metadata !{i32 439, i32 0, metadata !18, null}
!303 = metadata !{i32 447, i32 0, metadata !18, null}
!304 = metadata !{i32 452, i32 0, metadata !21, null}
!305 = metadata !{i32 453, i32 0, metadata !21, null}
!306 = metadata !{i32 454, i32 0, metadata !21, null}
!307 = metadata !{i32 455, i32 0, metadata !21, null}
!308 = metadata !{i32 457, i32 0, metadata !21, null}
!309 = metadata !{i32 458, i32 0, metadata !21, null}
!310 = metadata !{i32 459, i32 0, metadata !21, null}
!311 = metadata !{i32 460, i32 0, metadata !21, null}
!312 = metadata !{i32 467, i32 0, metadata !21, null}
!313 = metadata !{i32 468, i32 0, metadata !21, null}
!314 = metadata !{i32 13, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !40, metadata !39, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!316 = metadata !{i32 14, i32 0, metadata !315, null}
!317 = metadata !{i32 15, i32 0, metadata !39, null}
!318 = metadata !{i32 15, i32 0, metadata !50, null}
!319 = metadata !{i32 16, i32 0, metadata !50, null}
!320 = metadata !{metadata !321, metadata !321, i64 0}
!321 = metadata !{metadata !"int", metadata !322, i64 0}
!322 = metadata !{metadata !"omnipotent char", metadata !323, i64 0}
!323 = metadata !{metadata !"Simple C/C++ TBAA"}
!324 = metadata !{i32 21, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !64, metadata !63, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!326 = metadata !{i32 27, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !64, metadata !325, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!328 = metadata !{i32 29, i32 0, metadata !63, null}
!329 = metadata !{i32 16, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !76, metadata !75, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!331 = metadata !{i32 17, i32 0, metadata !330, null}
!332 = metadata !{i32 19, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !76, metadata !75, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!334 = metadata !{i32 22, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !76, metadata !333, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!336 = metadata !{i32 25, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !76, metadata !335, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!338 = metadata !{i32 26, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !76, metadata !337, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!340 = metadata !{i32 27, i32 0, metadata !339, null}
!341 = metadata !{i32 28, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !76, metadata !337, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!343 = metadata !{i32 29, i32 0, metadata !342, null}
!344 = metadata !{i32 32, i32 0, metadata !335, null}
!345 = metadata !{i32 34, i32 0, metadata !75, null}
!346 = metadata !{i32 16, i32 0, metadata !88, null}
!347 = metadata !{i32 17, i32 0, metadata !88, null}
!348 = metadata !{metadata !348, metadata !349, metadata !350}
!349 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!350 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!351 = metadata !{metadata !322, metadata !322, i64 0}
!352 = metadata !{metadata !352, metadata !349, metadata !350}
!353 = metadata !{i32 18, i32 0, metadata !88, null}
!354 = metadata !{i32 16, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !108, metadata !107, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!356 = metadata !{i32 19, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !108, metadata !107, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!358 = metadata !{i32 20, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !108, metadata !357, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!360 = metadata !{metadata !360, metadata !349, metadata !350}
!361 = metadata !{metadata !361, metadata !349, metadata !350}
!362 = metadata !{i32 22, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !108, metadata !357, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!364 = metadata !{i32 24, i32 0, metadata !363, null}
!365 = metadata !{i32 23, i32 0, metadata !363, null}
!366 = metadata !{metadata !366, metadata !349, metadata !350}
!367 = metadata !{metadata !367, metadata !349, metadata !350}
!368 = metadata !{i32 28, i32 0, metadata !107, null}
!369 = metadata !{i32 15, i32 0, metadata !122, null}
!370 = metadata !{i32 16, i32 0, metadata !122, null}
!371 = metadata !{metadata !371, metadata !349, metadata !350}
!372 = metadata !{metadata !372, metadata !349, metadata !350}
!373 = metadata !{i32 17, i32 0, metadata !122, null}
!374 = metadata !{i32 13, i32 0, metadata !137, null}
!375 = metadata !{i32 14, i32 0, metadata !137, null}
!376 = metadata !{i32 15, i32 0, metadata !137, null}
