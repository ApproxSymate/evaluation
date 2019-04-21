; ModuleID = 'raytracer-symbolic.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numIterations = global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"arg3\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"arg4\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"arg3_err\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"arg4_err\00", align 1
@w = common global i32 0, align 4
@h = common global i32 0, align 4
@texture = common global i32 0, align 4
@light = common global i32 0, align 4
@k = common global i32 0, align 4
@sng = common global i32 0, align 4
@lcoff = common global i32 0, align 4
@.str4 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %args1 = alloca i32, align 4
  %args2 = alloca i32, align 4
  %args3 = alloca i32, align 4
  %args4 = alloca i32, align 4
  store i32 2, i32* %args1, align 4, !dbg !143
  store i32 1, i32* %args2, align 4, !dbg !144
  %1 = bitcast i32* %args3 to i8*, !dbg !145
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)), !dbg !145
  %2 = bitcast i32* %args4 to i8*, !dbg !146
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0)), !dbg !146
  %3 = bitcast i32* %args3 to i8*, !dbg !147
  call void @klee_track_error(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)), !dbg !147
  %4 = bitcast i32* %args4 to i8*, !dbg !148
  call void @klee_track_error(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0)), !dbg !148
  %5 = load i32* %args1, align 4, !dbg !149
  %6 = load i32* %args2, align 4, !dbg !149
  %7 = load i32* %args3, align 4, !dbg !149
  %8 = load i32* %args4, align 4, !dbg !149
  call void @init(i32 %5, i32 %6, i32 %7, i32 %8), !dbg !149
  ret i32 0, !dbg !150
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_track_error(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @init(i32 %args1, i32 %args2, i32 %args3, i32 %args4) #0 {
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
  store i32 %args1, i32* %1, align 4
  store i32 %args2, i32* %2, align 4
  store i32 %args3, i32* %3, align 4
  store i32 %args4, i32* %4, align 4
  store i32 4, i32* @w, align 4, !dbg !151
  store i32 2, i32* @h, align 4, !dbg !152
  %6 = load i32* %1, align 4, !dbg !153
  store i32 %6, i32* @texture, align 4, !dbg !153
  %7 = load i32* %2, align 4, !dbg !154
  store i32 %7, i32* @light, align 4, !dbg !154
  %8 = load i32* @w, align 4, !dbg !155
  %9 = load i32* @h, align 4, !dbg !155
  %10 = mul nsw i32 %8, %9, !dbg !155
  %11 = zext i32 %10 to i64, !dbg !155
  store i8* null, i8** %5, !dbg !155
  %12 = alloca i32, i64 %11, align 16, !dbg !155
  %13 = load i32* %3, align 4, !dbg !156
  store i32 %13, i32* %lly, align 4, !dbg !156
  %14 = load i32* %4, align 4, !dbg !157
  store i32 %14, i32* %ye, align 4, !dbg !157
  store i32 0, i32* %nx, align 4, !dbg !158
  store i32 1, i32* %ny, align 4, !dbg !159
  store i32 0, i32* %nz, align 4, !dbg !160
  store i32 -16777216, i32* %bl, align 4, !dbg !161
  %15 = load i32* @w, align 4, !dbg !162
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !162
  %16 = sdiv i32 %15, 2, !dbg !162
  store i32 %16, i32* %w1, align 4, !dbg !162
  %17 = load i32* @h, align 4, !dbg !163
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !163
  %18 = sdiv i32 %17, 2, !dbg !163
  store i32 %18, i32* %h1, align 4, !dbg !163
  store i32 0, i32* %xe, align 4, !dbg !164
  store i32 0, i32* %ze, align 4, !dbg !165
  store i32 -1, i32* @k, align 4, !dbg !166
  store i32 0, i32* %y, align 4, !dbg !167
  br label %19, !dbg !167

; <label>:19                                      ; preds = %156, %0
  %20 = load i32* %y, align 4, !dbg !167
  %21 = load i32* @h, align 4, !dbg !167
  %22 = icmp slt i32 %20, %21, !dbg !167
  br i1 %22, label %23, label %159, !dbg !167

; <label>:23                                      ; preds = %19
  store i32 0, i32* %x, align 4, !dbg !169
  br label %24, !dbg !169

; <label>:24                                      ; preds = %151, %23
  %25 = load i32* %x, align 4, !dbg !169
  %26 = load i32* @w, align 4, !dbg !169
  %27 = icmp slt i32 %25, %26, !dbg !169
  br i1 %27, label %28, label %156, !dbg !169

; <label>:28                                      ; preds = %24
  store i32 -1, i32* %t, align 4, !dbg !172
  %29 = load i32* %x, align 4, !dbg !174
  %30 = load i32* %w1, align 4, !dbg !174
  %31 = sub nsw i32 %29, %30, !dbg !174
  %32 = load i32* %w1, align 4, !dbg !174
  %int_cast_to_i642 = zext i32 %32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !174
  %33 = sdiv i32 %31, %32, !dbg !174
  store i32 %33, i32* %xd, align 4, !dbg !174
  %34 = load i32* %h1, align 4, !dbg !175
  %35 = load i32* %y, align 4, !dbg !175
  %36 = sub nsw i32 %34, %35, !dbg !175
  %37 = load i32* %h1, align 4, !dbg !175
  %int_cast_to_i643 = zext i32 %37 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !175
  %38 = sdiv i32 %36, %37, !dbg !175
  store i32 %38, i32* %yd, align 4, !dbg !175
  store i32 -1, i32* %zd, align 4, !dbg !176
  %39 = load i32* %xd, align 4, !dbg !177
  %40 = load i32* %xd, align 4, !dbg !177
  %41 = mul nsw i32 %39, %40, !dbg !177
  %42 = load i32* %yd, align 4, !dbg !177
  %43 = load i32* %yd, align 4, !dbg !177
  %44 = mul nsw i32 %42, %43, !dbg !177
  %45 = add nsw i32 %41, %44, !dbg !177
  %46 = load i32* %zd, align 4, !dbg !177
  %47 = load i32* %zd, align 4, !dbg !177
  %48 = mul nsw i32 %46, %47, !dbg !177
  %49 = add nsw i32 %45, %48, !dbg !177
  store i32 %49, i32* %l, align 4, !dbg !177
  %50 = load i32* %l, align 4, !dbg !178
  %51 = load i32* %xd, align 4, !dbg !178
  %int_cast_to_i644 = zext i32 %50 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !178
  %52 = sdiv i32 %51, %50, !dbg !178
  store i32 %52, i32* %xd, align 4, !dbg !178
  %53 = load i32* %l, align 4, !dbg !179
  %54 = load i32* %yd, align 4, !dbg !179
  %int_cast_to_i645 = zext i32 %53 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !179
  %55 = sdiv i32 %54, %53, !dbg !179
  store i32 %55, i32* %yd, align 4, !dbg !179
  %56 = load i32* %l, align 4, !dbg !180
  %57 = load i32* %zd, align 4, !dbg !180
  %int_cast_to_i646 = zext i32 %56 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !180
  %58 = sdiv i32 %57, %56, !dbg !180
  store i32 %58, i32* %zd, align 4, !dbg !180
  %59 = load i32* @k, align 4, !dbg !181
  %60 = load i32* %ye, align 4, !dbg !181
  %61 = sub nsw i32 %59, %60, !dbg !181
  %62 = load i32* %yd, align 4, !dbg !181
  %63 = mul nsw i32 %61, %62, !dbg !181
  %64 = icmp sle i32 %63, 0, !dbg !181
  br i1 %64, label %65, label %66, !dbg !181

; <label>:65                                      ; preds = %28
  store i32 -1, i32* %t, align 4, !dbg !183
  br label %72, !dbg !185

; <label>:66                                      ; preds = %28
  %67 = load i32* @k, align 4, !dbg !186
  %68 = load i32* %ye, align 4, !dbg !186
  %69 = sub nsw i32 %67, %68, !dbg !186
  %70 = load i32* %yd, align 4, !dbg !186
  %int_cast_to_i647 = zext i32 %70 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !186
  %71 = sdiv i32 %69, %70, !dbg !186
  store i32 %71, i32* %t, align 4, !dbg !186
  br label %72

; <label>:72                                      ; preds = %66, %65
  %73 = load i32* %y, align 4, !dbg !188
  %74 = load i32* @w, align 4, !dbg !188
  %75 = mul nsw i32 %73, %74, !dbg !188
  %76 = load i32* %x, align 4, !dbg !188
  %77 = add nsw i32 %75, %76, !dbg !188
  store i32 %77, i32* %index, align 4, !dbg !188
  %78 = load i32* %t, align 4, !dbg !189
  %79 = icmp sge i32 %78, 0, !dbg !189
  br i1 %79, label %80, label %146, !dbg !189

; <label>:80                                      ; preds = %72
  %81 = load i32* %xe, align 4, !dbg !191
  %82 = load i32* %t, align 4, !dbg !191
  %83 = load i32* %xd, align 4, !dbg !191
  %84 = mul nsw i32 %82, %83, !dbg !191
  %85 = add nsw i32 %81, %84, !dbg !191
  store i32 %85, i32* %ix, align 4, !dbg !191
  %86 = load i32* %ye, align 4, !dbg !193
  %87 = load i32* %t, align 4, !dbg !193
  %88 = load i32* %yd, align 4, !dbg !193
  %89 = mul nsw i32 %87, %88, !dbg !193
  %90 = add nsw i32 %86, %89, !dbg !193
  store i32 %90, i32* %iy, align 4, !dbg !193
  %91 = load i32* %ze, align 4, !dbg !194
  %92 = load i32* %t, align 4, !dbg !194
  %93 = load i32* %zd, align 4, !dbg !194
  %94 = mul nsw i32 %92, %93, !dbg !194
  %95 = add nsw i32 %91, %94, !dbg !194
  store i32 %95, i32* %iz, align 4, !dbg !194
  store i32 0, i32* %lx, align 4, !dbg !195
  %96 = load i32* %lly, align 4, !dbg !196
  store i32 %96, i32* %ly, align 4, !dbg !196
  store i32 0, i32* %lz, align 4, !dbg !197
  %97 = load i32* %lx, align 4, !dbg !198
  %98 = load i32* %ix, align 4, !dbg !198
  %99 = sub nsw i32 %97, %98, !dbg !198
  store i32 %99, i32* %lx, align 4, !dbg !198
  %100 = load i32* %ly, align 4, !dbg !199
  %101 = load i32* %iy, align 4, !dbg !199
  %102 = sub nsw i32 %100, %101, !dbg !199
  store i32 %102, i32* %ly, align 4, !dbg !199
  %103 = load i32* %lz, align 4, !dbg !200
  %104 = load i32* %iz, align 4, !dbg !200
  %105 = sub nsw i32 %103, %104, !dbg !200
  store i32 %105, i32* %lz, align 4, !dbg !200
  %106 = load i32* %lx, align 4, !dbg !201
  %107 = load i32* %lx, align 4, !dbg !201
  %108 = mul nsw i32 %106, %107, !dbg !201
  %109 = load i32* %ly, align 4, !dbg !201
  %110 = load i32* %ly, align 4, !dbg !201
  %111 = mul nsw i32 %109, %110, !dbg !201
  %112 = add nsw i32 %108, %111, !dbg !201
  %113 = load i32* %lz, align 4, !dbg !201
  %114 = load i32* %lz, align 4, !dbg !201
  %115 = mul nsw i32 %113, %114, !dbg !201
  %116 = add nsw i32 %112, %115, !dbg !201
  %117 = sitofp i32 %116 to double, !dbg !201
  %118 = call double @sqrt(double %117) #3, !dbg !201
  %119 = fptosi double %118 to i32, !dbg !201
  store i32 %119, i32* @sng, align 4, !dbg !201
  %120 = load i32* @sng, align 4, !dbg !202
  %121 = icmp ne i32 %120, 0, !dbg !202
  %122 = zext i1 %121 to i32, !dbg !202
  %123 = sext i32 %122 to i64, !dbg !202
  call void @klee_assume(i64 %123), !dbg !202
  %124 = load i32* @sng, align 4, !dbg !203
  %int_cast_to_i648 = zext i32 %124 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !203
  %125 = sdiv i32 1, %124, !dbg !203
  store i32 %125, i32* @sng, align 4, !dbg !203
  %126 = load i32* %lx, align 4, !dbg !204
  %127 = load i32* %nx, align 4, !dbg !204
  %128 = mul nsw i32 %126, %127, !dbg !204
  %129 = load i32* %ly, align 4, !dbg !204
  %130 = load i32* %ny, align 4, !dbg !204
  %131 = mul nsw i32 %129, %130, !dbg !204
  %132 = add nsw i32 %128, %131, !dbg !204
  %133 = load i32* %lz, align 4, !dbg !204
  %134 = load i32* %nz, align 4, !dbg !204
  %135 = mul nsw i32 %133, %134, !dbg !204
  %136 = add nsw i32 %132, %135, !dbg !204
  %137 = load i32* @sng, align 4, !dbg !204
  %138 = mul nsw i32 %136, %137, !dbg !204
  store i32 %138, i32* @lcoff, align 4, !dbg !204
  %139 = load i32* %ix, align 4, !dbg !205
  %140 = load i32* %iy, align 4, !dbg !205
  %141 = load i32* %iz, align 4, !dbg !205
  %142 = call i32 @texture1(i32 %139, i32 %140, i32 %141), !dbg !205
  %143 = load i32* %index, align 4, !dbg !205
  %144 = sext i32 %143 to i64, !dbg !205
  %145 = getelementptr inbounds i32* %12, i64 %144, !dbg !205
  store i32 %142, i32* %145, align 4, !dbg !205
  br label %151, !dbg !206

; <label>:146                                     ; preds = %72
  %147 = load i32* %bl, align 4, !dbg !207
  %148 = load i32* %index, align 4, !dbg !207
  %149 = sext i32 %148 to i64, !dbg !207
  %150 = getelementptr inbounds i32* %12, i64 %149, !dbg !207
  store i32 %147, i32* %150, align 4, !dbg !207
  br label %151

; <label>:151                                     ; preds = %146, %80
  %152 = load i32* @numIterations, align 4, !dbg !209
  %153 = add nsw i32 %152, 1, !dbg !209
  store i32 %153, i32* @numIterations, align 4, !dbg !209
  %154 = load i32* %x, align 4, !dbg !169
  %155 = add nsw i32 %154, 1, !dbg !169
  store i32 %155, i32* %x, align 4, !dbg !169
  br label %24, !dbg !169

; <label>:156                                     ; preds = %24
  %157 = load i32* %y, align 4, !dbg !167
  %158 = add nsw i32 %157, 1, !dbg !167
  store i32 %158, i32* %y, align 4, !dbg !167
  br label %19, !dbg !167

; <label>:159                                     ; preds = %19
  %160 = load i8** %5, !dbg !210
  ret void, !dbg !210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare void @klee_assume(i64) #2

; Function Attrs: nounwind uwtable
define i32 @texture1(i32 %x, i32 %y, i32 %z) #0 {
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
  store i32 255, i32* %r, align 4, !dbg !211
  store i32 0, i32* %b, align 4, !dbg !212
  store i32 0, i32* %col, align 4, !dbg !213
  %4 = load i32* @light, align 4, !dbg !214
  %5 = icmp ne i32 %4, 0, !dbg !214
  br i1 %5, label %6, label %9, !dbg !214

; <label>:6                                       ; preds = %0
  %7 = load i32* @lcoff, align 4, !dbg !216
  %8 = mul nsw i32 255, %7, !dbg !216
  store i32 %8, i32* %r, align 4, !dbg !216
  br label %9, !dbg !218

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %r, align 4, !dbg !219
  store i32 %10, i32* %b, align 4, !dbg !219
  %11 = load i32* @texture, align 4, !dbg !220
  %12 = icmp eq i32 %11, 1, !dbg !220
  br i1 %12, label %13, label %14, !dbg !220

; <label>:13                                      ; preds = %9
  store i32 -65536, i32* %col, align 4, !dbg !222
  br label %37, !dbg !224

; <label>:14                                      ; preds = %9
  %15 = load i32* @texture, align 4, !dbg !225
  %16 = icmp eq i32 %15, 2, !dbg !225
  br i1 %16, label %17, label %37, !dbg !225

; <label>:17                                      ; preds = %14
  %18 = load i32* %1, align 4, !dbg !227
  %19 = sitofp i32 %18 to double, !dbg !227
  %20 = call double @round(double %19) #1, !dbg !227
  %21 = fptosi double %20 to i32, !dbg !227
  %22 = load i32* %3, align 4, !dbg !227
  %23 = sitofp i32 %22 to double, !dbg !227
  %24 = call double @round(double %23) #1, !dbg !227
  %25 = fptosi double %24 to i32, !dbg !227
  %26 = add nsw i32 %21, %25, !dbg !227
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !227
  %27 = srem i32 %26, 2, !dbg !227
  store i32 %27, i32* %v, align 4, !dbg !227
  %28 = load i32* %v, align 4, !dbg !229
  %29 = icmp eq i32 %28, 0, !dbg !229
  br i1 %29, label %30, label %33, !dbg !229

; <label>:30                                      ; preds = %17
  %31 = load i32* %b, align 4, !dbg !231
  %32 = or i32 -16777216, %31, !dbg !231
  store i32 %32, i32* %col, align 4, !dbg !231
  br label %37, !dbg !233

; <label>:33                                      ; preds = %17
  %34 = load i32* %r, align 4, !dbg !234
  %int_cast_to_i641 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !234
  %35 = shl i32 %34, 16, !dbg !234
  %36 = or i32 -16777216, %35, !dbg !234
  store i32 %36, i32* %col, align 4, !dbg !234
  br label %37

; <label>:37                                      ; preds = %14, %33, %30, %13
  %38 = load i32* %col, align 4, !dbg !236
  ret i32 %38, !dbg !236
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind readnone
declare double @round(double) #5

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #6 {
  %1 = icmp eq i64 %z, 0, !dbg !237
  br i1 %1, label %2, label %3, !dbg !237

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0)) #8, !dbg !239
  unreachable, !dbg !239

; <label>:3                                       ; preds = %0
  ret void, !dbg !240
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #6 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !241
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #9, !dbg !241
  %2 = load i32* %x, align 4, !dbg !242, !tbaa !243
  ret i32 %2, !dbg !242
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #6 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !247
  br i1 %1, label %3, label %2, !dbg !247

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !249
  unreachable, !dbg !249

; <label>:3                                       ; preds = %0
  ret void, !dbg !251
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #6 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !252
  br i1 %1, label %3, label %2, !dbg !252

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !254
  unreachable, !dbg !254

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !255
  %5 = icmp eq i32 %4, %end, !dbg !255
  br i1 %5, label %21, label %6, !dbg !255

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !257
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #9, !dbg !257
  %8 = icmp eq i32 %start, 0, !dbg !259
  %9 = load i32* %x, align 4, !dbg !261, !tbaa !243
  br i1 %8, label %10, label %13, !dbg !259

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !261
  %12 = zext i1 %11 to i64, !dbg !261
  call void @klee_assume(i64 %12) #9, !dbg !261
  br label %19, !dbg !263

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !264
  %15 = zext i1 %14 to i64, !dbg !264
  call void @klee_assume(i64 %15) #9, !dbg !264
  %16 = load i32* %x, align 4, !dbg !266, !tbaa !243
  %17 = icmp slt i32 %16, %end, !dbg !266
  %18 = zext i1 %17 to i64, !dbg !266
  call void @klee_assume(i64 %18) #9, !dbg !266
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !267, !tbaa !243
  br label %21, !dbg !267

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !268
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
  %1 = icmp eq i64 %len, 0, !dbg !269
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !269

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !270
  %wide.load = load <16 x i8>* %3, align 1, !dbg !270
  %next.gep.sum279 = or i64 %index, 16, !dbg !270
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !270
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !270
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !270
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !270
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !270
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !270
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !270
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !270
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !271

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
  %10 = add i64 %.01, -1, !dbg !269
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !270
  %12 = load i8* %src.03, align 1, !dbg !270, !tbaa !274
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !270
  store i8 %12, i8* %dest.02, align 1, !dbg !270, !tbaa !274
  %14 = icmp eq i64 %10, 0, !dbg !269
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !269, !llvm.loop !275

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !276
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #6 {
  %1 = icmp eq i8* %src, %dst, !dbg !277
  br i1 %1, label %.loopexit, label %2, !dbg !277

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !279
  br i1 %3, label %.preheader, label %18, !dbg !279

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !281
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !281

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !281
  %wide.load = load <16 x i8>* %6, align 1, !dbg !281
  %next.gep.sum586 = or i64 %index, 16, !dbg !281
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !281
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !281
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !281
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !281
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !281
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !281
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !281
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !281
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !283

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
  %13 = add i64 %.02, -1, !dbg !281
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !281
  %15 = load i8* %b.04, align 1, !dbg !281, !tbaa !274
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !281
  store i8 %15, i8* %a.03, align 1, !dbg !281, !tbaa !274
  %17 = icmp eq i64 %13, 0, !dbg !281
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !281, !llvm.loop !284

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !285
  %20 = icmp eq i64 %count, 0, !dbg !287
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !287

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !288
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !285
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !287
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !287
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !287
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !287
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !287
  %.sum505 = add i64 %.sum440, -31, !dbg !287
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !287
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !287
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !287
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !287
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !287
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !287
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !287
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !287
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !287
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !287
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !287
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !287
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !289

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
  %32 = add i64 %.16, -1, !dbg !287
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !287
  %34 = load i8* %b.18, align 1, !dbg !287, !tbaa !274
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !287
  store i8 %34, i8* %a.17, align 1, !dbg !287, !tbaa !274
  %36 = icmp eq i64 %32, 0, !dbg !287
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !287, !llvm.loop !290

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !291
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
  %1 = icmp eq i64 %len, 0, !dbg !292
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !292

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !293
  %wide.load = load <16 x i8>* %3, align 1, !dbg !293
  %next.gep.sum280 = or i64 %index, 16, !dbg !293
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !293
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !293
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !293
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !293
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !293
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !293
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !293
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !293
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !294

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
  %10 = add i64 %.01, -1, !dbg !292
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !293
  %12 = load i8* %src.03, align 1, !dbg !293, !tbaa !274
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !293
  store i8 %12, i8* %dest.02, align 1, !dbg !293, !tbaa !274
  %14 = icmp eq i64 %10, 0, !dbg !292
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !292, !llvm.loop !295

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !292

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !296
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #6 {
  %1 = icmp eq i64 %count, 0, !dbg !297
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !297

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !298
  br label %3, !dbg !297

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !297
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !298
  store volatile i8 %2, i8* %a.02, align 1, !dbg !298, !tbaa !274
  %6 = icmp eq i64 %4, 0, !dbg !297
  br i1 %6, label %._crit_edge, label %3, !dbg !297

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !299
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #6 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noreturn nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !24, !35, !49, !61, !74, !94, !109, !124}
!llvm.module.flags = !{!140, !141}
!llvm.ident = !{!142, !142, !142, !142, !142, !142, !142, !142, !142}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"raytracer-symbolic.c", metadata !"/home/himeshi/Projects/workspace/Enerj/raytracer"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init", metadata !"init", metadata !"", i32 40, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32)* @init, null, null, metadata !2, i32 40} ; [
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"texture1", metadata !"texture1", metadata !"", i32 117, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @texture1, null, null, metadata !2, i32
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23}
!16 = metadata !{i32 786484, i32 0, null, metadata !"numIterations", metadata !"numIterations", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @numIterations, null} ; [ DW_TAG_variable ] [numIterations] [line 23] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"w", metadata !"w", metadata !"", metadata !5, i32 18, metadata !8, i32 0, i32 1, i32* @w, null} ; [ DW_TAG_variable ] [w] [line 18] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !5, i32 18, metadata !8, i32 0, i32 1, i32* @h, null} ; [ DW_TAG_variable ] [h] [line 18] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !5, i32 19, metadata !8, i32 0, i32 1, i32* @k, null} ; [ DW_TAG_variable ] [k] [line 19] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"texture", metadata !"texture", metadata !"", metadata !5, i32 20, metadata !8, i32 0, i32 1, i32* @texture, null} ; [ DW_TAG_variable ] [texture] [line 20] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"light", metadata !"light", metadata !"", metadata !5, i32 20, metadata !8, i32 0, i32 1, i32* @light, null} ; [ DW_TAG_variable ] [light] [line 20] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"lcoff", metadata !"lcoff", metadata !"", metadata !5, i32 21, metadata !8, i32 0, i32 1, i32* @lcoff, null} ; [ DW_TAG_variable ] [lcoff] [line 21] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"sng", metadata !"sng", metadata !"", metadata !5, i32 22, metadata !8, i32 0, i32 1, i32* @sng, null} ; [ DW_TAG_variable ] [sng] [line 22] [def]
!24 = metadata !{i32 786449, metadata !25, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !26, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!25 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786478, metadata !28, metadata !29, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!28 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!29 = metadata !{i32 786473, metadata !28}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !32}
!32 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786689, metadata !27, metadata !"z", metadata !29, i32 16777228, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!35 = metadata !{i32 786449, metadata !36, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !37, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!36 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786478, metadata !39, metadata !40, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !46, i32 13} ; [ 
!39 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!40 = metadata !{i32 786473, metadata !39}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !8, metadata !43}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786689, metadata !38, metadata !"name", metadata !40, i32 16777229, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!48 = metadata !{i32 786688, metadata !38, metadata !"x", metadata !40, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!49 = metadata !{i32 786449, metadata !50, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !51, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!50 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786478, metadata !53, metadata !54, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!53 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!54 = metadata !{i32 786473, metadata !53}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !57, metadata !57}
!57 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786689, metadata !52, metadata !"bitWidth", metadata !54, i32 16777236, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!60 = metadata !{i32 786689, metadata !52, metadata !"shift", metadata !54, i32 33554452, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!61 = metadata !{i32 786449, metadata !62, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !63, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!62 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786478, metadata !65, metadata !66, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!65 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!66 = metadata !{i32 786473, metadata !65}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!67 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{metadata !8, metadata !8, metadata !8, metadata !43}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73}
!70 = metadata !{i32 786689, metadata !64, metadata !"start", metadata !66, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!71 = metadata !{i32 786689, metadata !64, metadata !"end", metadata !66, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!72 = metadata !{i32 786689, metadata !64, metadata !"name", metadata !66, i32 50331661, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!73 = metadata !{i32 786688, metadata !64, metadata !"x", metadata !66, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!74 = metadata !{i32 786449, metadata !75, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !76, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!75 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786478, metadata !78, metadata !79, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !87, i32 12} 
!78 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!79 = metadata !{i32 786473, metadata !78}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!80 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !82, metadata !82, metadata !83, metadata !85}
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{i32 786454, metadata !78, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!86 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !93}
!88 = metadata !{i32 786689, metadata !77, metadata !"destaddr", metadata !79, i32 16777228, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!89 = metadata !{i32 786689, metadata !77, metadata !"srcaddr", metadata !79, i32 33554444, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!90 = metadata !{i32 786689, metadata !77, metadata !"len", metadata !79, i32 50331660, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!91 = metadata !{i32 786688, metadata !77, metadata !"dest", metadata !79, i32 13, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!93 = metadata !{i32 786688, metadata !77, metadata !"src", metadata !79, i32 14, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!94 = metadata !{i32 786449, metadata !95, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !96, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!95 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786478, metadata !98, metadata !99, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !103, i32
!98 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!99 = metadata !{i32 786473, metadata !98}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!100 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !82, metadata !82, metadata !83, metadata !102}
!102 = metadata !{i32 786454, metadata !98, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!104 = metadata !{i32 786689, metadata !97, metadata !"dst", metadata !99, i32 16777228, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!105 = metadata !{i32 786689, metadata !97, metadata !"src", metadata !99, i32 33554444, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!106 = metadata !{i32 786689, metadata !97, metadata !"count", metadata !99, i32 50331660, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!107 = metadata !{i32 786688, metadata !97, metadata !"a", metadata !99, i32 13, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!108 = metadata !{i32 786688, metadata !97, metadata !"b", metadata !99, i32 14, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!109 = metadata !{i32 786449, metadata !110, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !111, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!110 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786478, metadata !113, metadata !114, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !118, 
!113 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!114 = metadata !{i32 786473, metadata !113}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!115 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !82, metadata !82, metadata !83, metadata !117}
!117 = metadata !{i32 786454, metadata !113, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!119 = metadata !{i32 786689, metadata !112, metadata !"destaddr", metadata !114, i32 16777227, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!120 = metadata !{i32 786689, metadata !112, metadata !"srcaddr", metadata !114, i32 33554443, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!121 = metadata !{i32 786689, metadata !112, metadata !"len", metadata !114, i32 50331659, metadata !117, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!122 = metadata !{i32 786688, metadata !112, metadata !"dest", metadata !114, i32 12, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!123 = metadata !{i32 786688, metadata !112, metadata !"src", metadata !114, i32 13, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!124 = metadata !{i32 786449, metadata !125, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !126, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!125 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 786478, metadata !128, metadata !129, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !133, i32
!128 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!129 = metadata !{i32 786473, metadata !128}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!130 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !82, metadata !82, metadata !8, metadata !132}
!132 = metadata !{i32 786454, metadata !128, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137}
!134 = metadata !{i32 786689, metadata !127, metadata !"dst", metadata !129, i32 16777227, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!135 = metadata !{i32 786689, metadata !127, metadata !"s", metadata !129, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!136 = metadata !{i32 786689, metadata !127, metadata !"count", metadata !129, i32 50331659, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!137 = metadata !{i32 786688, metadata !127, metadata !"a", metadata !129, i32 12, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!139 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!140 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!141 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!142 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!143 = metadata !{i32 29, i32 0, metadata !4, null}
!144 = metadata !{i32 30, i32 0, metadata !4, null}
!145 = metadata !{i32 31, i32 0, metadata !4, null}
!146 = metadata !{i32 32, i32 0, metadata !4, null}
!147 = metadata !{i32 34, i32 0, metadata !4, null}
!148 = metadata !{i32 35, i32 0, metadata !4, null}
!149 = metadata !{i32 37, i32 0, metadata !4, null}
!150 = metadata !{i32 38, i32 0, metadata !4, null}
!151 = metadata !{i32 41, i32 0, metadata !9, null}
!152 = metadata !{i32 42, i32 0, metadata !9, null}
!153 = metadata !{i32 43, i32 0, metadata !9, null}
!154 = metadata !{i32 44, i32 0, metadata !9, null}
!155 = metadata !{i32 45, i32 0, metadata !9, null}
!156 = metadata !{i32 52, i32 0, metadata !9, null}
!157 = metadata !{i32 53, i32 0, metadata !9, null}
!158 = metadata !{i32 55, i32 0, metadata !9, null}
!159 = metadata !{i32 56, i32 0, metadata !9, null}
!160 = metadata !{i32 57, i32 0, metadata !9, null}
!161 = metadata !{i32 58, i32 0, metadata !9, null} ; [ DW_TAG_imported_module ]
!162 = metadata !{i32 62, i32 0, metadata !9, null}
!163 = metadata !{i32 63, i32 0, metadata !9, null}
!164 = metadata !{i32 65, i32 0, metadata !9, null}
!165 = metadata !{i32 67, i32 0, metadata !9, null}
!166 = metadata !{i32 68, i32 0, metadata !9, null}
!167 = metadata !{i32 70, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !9, i32 70, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!169 = metadata !{i32 71, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!171 = metadata !{i32 786443, metadata !1, metadata !168, i32 70, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!172 = metadata !{i32 72, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !170, i32 71, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!174 = metadata !{i32 73, i32 0, metadata !173, null}
!175 = metadata !{i32 74, i32 0, metadata !173, null}
!176 = metadata !{i32 75, i32 0, metadata !173, null}
!177 = metadata !{i32 76, i32 0, metadata !173, null}
!178 = metadata !{i32 77, i32 0, metadata !173, null}
!179 = metadata !{i32 78, i32 0, metadata !173, null}
!180 = metadata !{i32 79, i32 0, metadata !173, null}
!181 = metadata !{i32 81, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !173, i32 81, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!183 = metadata !{i32 82, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !182, i32 81, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!185 = metadata !{i32 83, i32 0, metadata !184, null}
!186 = metadata !{i32 84, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !182, i32 83, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!188 = metadata !{i32 87, i32 0, metadata !173, null}
!189 = metadata !{i32 88, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !173, i32 88, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!191 = metadata !{i32 89, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !190, i32 88, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!193 = metadata !{i32 90, i32 0, metadata !192, null}
!194 = metadata !{i32 91, i32 0, metadata !192, null}
!195 = metadata !{i32 92, i32 0, metadata !192, null}
!196 = metadata !{i32 93, i32 0, metadata !192, null}
!197 = metadata !{i32 94, i32 0, metadata !192, null}
!198 = metadata !{i32 95, i32 0, metadata !192, null}
!199 = metadata !{i32 96, i32 0, metadata !192, null}
!200 = metadata !{i32 97, i32 0, metadata !192, null}
!201 = metadata !{i32 98, i32 0, metadata !192, null}
!202 = metadata !{i32 99, i32 0, metadata !192, null}
!203 = metadata !{i32 100, i32 0, metadata !192, null}
!204 = metadata !{i32 101, i32 0, metadata !192, null}
!205 = metadata !{i32 102, i32 0, metadata !192, null}
!206 = metadata !{i32 103, i32 0, metadata !192, null}
!207 = metadata !{i32 104, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !190, i32 103, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!209 = metadata !{i32 106, i32 0, metadata !173, null}
!210 = metadata !{i32 115, i32 0, metadata !9, null}
!211 = metadata !{i32 121, i32 0, metadata !12, null}
!212 = metadata !{i32 122, i32 0, metadata !12, null}
!213 = metadata !{i32 123, i32 0, metadata !12, null}
!214 = metadata !{i32 124, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !12, i32 124, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!216 = metadata !{i32 125, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !215, i32 124, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!218 = metadata !{i32 126, i32 0, metadata !217, null}
!219 = metadata !{i32 127, i32 0, metadata !12, null}
!220 = metadata !{i32 129, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !12, i32 129, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!222 = metadata !{i32 130, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !221, i32 129, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!224 = metadata !{i32 131, i32 0, metadata !223, null}
!225 = metadata !{i32 131, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !221, i32 131, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!227 = metadata !{i32 132, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !226, i32 131, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!229 = metadata !{i32 133, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !228, i32 133, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!231 = metadata !{i32 134, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !230, i32 133, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!233 = metadata !{i32 135, i32 0, metadata !232, null}
!234 = metadata !{i32 136, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !230, i32 135, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic.c]
!236 = metadata !{i32 140, i32 0, metadata !12, null}
!237 = metadata !{i32 13, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !28, metadata !27, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!239 = metadata !{i32 14, i32 0, metadata !238, null}
!240 = metadata !{i32 15, i32 0, metadata !27, null}
!241 = metadata !{i32 15, i32 0, metadata !38, null}
!242 = metadata !{i32 16, i32 0, metadata !38, null}
!243 = metadata !{metadata !244, metadata !244, i64 0}
!244 = metadata !{metadata !"int", metadata !245, i64 0}
!245 = metadata !{metadata !"omnipotent char", metadata !246, i64 0}
!246 = metadata !{metadata !"Simple C/C++ TBAA"}
!247 = metadata !{i32 21, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !53, metadata !52, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!249 = metadata !{i32 27, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !53, metadata !248, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!251 = metadata !{i32 29, i32 0, metadata !52, null}
!252 = metadata !{i32 16, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !65, metadata !64, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!254 = metadata !{i32 17, i32 0, metadata !253, null}
!255 = metadata !{i32 19, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !65, metadata !64, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!257 = metadata !{i32 22, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !65, metadata !256, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!259 = metadata !{i32 25, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !65, metadata !258, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!261 = metadata !{i32 26, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !65, metadata !260, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!263 = metadata !{i32 27, i32 0, metadata !262, null}
!264 = metadata !{i32 28, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !65, metadata !260, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!266 = metadata !{i32 29, i32 0, metadata !265, null}
!267 = metadata !{i32 32, i32 0, metadata !258, null}
!268 = metadata !{i32 34, i32 0, metadata !64, null}
!269 = metadata !{i32 16, i32 0, metadata !77, null}
!270 = metadata !{i32 17, i32 0, metadata !77, null}
!271 = metadata !{metadata !271, metadata !272, metadata !273}
!272 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!273 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!274 = metadata !{metadata !245, metadata !245, i64 0}
!275 = metadata !{metadata !275, metadata !272, metadata !273}
!276 = metadata !{i32 18, i32 0, metadata !77, null}
!277 = metadata !{i32 16, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !98, metadata !97, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!279 = metadata !{i32 19, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !98, metadata !97, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!281 = metadata !{i32 20, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !98, metadata !280, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!283 = metadata !{metadata !283, metadata !272, metadata !273}
!284 = metadata !{metadata !284, metadata !272, metadata !273}
!285 = metadata !{i32 22, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !98, metadata !280, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!287 = metadata !{i32 24, i32 0, metadata !286, null}
!288 = metadata !{i32 23, i32 0, metadata !286, null}
!289 = metadata !{metadata !289, metadata !272, metadata !273}
!290 = metadata !{metadata !290, metadata !272, metadata !273}
!291 = metadata !{i32 28, i32 0, metadata !97, null}
!292 = metadata !{i32 15, i32 0, metadata !112, null}
!293 = metadata !{i32 16, i32 0, metadata !112, null}
!294 = metadata !{metadata !294, metadata !272, metadata !273}
!295 = metadata !{metadata !295, metadata !272, metadata !273}
!296 = metadata !{i32 17, i32 0, metadata !112, null}
!297 = metadata !{i32 13, i32 0, metadata !127, null}
!298 = metadata !{i32 14, i32 0, metadata !127, null}
!299 = metadata !{i32 15, i32 0, metadata !127, null}
