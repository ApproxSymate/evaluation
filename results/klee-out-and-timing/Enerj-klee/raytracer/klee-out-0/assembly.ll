; ModuleID = 'raytracer-symbolic2.bc'
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
@.str4 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"nx_err\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"ny_err\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"nz_err\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"xe\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"xe_err\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"ze\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"ze_err\00", align 1
@k = common global i32 0, align 4
@sng = common global i32 0, align 4
@lcoff = common global i32 0, align 4
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
  %15 = bitcast i32* %nx to i8*, !dbg !158
  call void @klee_make_symbolic(i8* %15, i64 4, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0)), !dbg !158
  %16 = bitcast i32* %ny to i8*, !dbg !159
  call void @klee_make_symbolic(i8* %16, i64 4, i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0)), !dbg !159
  %17 = bitcast i32* %nz to i8*, !dbg !160
  call void @klee_make_symbolic(i8* %17, i64 4, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0)), !dbg !160
  %18 = bitcast i32* %nx to i8*, !dbg !161
  call void @klee_track_error(i8* %18, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0)), !dbg !161
  %19 = bitcast i32* %ny to i8*, !dbg !162
  call void @klee_track_error(i8* %19, i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0)), !dbg !162
  %20 = bitcast i32* %nz to i8*, !dbg !163
  call void @klee_track_error(i8* %20, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0)), !dbg !163
  store i32 -16777216, i32* %bl, align 4, !dbg !164
  %21 = load i32* @w, align 4, !dbg !165
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !165
  %22 = sdiv i32 %21, 2, !dbg !165
  store i32 %22, i32* %w1, align 4, !dbg !165
  %23 = load i32* @h, align 4, !dbg !166
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !166
  %24 = sdiv i32 %23, 2, !dbg !166
  store i32 %24, i32* %h1, align 4, !dbg !166
  %25 = bitcast i32* %xe to i8*, !dbg !167
  call void @klee_make_symbolic(i8* %25, i64 4, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0)), !dbg !167
  %26 = bitcast i32* %xe to i8*, !dbg !168
  call void @klee_track_error(i8* %26, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0)), !dbg !168
  %27 = bitcast i32* %ze to i8*, !dbg !169
  call void @klee_make_symbolic(i8* %27, i64 4, i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0)), !dbg !169
  %28 = bitcast i32* %ze to i8*, !dbg !170
  call void @klee_track_error(i8* %28, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)), !dbg !170
  store i32 -1, i32* @k, align 4, !dbg !171
  store i32 0, i32* %y, align 4, !dbg !172
  br label %29, !dbg !172

; <label>:29                                      ; preds = %166, %0
  %30 = load i32* %y, align 4, !dbg !172
  %31 = load i32* @h, align 4, !dbg !172
  %32 = icmp slt i32 %30, %31, !dbg !172
  br i1 %32, label %33, label %169, !dbg !172

; <label>:33                                      ; preds = %29
  store i32 0, i32* %x, align 4, !dbg !174
  br label %34, !dbg !174

; <label>:34                                      ; preds = %161, %33
  %35 = load i32* %x, align 4, !dbg !174
  %36 = load i32* @w, align 4, !dbg !174
  %37 = icmp slt i32 %35, %36, !dbg !174
  br i1 %37, label %38, label %166, !dbg !174

; <label>:38                                      ; preds = %34
  store i32 -1, i32* %t, align 4, !dbg !177
  %39 = load i32* %x, align 4, !dbg !179
  %40 = load i32* %w1, align 4, !dbg !179
  %41 = sub nsw i32 %39, %40, !dbg !179
  %42 = load i32* %w1, align 4, !dbg !179
  %int_cast_to_i642 = zext i32 %42 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !179
  %43 = sdiv i32 %41, %42, !dbg !179
  store i32 %43, i32* %xd, align 4, !dbg !179
  %44 = load i32* %h1, align 4, !dbg !180
  %45 = load i32* %y, align 4, !dbg !180
  %46 = sub nsw i32 %44, %45, !dbg !180
  %47 = load i32* %h1, align 4, !dbg !180
  %int_cast_to_i643 = zext i32 %47 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i643), !dbg !180
  %48 = sdiv i32 %46, %47, !dbg !180
  store i32 %48, i32* %yd, align 4, !dbg !180
  store i32 -1, i32* %zd, align 4, !dbg !181
  %49 = load i32* %xd, align 4, !dbg !182
  %50 = load i32* %xd, align 4, !dbg !182
  %51 = mul nsw i32 %49, %50, !dbg !182
  %52 = load i32* %yd, align 4, !dbg !182
  %53 = load i32* %yd, align 4, !dbg !182
  %54 = mul nsw i32 %52, %53, !dbg !182
  %55 = add nsw i32 %51, %54, !dbg !182
  %56 = load i32* %zd, align 4, !dbg !182
  %57 = load i32* %zd, align 4, !dbg !182
  %58 = mul nsw i32 %56, %57, !dbg !182
  %59 = add nsw i32 %55, %58, !dbg !182
  store i32 %59, i32* %l, align 4, !dbg !182
  %60 = load i32* %l, align 4, !dbg !183
  %61 = load i32* %xd, align 4, !dbg !183
  %int_cast_to_i644 = zext i32 %60 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i644), !dbg !183
  %62 = sdiv i32 %61, %60, !dbg !183
  store i32 %62, i32* %xd, align 4, !dbg !183
  %63 = load i32* %l, align 4, !dbg !184
  %64 = load i32* %yd, align 4, !dbg !184
  %int_cast_to_i645 = zext i32 %63 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i645), !dbg !184
  %65 = sdiv i32 %64, %63, !dbg !184
  store i32 %65, i32* %yd, align 4, !dbg !184
  %66 = load i32* %l, align 4, !dbg !185
  %67 = load i32* %zd, align 4, !dbg !185
  %int_cast_to_i646 = zext i32 %66 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i646), !dbg !185
  %68 = sdiv i32 %67, %66, !dbg !185
  store i32 %68, i32* %zd, align 4, !dbg !185
  %69 = load i32* @k, align 4, !dbg !186
  %70 = load i32* %ye, align 4, !dbg !186
  %71 = sub nsw i32 %69, %70, !dbg !186
  %72 = load i32* %yd, align 4, !dbg !186
  %73 = mul nsw i32 %71, %72, !dbg !186
  %74 = icmp sle i32 %73, 0, !dbg !186
  br i1 %74, label %75, label %76, !dbg !186

; <label>:75                                      ; preds = %38
  store i32 -1, i32* %t, align 4, !dbg !188
  br label %82, !dbg !190

; <label>:76                                      ; preds = %38
  %77 = load i32* @k, align 4, !dbg !191
  %78 = load i32* %ye, align 4, !dbg !191
  %79 = sub nsw i32 %77, %78, !dbg !191
  %80 = load i32* %yd, align 4, !dbg !191
  %int_cast_to_i647 = zext i32 %80 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i647), !dbg !191
  %81 = sdiv i32 %79, %80, !dbg !191
  store i32 %81, i32* %t, align 4, !dbg !191
  br label %82

; <label>:82                                      ; preds = %76, %75
  %83 = load i32* %y, align 4, !dbg !193
  %84 = load i32* @w, align 4, !dbg !193
  %85 = mul nsw i32 %83, %84, !dbg !193
  %86 = load i32* %x, align 4, !dbg !193
  %87 = add nsw i32 %85, %86, !dbg !193
  store i32 %87, i32* %index, align 4, !dbg !193
  %88 = load i32* %t, align 4, !dbg !194
  %89 = icmp sge i32 %88, 0, !dbg !194
  br i1 %89, label %90, label %156, !dbg !194

; <label>:90                                      ; preds = %82
  %91 = load i32* %xe, align 4, !dbg !196
  %92 = load i32* %t, align 4, !dbg !196
  %93 = load i32* %xd, align 4, !dbg !196
  %94 = mul nsw i32 %92, %93, !dbg !196
  %95 = add nsw i32 %91, %94, !dbg !196
  store i32 %95, i32* %ix, align 4, !dbg !196
  %96 = load i32* %ye, align 4, !dbg !198
  %97 = load i32* %t, align 4, !dbg !198
  %98 = load i32* %yd, align 4, !dbg !198
  %99 = mul nsw i32 %97, %98, !dbg !198
  %100 = add nsw i32 %96, %99, !dbg !198
  store i32 %100, i32* %iy, align 4, !dbg !198
  %101 = load i32* %ze, align 4, !dbg !199
  %102 = load i32* %t, align 4, !dbg !199
  %103 = load i32* %zd, align 4, !dbg !199
  %104 = mul nsw i32 %102, %103, !dbg !199
  %105 = add nsw i32 %101, %104, !dbg !199
  store i32 %105, i32* %iz, align 4, !dbg !199
  store i32 0, i32* %lx, align 4, !dbg !200
  %106 = load i32* %lly, align 4, !dbg !201
  store i32 %106, i32* %ly, align 4, !dbg !201
  store i32 0, i32* %lz, align 4, !dbg !202
  %107 = load i32* %lx, align 4, !dbg !203
  %108 = load i32* %ix, align 4, !dbg !203
  %109 = sub nsw i32 %107, %108, !dbg !203
  store i32 %109, i32* %lx, align 4, !dbg !203
  %110 = load i32* %ly, align 4, !dbg !204
  %111 = load i32* %iy, align 4, !dbg !204
  %112 = sub nsw i32 %110, %111, !dbg !204
  store i32 %112, i32* %ly, align 4, !dbg !204
  %113 = load i32* %lz, align 4, !dbg !205
  %114 = load i32* %iz, align 4, !dbg !205
  %115 = sub nsw i32 %113, %114, !dbg !205
  store i32 %115, i32* %lz, align 4, !dbg !205
  %116 = load i32* %lx, align 4, !dbg !206
  %117 = load i32* %lx, align 4, !dbg !206
  %118 = mul nsw i32 %116, %117, !dbg !206
  %119 = load i32* %ly, align 4, !dbg !206
  %120 = load i32* %ly, align 4, !dbg !206
  %121 = mul nsw i32 %119, %120, !dbg !206
  %122 = add nsw i32 %118, %121, !dbg !206
  %123 = load i32* %lz, align 4, !dbg !206
  %124 = load i32* %lz, align 4, !dbg !206
  %125 = mul nsw i32 %123, %124, !dbg !206
  %126 = add nsw i32 %122, %125, !dbg !206
  %127 = sitofp i32 %126 to double, !dbg !206
  %128 = call double @sqrt(double %127) #3, !dbg !206
  %129 = fptosi double %128 to i32, !dbg !206
  store i32 %129, i32* @sng, align 4, !dbg !206
  %130 = load i32* @sng, align 4, !dbg !207
  %131 = icmp ne i32 %130, 0, !dbg !207
  %132 = zext i1 %131 to i32, !dbg !207
  %133 = sext i32 %132 to i64, !dbg !207
  call void @klee_assume(i64 %133), !dbg !207
  %134 = load i32* @sng, align 4, !dbg !208
  %int_cast_to_i648 = zext i32 %134 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i648), !dbg !208
  %135 = sdiv i32 1, %134, !dbg !208
  store i32 %135, i32* @sng, align 4, !dbg !208
  %136 = load i32* %lx, align 4, !dbg !209
  %137 = load i32* %nx, align 4, !dbg !209
  %138 = mul nsw i32 %136, %137, !dbg !209
  %139 = load i32* %ly, align 4, !dbg !209
  %140 = load i32* %ny, align 4, !dbg !209
  %141 = mul nsw i32 %139, %140, !dbg !209
  %142 = add nsw i32 %138, %141, !dbg !209
  %143 = load i32* %lz, align 4, !dbg !209
  %144 = load i32* %nz, align 4, !dbg !209
  %145 = mul nsw i32 %143, %144, !dbg !209
  %146 = add nsw i32 %142, %145, !dbg !209
  %147 = load i32* @sng, align 4, !dbg !209
  %148 = mul nsw i32 %146, %147, !dbg !209
  store i32 %148, i32* @lcoff, align 4, !dbg !209
  %149 = load i32* %ix, align 4, !dbg !210
  %150 = load i32* %iy, align 4, !dbg !210
  %151 = load i32* %iz, align 4, !dbg !210
  %152 = call i32 @texture1(i32 %149, i32 %150, i32 %151), !dbg !210
  %153 = load i32* %index, align 4, !dbg !210
  %154 = sext i32 %153 to i64, !dbg !210
  %155 = getelementptr inbounds i32* %12, i64 %154, !dbg !210
  store i32 %152, i32* %155, align 4, !dbg !210
  br label %161, !dbg !211

; <label>:156                                     ; preds = %82
  %157 = load i32* %bl, align 4, !dbg !212
  %158 = load i32* %index, align 4, !dbg !212
  %159 = sext i32 %158 to i64, !dbg !212
  %160 = getelementptr inbounds i32* %12, i64 %159, !dbg !212
  store i32 %157, i32* %160, align 4, !dbg !212
  br label %161

; <label>:161                                     ; preds = %156, %90
  %162 = load i32* @numIterations, align 4, !dbg !214
  %163 = add nsw i32 %162, 1, !dbg !214
  store i32 %163, i32* @numIterations, align 4, !dbg !214
  %164 = load i32* %x, align 4, !dbg !174
  %165 = add nsw i32 %164, 1, !dbg !174
  store i32 %165, i32* %x, align 4, !dbg !174
  br label %34, !dbg !174

; <label>:166                                     ; preds = %34
  %167 = load i32* %y, align 4, !dbg !172
  %168 = add nsw i32 %167, 1, !dbg !172
  store i32 %168, i32* %y, align 4, !dbg !172
  br label %29, !dbg !172

; <label>:169                                     ; preds = %29
  %170 = load i8** %5, !dbg !215
  ret void, !dbg !215
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
  store i32 255, i32* %r, align 4, !dbg !216
  store i32 0, i32* %b, align 4, !dbg !217
  store i32 0, i32* %col, align 4, !dbg !218
  %4 = load i32* @light, align 4, !dbg !219
  %5 = icmp ne i32 %4, 0, !dbg !219
  br i1 %5, label %6, label %9, !dbg !219

; <label>:6                                       ; preds = %0
  %7 = load i32* @lcoff, align 4, !dbg !221
  %8 = mul nsw i32 255, %7, !dbg !221
  store i32 %8, i32* %r, align 4, !dbg !221
  br label %9, !dbg !223

; <label>:9                                       ; preds = %6, %0
  %10 = load i32* %r, align 4, !dbg !224
  store i32 %10, i32* %b, align 4, !dbg !224
  %11 = load i32* @texture, align 4, !dbg !225
  %12 = icmp eq i32 %11, 1, !dbg !225
  br i1 %12, label %13, label %14, !dbg !225

; <label>:13                                      ; preds = %9
  store i32 -65536, i32* %col, align 4, !dbg !227
  br label %37, !dbg !229

; <label>:14                                      ; preds = %9
  %15 = load i32* @texture, align 4, !dbg !230
  %16 = icmp eq i32 %15, 2, !dbg !230
  br i1 %16, label %17, label %37, !dbg !230

; <label>:17                                      ; preds = %14
  %18 = load i32* %1, align 4, !dbg !232
  %19 = sitofp i32 %18 to double, !dbg !232
  %20 = call double @round(double %19) #1, !dbg !232
  %21 = fptosi double %20 to i32, !dbg !232
  %22 = load i32* %3, align 4, !dbg !232
  %23 = sitofp i32 %22 to double, !dbg !232
  %24 = call double @round(double %23) #1, !dbg !232
  %25 = fptosi double %24 to i32, !dbg !232
  %26 = add nsw i32 %21, %25, !dbg !232
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !232
  %27 = srem i32 %26, 2, !dbg !232
  store i32 %27, i32* %v, align 4, !dbg !232
  %28 = load i32* %v, align 4, !dbg !234
  %29 = icmp eq i32 %28, 0, !dbg !234
  br i1 %29, label %30, label %33, !dbg !234

; <label>:30                                      ; preds = %17
  %31 = load i32* %b, align 4, !dbg !236
  %32 = or i32 -16777216, %31, !dbg !236
  store i32 %32, i32* %col, align 4, !dbg !236
  br label %37, !dbg !238

; <label>:33                                      ; preds = %17
  %34 = load i32* %r, align 4, !dbg !239
  %int_cast_to_i641 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !239
  %35 = shl i32 %34, 16, !dbg !239
  %36 = or i32 -16777216, %35, !dbg !239
  store i32 %36, i32* %col, align 4, !dbg !239
  br label %37

; <label>:37                                      ; preds = %14, %33, %30, %13
  %38 = load i32* %col, align 4, !dbg !241
  ret i32 %38, !dbg !241
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind readnone
declare double @round(double) #5

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #6 {
  %1 = icmp eq i64 %z, 0, !dbg !242
  br i1 %1, label %2, label %3, !dbg !242

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str14, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str216, i64 0, i64 0)) #8, !dbg !244
  unreachable, !dbg !244

; <label>:3                                       ; preds = %0
  ret void, !dbg !245
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #6 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !246
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #9, !dbg !246
  %2 = load i32* %x, align 4, !dbg !247, !tbaa !248
  ret i32 %2, !dbg !247
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #6 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !252
  br i1 %1, label %3, label %2, !dbg !252

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str317, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1418, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !254
  unreachable, !dbg !254

; <label>:3                                       ; preds = %0
  ret void, !dbg !256
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #6 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !257
  br i1 %1, label %3, label %2, !dbg !257

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str619, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #8, !dbg !259
  unreachable, !dbg !259

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !260
  %5 = icmp eq i32 %4, %end, !dbg !260
  br i1 %5, label %21, label %6, !dbg !260

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !262
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #9, !dbg !262
  %8 = icmp eq i32 %start, 0, !dbg !264
  %9 = load i32* %x, align 4, !dbg !266, !tbaa !248
  br i1 %8, label %10, label %13, !dbg !264

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !266
  %12 = zext i1 %11 to i64, !dbg !266
  call void @klee_assume(i64 %12) #9, !dbg !266
  br label %19, !dbg !268

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !269
  %15 = zext i1 %14 to i64, !dbg !269
  call void @klee_assume(i64 %15) #9, !dbg !269
  %16 = load i32* %x, align 4, !dbg !271, !tbaa !248
  %17 = icmp slt i32 %16, %end, !dbg !271
  %18 = zext i1 %17 to i64, !dbg !271
  call void @klee_assume(i64 %18) #9, !dbg !271
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !272, !tbaa !248
  br label %21, !dbg !272

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !273
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
  %1 = icmp eq i64 %len, 0, !dbg !274
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !274

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !275
  %wide.load = load <16 x i8>* %3, align 1, !dbg !275
  %next.gep.sum279 = or i64 %index, 16, !dbg !275
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !275
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !275
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !275
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !275
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !275
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !275
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !275
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !275
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !276

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
  %10 = add i64 %.01, -1, !dbg !274
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !275
  %12 = load i8* %src.03, align 1, !dbg !275, !tbaa !279
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !275
  store i8 %12, i8* %dest.02, align 1, !dbg !275, !tbaa !279
  %14 = icmp eq i64 %10, 0, !dbg !274
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !274, !llvm.loop !280

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !281
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #6 {
  %1 = icmp eq i8* %src, %dst, !dbg !282
  br i1 %1, label %.loopexit, label %2, !dbg !282

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !284
  br i1 %3, label %.preheader, label %18, !dbg !284

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !286
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !286

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !286
  %wide.load = load <16 x i8>* %6, align 1, !dbg !286
  %next.gep.sum586 = or i64 %index, 16, !dbg !286
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !286
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !286
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !286
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !286
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !286
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !286
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !286
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !286
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !288

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
  %13 = add i64 %.02, -1, !dbg !286
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !286
  %15 = load i8* %b.04, align 1, !dbg !286, !tbaa !279
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !286
  store i8 %15, i8* %a.03, align 1, !dbg !286, !tbaa !279
  %17 = icmp eq i64 %13, 0, !dbg !286
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !286, !llvm.loop !289

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !290
  %20 = icmp eq i64 %count, 0, !dbg !292
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !292

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !293
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !290
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !292
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !292
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !292
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !292
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !292
  %.sum505 = add i64 %.sum440, -31, !dbg !292
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !292
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !292
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !292
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !292
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !292
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !292
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !292
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !292
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !292
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !292
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !292
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !292
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !294

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
  %32 = add i64 %.16, -1, !dbg !292
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !292
  %34 = load i8* %b.18, align 1, !dbg !292, !tbaa !279
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !292
  store i8 %34, i8* %a.17, align 1, !dbg !292, !tbaa !279
  %36 = icmp eq i64 %32, 0, !dbg !292
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !292, !llvm.loop !295

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !296
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #6 {
  %1 = icmp eq i64 %len, 0, !dbg !297
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !297

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !298
  %wide.load = load <16 x i8>* %3, align 1, !dbg !298
  %next.gep.sum280 = or i64 %index, 16, !dbg !298
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !298
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !298
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !298
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !298
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !298
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !298
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !298
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !298
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !299

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
  %10 = add i64 %.01, -1, !dbg !297
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !298
  %12 = load i8* %src.03, align 1, !dbg !298, !tbaa !279
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !298
  store i8 %12, i8* %dest.02, align 1, !dbg !298, !tbaa !279
  %14 = icmp eq i64 %10, 0, !dbg !297
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !297, !llvm.loop !300

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !297

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !301
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #6 {
  %1 = icmp eq i64 %count, 0, !dbg !302
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !302

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !303
  br label %3, !dbg !302

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !302
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !303
  store volatile i8 %2, i8* %a.02, align 1, !dbg !303, !tbaa !279
  %6 = icmp eq i64 %4, 0, !dbg !302
  br i1 %6, label %._crit_edge, label %3, !dbg !302

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !304
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
!1 = metadata !{metadata !"raytracer-symbolic2.c", metadata !"/home/himeshi/Projects/workspace/Enerj/raytracer"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init", metadata !"init", metadata !"", i32 40, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32)* @init, null, null, metadata !2, i32 40} ; [
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"texture1", metadata !"texture1", metadata !"", i32 126, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @texture1, null, null, metadata !2, i32
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
!161 = metadata !{i32 59, i32 0, metadata !9, null}
!162 = metadata !{i32 60, i32 0, metadata !9, null}
!163 = metadata !{i32 61, i32 0, metadata !9, null}
!164 = metadata !{i32 63, i32 0, metadata !9, null}
!165 = metadata !{i32 67, i32 0, metadata !9, null}
!166 = metadata !{i32 68, i32 0, metadata !9, null}
!167 = metadata !{i32 70, i32 0, metadata !9, null}
!168 = metadata !{i32 71, i32 0, metadata !9, null}
!169 = metadata !{i32 73, i32 0, metadata !9, null}
!170 = metadata !{i32 74, i32 0, metadata !9, null}
!171 = metadata !{i32 77, i32 0, metadata !9, null}
!172 = metadata !{i32 79, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !9, i32 79, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!174 = metadata !{i32 80, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 80, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!176 = metadata !{i32 786443, metadata !1, metadata !173, i32 79, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!177 = metadata !{i32 81, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !175, i32 80, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!179 = metadata !{i32 82, i32 0, metadata !178, null}
!180 = metadata !{i32 83, i32 0, metadata !178, null}
!181 = metadata !{i32 84, i32 0, metadata !178, null}
!182 = metadata !{i32 85, i32 0, metadata !178, null}
!183 = metadata !{i32 86, i32 0, metadata !178, null}
!184 = metadata !{i32 87, i32 0, metadata !178, null}
!185 = metadata !{i32 88, i32 0, metadata !178, null}
!186 = metadata !{i32 90, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !178, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!188 = metadata !{i32 91, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !187, i32 90, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!190 = metadata !{i32 92, i32 0, metadata !189, null}
!191 = metadata !{i32 93, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !187, i32 92, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!193 = metadata !{i32 96, i32 0, metadata !178, null}
!194 = metadata !{i32 97, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !178, i32 97, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!196 = metadata !{i32 98, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !195, i32 97, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!198 = metadata !{i32 99, i32 0, metadata !197, null}
!199 = metadata !{i32 100, i32 0, metadata !197, null}
!200 = metadata !{i32 101, i32 0, metadata !197, null}
!201 = metadata !{i32 102, i32 0, metadata !197, null}
!202 = metadata !{i32 103, i32 0, metadata !197, null}
!203 = metadata !{i32 104, i32 0, metadata !197, null}
!204 = metadata !{i32 105, i32 0, metadata !197, null}
!205 = metadata !{i32 106, i32 0, metadata !197, null}
!206 = metadata !{i32 107, i32 0, metadata !197, null}
!207 = metadata !{i32 108, i32 0, metadata !197, null}
!208 = metadata !{i32 109, i32 0, metadata !197, null}
!209 = metadata !{i32 110, i32 0, metadata !197, null}
!210 = metadata !{i32 111, i32 0, metadata !197, null}
!211 = metadata !{i32 112, i32 0, metadata !197, null}
!212 = metadata !{i32 113, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !195, i32 112, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!214 = metadata !{i32 115, i32 0, metadata !178, null}
!215 = metadata !{i32 124, i32 0, metadata !9, null}
!216 = metadata !{i32 130, i32 0, metadata !12, null}
!217 = metadata !{i32 131, i32 0, metadata !12, null}
!218 = metadata !{i32 132, i32 0, metadata !12, null}
!219 = metadata !{i32 133, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !12, i32 133, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!221 = metadata !{i32 134, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !220, i32 133, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!223 = metadata !{i32 135, i32 0, metadata !222, null}
!224 = metadata !{i32 136, i32 0, metadata !12, null}
!225 = metadata !{i32 138, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !12, i32 138, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!227 = metadata !{i32 139, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !226, i32 138, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!229 = metadata !{i32 140, i32 0, metadata !228, null}
!230 = metadata !{i32 140, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !226, i32 140, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!232 = metadata !{i32 141, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !231, i32 140, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!234 = metadata !{i32 142, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !233, i32 142, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!236 = metadata !{i32 143, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !235, i32 142, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!238 = metadata !{i32 144, i32 0, metadata !237, null}
!239 = metadata !{i32 145, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !235, i32 144, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/Enerj/raytracer/raytracer-symbolic2.c]
!241 = metadata !{i32 149, i32 0, metadata !12, null}
!242 = metadata !{i32 13, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !28, metadata !27, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!244 = metadata !{i32 14, i32 0, metadata !243, null}
!245 = metadata !{i32 15, i32 0, metadata !27, null}
!246 = metadata !{i32 15, i32 0, metadata !38, null}
!247 = metadata !{i32 16, i32 0, metadata !38, null}
!248 = metadata !{metadata !249, metadata !249, i64 0}
!249 = metadata !{metadata !"int", metadata !250, i64 0}
!250 = metadata !{metadata !"omnipotent char", metadata !251, i64 0}
!251 = metadata !{metadata !"Simple C/C++ TBAA"}
!252 = metadata !{i32 21, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !53, metadata !52, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!254 = metadata !{i32 27, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !53, metadata !253, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!256 = metadata !{i32 29, i32 0, metadata !52, null}
!257 = metadata !{i32 16, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !65, metadata !64, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!259 = metadata !{i32 17, i32 0, metadata !258, null}
!260 = metadata !{i32 19, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !65, metadata !64, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!262 = metadata !{i32 22, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !65, metadata !261, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!264 = metadata !{i32 25, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !65, metadata !263, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!266 = metadata !{i32 26, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !65, metadata !265, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!268 = metadata !{i32 27, i32 0, metadata !267, null}
!269 = metadata !{i32 28, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !65, metadata !265, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!271 = metadata !{i32 29, i32 0, metadata !270, null}
!272 = metadata !{i32 32, i32 0, metadata !263, null}
!273 = metadata !{i32 34, i32 0, metadata !64, null}
!274 = metadata !{i32 16, i32 0, metadata !77, null}
!275 = metadata !{i32 17, i32 0, metadata !77, null}
!276 = metadata !{metadata !276, metadata !277, metadata !278}
!277 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!278 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!279 = metadata !{metadata !250, metadata !250, i64 0}
!280 = metadata !{metadata !280, metadata !277, metadata !278}
!281 = metadata !{i32 18, i32 0, metadata !77, null}
!282 = metadata !{i32 16, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !98, metadata !97, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!284 = metadata !{i32 19, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !98, metadata !97, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!286 = metadata !{i32 20, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !98, metadata !285, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!288 = metadata !{metadata !288, metadata !277, metadata !278}
!289 = metadata !{metadata !289, metadata !277, metadata !278}
!290 = metadata !{i32 22, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !98, metadata !285, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!292 = metadata !{i32 24, i32 0, metadata !291, null}
!293 = metadata !{i32 23, i32 0, metadata !291, null}
!294 = metadata !{metadata !294, metadata !277, metadata !278}
!295 = metadata !{metadata !295, metadata !277, metadata !278}
!296 = metadata !{i32 28, i32 0, metadata !97, null}
!297 = metadata !{i32 15, i32 0, metadata !112, null}
!298 = metadata !{i32 16, i32 0, metadata !112, null}
!299 = metadata !{metadata !299, metadata !277, metadata !278}
!300 = metadata !{metadata !300, metadata !277, metadata !278}
!301 = metadata !{i32 17, i32 0, metadata !112, null}
!302 = metadata !{i32 13, i32 0, metadata !127, null}
!303 = metadata !{i32 14, i32 0, metadata !127, null}
!304 = metadata !{i32 15, i32 0, metadata !127, null}
