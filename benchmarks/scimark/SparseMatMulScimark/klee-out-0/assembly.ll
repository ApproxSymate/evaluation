; ModuleID = 'sparsematmul.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"__arr32__x\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"__arr32__val\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"err_x\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"err_val\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"y[0]\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"y[1]\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"y[2]\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"y[3]\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"y[4]\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"y[5]\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"y[6]\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"y[7]\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"y[8]\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"y[9]\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"anz\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"rowr\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"rowR\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"rowRp1\00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str22 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str123 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str224 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str325 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1426 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str627 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str1728 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %N = alloca i32, align 4
  %nz = alloca i32, align 4
  %2 = alloca i8*
  %nr = alloca i32, align 4
  %anz = alloca i32, align 4
  %r = alloca i32, align 4
  %cycles = alloca i32, align 4
  %rowr = alloca i32, align 4
  %step = alloca i32, align 4
  %i = alloca i32, align 4
  %3 = alloca i32
  store i32 0, i32* %1
  store i32 10, i32* %N, align 4, !dbg !132
  store i32 50, i32* %nz, align 4, !dbg !133
  %4 = load i32* %N, align 4, !dbg !134
  %5 = zext i32 %4 to i64, !dbg !134
  store i8* null, i8** %2, !dbg !134
  %6 = alloca i32, i64 %5, align 16, !dbg !134
  %7 = load i32* %N, align 4, !dbg !134
  %8 = zext i32 %7 to i64, !dbg !134
  %9 = alloca i32, i64 %8, align 16, !dbg !134
  %10 = load i32* %nz, align 4, !dbg !135
  %11 = load i32* %N, align 4, !dbg !135
  %int_cast_to_i64 = zext i32 %11 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !135
  %12 = sdiv i32 %10, %11, !dbg !135
  store i32 %12, i32* %nr, align 4, !dbg !135
  %13 = load i32* %nr, align 4, !dbg !136
  %14 = load i32* %N, align 4, !dbg !136
  %15 = mul nsw i32 %13, %14, !dbg !136
  store i32 %15, i32* %anz, align 4, !dbg !136
  %16 = load i32* %anz, align 4, !dbg !137
  %17 = zext i32 %16 to i64, !dbg !137
  %18 = alloca i32, i64 %17, align 16, !dbg !137
  %19 = load i32* %nz, align 4, !dbg !138
  %20 = zext i32 %19 to i64, !dbg !138
  %21 = alloca i32, i64 %20, align 16, !dbg !138
  %22 = load i32* %N, align 4, !dbg !139
  %23 = add nsw i32 %22, 1, !dbg !139
  %24 = zext i32 %23 to i64, !dbg !139
  %25 = alloca i32, i64 %24, align 16, !dbg !139
  store i32 0, i32* %r, align 4, !dbg !140
  store i32 1, i32* %cycles, align 4, !dbg !141
  %26 = getelementptr inbounds i32* %25, i64 0, !dbg !142
  store i32 0, i32* %26, align 4, !dbg !142
  %27 = bitcast i32* %6 to i8*, !dbg !143
  %28 = mul nuw i64 4, %5, !dbg !143
  call void @klee_make_symbolic(i8* %27, i64 %28, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)), !dbg !143
  %29 = bitcast i32* %18 to i8*, !dbg !144
  %30 = mul nuw i64 4, %17, !dbg !144
  call void @klee_make_symbolic(i8* %29, i64 %30, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0)), !dbg !144
  %31 = bitcast i32* %6 to i8*, !dbg !145
  call void @klee_track_error(i8* %31, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !145
  %32 = bitcast i32* %18 to i8*, !dbg !146
  call void @klee_track_error(i8* %32, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)), !dbg !146
  store i32 0, i32* %r, align 4, !dbg !147
  br label %33, !dbg !147

; <label>:33                                      ; preds = %71, %0
  %34 = load i32* %r, align 4, !dbg !147
  %35 = load i32* %N, align 4, !dbg !147
  %36 = icmp slt i32 %34, %35, !dbg !147
  br i1 %36, label %37, label %74, !dbg !147

; <label>:37                                      ; preds = %33
  %38 = load i32* %r, align 4, !dbg !149
  %39 = sext i32 %38 to i64, !dbg !149
  %40 = getelementptr inbounds i32* %25, i64 %39, !dbg !149
  %41 = load i32* %40, align 4, !dbg !149
  store i32 %41, i32* %rowr, align 4, !dbg !149
  %42 = load i32* %r, align 4, !dbg !151
  %43 = load i32* %nr, align 4, !dbg !151
  %int_cast_to_i641 = zext i32 %43 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !151
  %44 = sdiv i32 %42, %43, !dbg !151
  store i32 %44, i32* %step, align 4, !dbg !151
  store i32 0, i32* %i, align 4, !dbg !152
  %45 = load i32* %rowr, align 4, !dbg !153
  %46 = load i32* %nr, align 4, !dbg !153
  %47 = add nsw i32 %45, %46, !dbg !153
  %48 = load i32* %r, align 4, !dbg !153
  %49 = add nsw i32 %48, 1, !dbg !153
  %50 = sext i32 %49 to i64, !dbg !153
  %51 = getelementptr inbounds i32* %25, i64 %50, !dbg !153
  store i32 %47, i32* %51, align 4, !dbg !153
  %52 = load i32* %step, align 4, !dbg !154
  %53 = icmp slt i32 %52, 1, !dbg !154
  br i1 %53, label %54, label %55, !dbg !154

; <label>:54                                      ; preds = %37
  store i32 1, i32* %step, align 4, !dbg !156
  br label %55, !dbg !156

; <label>:55                                      ; preds = %54, %37
  store i32 0, i32* %i, align 4, !dbg !157
  br label %56, !dbg !157

; <label>:56                                      ; preds = %60, %55
  %57 = load i32* %i, align 4, !dbg !157
  %58 = load i32* %nr, align 4, !dbg !157
  %59 = icmp slt i32 %57, %58, !dbg !157
  br i1 %59, label %60, label %71, !dbg !157

; <label>:60                                      ; preds = %56
  %61 = load i32* %i, align 4, !dbg !159
  %62 = load i32* %step, align 4, !dbg !159
  %63 = mul nsw i32 %61, %62, !dbg !159
  %64 = load i32* %rowr, align 4, !dbg !159
  %65 = load i32* %i, align 4, !dbg !159
  %66 = add nsw i32 %64, %65, !dbg !159
  %67 = sext i32 %66 to i64, !dbg !159
  %68 = getelementptr inbounds i32* %21, i64 %67, !dbg !159
  store i32 %63, i32* %68, align 4, !dbg !159
  %69 = load i32* %i, align 4, !dbg !157
  %70 = add nsw i32 %69, 1, !dbg !157
  store i32 %70, i32* %i, align 4, !dbg !157
  br label %56, !dbg !157

; <label>:71                                      ; preds = %56
  %72 = load i32* %r, align 4, !dbg !147
  %73 = add nsw i32 %72, 1, !dbg !147
  store i32 %73, i32* %r, align 4, !dbg !147
  br label %33, !dbg !147

; <label>:74                                      ; preds = %33
  %75 = load i32* %N, align 4, !dbg !160
  %76 = load i32* %cycles, align 4, !dbg !160
  call void @SparseCompRow_matmult(i32 %75, i32* %9, i32* %18, i32* %25, i32* %21, i32* %6, i32 %76), !dbg !160
  %77 = getelementptr inbounds i32* %9, i64 0, !dbg !161
  %78 = load i32* %77, align 4, !dbg !161
  %79 = sext i32 %78 to i64, !dbg !161
  call void @klee_bound_error(i64 %79, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !161
  %80 = getelementptr inbounds i32* %9, i64 1, !dbg !162
  %81 = load i32* %80, align 4, !dbg !162
  %82 = sext i32 %81 to i64, !dbg !162
  call void @klee_bound_error(i64 %82, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !162
  %83 = getelementptr inbounds i32* %9, i64 2, !dbg !163
  %84 = load i32* %83, align 4, !dbg !163
  %85 = sext i32 %84 to i64, !dbg !163
  call void @klee_bound_error(i64 %85, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), double 1.000000e+00), !dbg !163
  %86 = getelementptr inbounds i32* %9, i64 3, !dbg !164
  %87 = load i32* %86, align 4, !dbg !164
  %88 = sext i32 %87 to i64, !dbg !164
  call void @klee_bound_error(i64 %88, i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), double 1.000000e+00), !dbg !164
  %89 = getelementptr inbounds i32* %9, i64 4, !dbg !165
  %90 = load i32* %89, align 4, !dbg !165
  %91 = sext i32 %90 to i64, !dbg !165
  call void @klee_bound_error(i64 %91, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), double 1.000000e+00), !dbg !165
  %92 = getelementptr inbounds i32* %9, i64 5, !dbg !166
  %93 = load i32* %92, align 4, !dbg !166
  %94 = sext i32 %93 to i64, !dbg !166
  call void @klee_bound_error(i64 %94, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), double 1.000000e+00), !dbg !166
  %95 = getelementptr inbounds i32* %9, i64 6, !dbg !167
  %96 = load i32* %95, align 4, !dbg !167
  %97 = sext i32 %96 to i64, !dbg !167
  call void @klee_bound_error(i64 %97, i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), double 1.000000e+00), !dbg !167
  %98 = getelementptr inbounds i32* %9, i64 7, !dbg !168
  %99 = load i32* %98, align 4, !dbg !168
  %100 = sext i32 %99 to i64, !dbg !168
  call void @klee_bound_error(i64 %100, i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), double 1.000000e+00), !dbg !168
  %101 = getelementptr inbounds i32* %9, i64 8, !dbg !169
  %102 = load i32* %101, align 4, !dbg !169
  %103 = sext i32 %102 to i64, !dbg !169
  call void @klee_bound_error(i64 %103, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), double 1.000000e+00), !dbg !169
  %104 = getelementptr inbounds i32* %9, i64 9, !dbg !170
  %105 = load i32* %104, align 4, !dbg !170
  %106 = sext i32 %105 to i64, !dbg !170
  call void @klee_bound_error(i64 %106, i8* getelementptr inbounds ([5 x i8]* @.str13, i32 0, i32 0), double 1.000000e+00), !dbg !170
  %107 = load i32* %nr, align 4, !dbg !171
  %108 = sext i32 %107 to i64, !dbg !171
  call void @klee_bound_error(i64 %108, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), double 1.000000e+00), !dbg !171
  %109 = load i32* %anz, align 4, !dbg !172
  %110 = sext i32 %109 to i64, !dbg !172
  call void @klee_bound_error(i64 %110, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), double 1.000000e+00), !dbg !172
  %111 = load i32* %rowr, align 4, !dbg !173
  %112 = sext i32 %111 to i64, !dbg !173
  call void @klee_bound_error(i64 %112, i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), double 1.000000e+00), !dbg !173
  %113 = load i32* %step, align 4, !dbg !174
  %114 = sext i32 %113 to i64, !dbg !174
  call void @klee_bound_error(i64 %114, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), double 1.000000e+00), !dbg !174
  store i32 0, i32* %1, !dbg !175
  store i32 1, i32* %3
  %115 = load i8** %2, !dbg !175
  %116 = load i32* %1, !dbg !176
  ret i32 %116, !dbg !176
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_track_error(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @SparseCompRow_matmult(i32 %M, i32* %y, i32* %val, i32* %row, i32* %col, i32* %x, i32 %NUM_ITERATIONS) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %reps = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %rowR = alloca i32, align 4
  %rowRp1 = alloca i32, align 4
  store i32 %M, i32* %1, align 4
  store i32* %y, i32** %2, align 8
  store i32* %val, i32** %3, align 8
  store i32* %row, i32** %4, align 8
  store i32* %col, i32** %5, align 8
  store i32* %x, i32** %6, align 8
  store i32 %NUM_ITERATIONS, i32* %7, align 4
  store i32 0, i32* %reps, align 4, !dbg !177
  br label %8, !dbg !177

; <label>:8                                       ; preds = %62, %0
  %9 = load i32* %reps, align 4, !dbg !177
  %10 = load i32* %7, align 4, !dbg !177
  %11 = icmp slt i32 %9, %10, !dbg !177
  br i1 %11, label %12, label %65, !dbg !177

; <label>:12                                      ; preds = %8
  store i32 0, i32* %r, align 4, !dbg !179
  br label %13, !dbg !179

; <label>:13                                      ; preds = %54, %12
  %14 = load i32* %r, align 4, !dbg !179
  %15 = load i32* %1, align 4, !dbg !179
  %16 = icmp slt i32 %14, %15, !dbg !179
  br i1 %16, label %17, label %62, !dbg !179

; <label>:17                                      ; preds = %13
  store i32 0, i32* %sum, align 4, !dbg !182
  %18 = load i32* %r, align 4, !dbg !184
  %19 = sext i32 %18 to i64, !dbg !184
  %20 = load i32** %4, align 8, !dbg !184
  %21 = getelementptr inbounds i32* %20, i64 %19, !dbg !184
  %22 = load i32* %21, align 4, !dbg !184
  store i32 %22, i32* %rowR, align 4, !dbg !184
  %23 = load i32* %r, align 4, !dbg !185
  %24 = add nsw i32 %23, 1, !dbg !185
  %25 = sext i32 %24 to i64, !dbg !185
  %26 = load i32** %4, align 8, !dbg !185
  %27 = getelementptr inbounds i32* %26, i64 %25, !dbg !185
  %28 = load i32* %27, align 4, !dbg !185
  store i32 %28, i32* %rowRp1, align 4, !dbg !185
  %29 = load i32* %rowR, align 4, !dbg !186
  store i32 %29, i32* %i, align 4, !dbg !186
  br label %30, !dbg !186

; <label>:30                                      ; preds = %34, %17
  %31 = load i32* %i, align 4, !dbg !186
  %32 = load i32* %rowRp1, align 4, !dbg !186
  %33 = icmp slt i32 %31, %32, !dbg !186
  br i1 %33, label %34, label %54, !dbg !186

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4, !dbg !188
  %36 = sext i32 %35 to i64, !dbg !188
  %37 = load i32** %5, align 8, !dbg !188
  %38 = getelementptr inbounds i32* %37, i64 %36, !dbg !188
  %39 = load i32* %38, align 4, !dbg !188
  %40 = sext i32 %39 to i64, !dbg !188
  %41 = load i32** %6, align 8, !dbg !188
  %42 = getelementptr inbounds i32* %41, i64 %40, !dbg !188
  %43 = load i32* %42, align 4, !dbg !188
  %44 = load i32* %i, align 4, !dbg !188
  %45 = sext i32 %44 to i64, !dbg !188
  %46 = load i32** %3, align 8, !dbg !188
  %47 = getelementptr inbounds i32* %46, i64 %45, !dbg !188
  %48 = load i32* %47, align 4, !dbg !188
  %49 = mul nsw i32 %43, %48, !dbg !188
  %50 = load i32* %sum, align 4, !dbg !188
  %51 = add nsw i32 %50, %49, !dbg !188
  store i32 %51, i32* %sum, align 4, !dbg !188
  %52 = load i32* %i, align 4, !dbg !186
  %53 = add nsw i32 %52, 1, !dbg !186
  store i32 %53, i32* %i, align 4, !dbg !186
  br label %30, !dbg !186

; <label>:54                                      ; preds = %30
  %55 = load i32* %sum, align 4, !dbg !189
  %56 = load i32* %r, align 4, !dbg !189
  %57 = sext i32 %56 to i64, !dbg !189
  %58 = load i32** %2, align 8, !dbg !189
  %59 = getelementptr inbounds i32* %58, i64 %57, !dbg !189
  store i32 %55, i32* %59, align 4, !dbg !189
  %60 = load i32* %r, align 4, !dbg !179
  %61 = add nsw i32 %60, 1, !dbg !179
  store i32 %61, i32* %r, align 4, !dbg !179
  br label %13, !dbg !179

; <label>:62                                      ; preds = %13
  %63 = load i32* %reps, align 4, !dbg !177
  %64 = add nsw i32 %63, 1, !dbg !177
  store i32 %64, i32* %reps, align 4, !dbg !177
  br label %8, !dbg !177

; <label>:65                                      ; preds = %8
  %66 = load i32* %sum, align 4, !dbg !190
  %67 = sext i32 %66 to i64, !dbg !190
  call void @klee_bound_error(i64 %67, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), double 1.000000e+00), !dbg !190
  %68 = load i32* %rowR, align 4, !dbg !191
  %69 = sext i32 %68 to i64, !dbg !191
  call void @klee_bound_error(i64 %69, i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), double 1.000000e+00), !dbg !191
  %70 = load i32* %rowRp1, align 4, !dbg !192
  %71 = sext i32 %70 to i64, !dbg !192
  call void @klee_bound_error(i64 %71, i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0), double 1.000000e+00), !dbg !192
  %72 = load i32* %1, align 4, !dbg !193
  %73 = sext i32 %72 to i64, !dbg !193
  call void @klee_bound_error(i64 %73, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0), double 1.000000e+00), !dbg !193
  ret void, !dbg !194
}

declare void @klee_bound_error(i64, i8*, double) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !195
  br i1 %1, label %2, label %3, !dbg !195

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str22, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str123, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str224, i64 0, i64 0)) #7, !dbg !197
  unreachable, !dbg !197

; <label>:3                                       ; preds = %0
  ret void, !dbg !198
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !199
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !199
  %2 = load i32* %x, align 4, !dbg !200, !tbaa !201
  ret i32 %2, !dbg !200
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !205
  br i1 %1, label %3, label %2, !dbg !205

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str325, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1426, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !207
  unreachable, !dbg !207

; <label>:3                                       ; preds = %0
  ret void, !dbg !209
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !210
  br i1 %1, label %3, label %2, !dbg !210

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str627, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1728, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !212
  unreachable, !dbg !212

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !213
  %5 = icmp eq i32 %4, %end, !dbg !213
  br i1 %5, label %21, label %6, !dbg !213

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !215
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !215
  %8 = icmp eq i32 %start, 0, !dbg !217
  %9 = load i32* %x, align 4, !dbg !219, !tbaa !201
  br i1 %8, label %10, label %13, !dbg !217

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !219
  %12 = zext i1 %11 to i64, !dbg !219
  call void @klee_assume(i64 %12) #8, !dbg !219
  br label %19, !dbg !221

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !222
  %15 = zext i1 %14 to i64, !dbg !222
  call void @klee_assume(i64 %15) #8, !dbg !222
  %16 = load i32* %x, align 4, !dbg !224, !tbaa !201
  %17 = icmp slt i32 %16, %end, !dbg !224
  %18 = zext i1 %17 to i64, !dbg !224
  call void @klee_assume(i64 %18) #8, !dbg !224
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !225, !tbaa !201
  br label %21, !dbg !225

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !226
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !227
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !227

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !228
  %wide.load = load <16 x i8>* %3, align 1, !dbg !228
  %next.gep.sum279 = or i64 %index, 16, !dbg !228
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !228
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !228
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !228
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !228
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !228
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !228
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !228
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !228
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !229

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
  %10 = add i64 %.01, -1, !dbg !227
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !228
  %12 = load i8* %src.03, align 1, !dbg !228, !tbaa !232
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !228
  store i8 %12, i8* %dest.02, align 1, !dbg !228, !tbaa !232
  %14 = icmp eq i64 %10, 0, !dbg !227
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !227, !llvm.loop !233

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !234
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !235
  br i1 %1, label %.loopexit, label %2, !dbg !235

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !237
  br i1 %3, label %.preheader, label %18, !dbg !237

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !239
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !239

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !239
  %wide.load = load <16 x i8>* %6, align 1, !dbg !239
  %next.gep.sum586 = or i64 %index, 16, !dbg !239
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !239
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !239
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !239
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !239
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !239
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !239
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !239
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !239
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !241

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
  %13 = add i64 %.02, -1, !dbg !239
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !239
  %15 = load i8* %b.04, align 1, !dbg !239, !tbaa !232
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !239
  store i8 %15, i8* %a.03, align 1, !dbg !239, !tbaa !232
  %17 = icmp eq i64 %13, 0, !dbg !239
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !239, !llvm.loop !242

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !243
  %20 = icmp eq i64 %count, 0, !dbg !245
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !245

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !246
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !243
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !245
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !245
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !245
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !245
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !245
  %.sum505 = add i64 %.sum440, -31, !dbg !245
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !245
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !245
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !245
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !245
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !245
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !245
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !245
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !245
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !245
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !245
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !245
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !245
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !247

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
  %32 = add i64 %.16, -1, !dbg !245
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !245
  %34 = load i8* %b.18, align 1, !dbg !245, !tbaa !232
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !245
  store i8 %34, i8* %a.17, align 1, !dbg !245, !tbaa !232
  %36 = icmp eq i64 %32, 0, !dbg !245
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !245, !llvm.loop !248

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !249
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !250
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !250

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !251
  %wide.load = load <16 x i8>* %3, align 1, !dbg !251
  %next.gep.sum280 = or i64 %index, 16, !dbg !251
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !251
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !251
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !251
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !251
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !251
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !251
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !251
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !251
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !252

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
  %10 = add i64 %.01, -1, !dbg !250
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !251
  %12 = load i8* %src.03, align 1, !dbg !251, !tbaa !232
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !251
  store i8 %12, i8* %dest.02, align 1, !dbg !251, !tbaa !232
  %14 = icmp eq i64 %10, 0, !dbg !250
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !250, !llvm.loop !253

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !250

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !254
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !255
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !255

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !256
  br label %3, !dbg !255

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !255
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !256
  store volatile i8 %2, i8* %a.02, align 1, !dbg !256, !tbaa !232
  %6 = icmp eq i64 %4, 0, !dbg !255
  br i1 %6, label %._crit_edge, label %3, !dbg !255

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !257
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !13, !24, !38, !50, !63, !83, !98, !113}
!llvm.module.flags = !{!129, !130}
!llvm.ident = !{!131, !131, !131, !131, !131, !131, !131, !131, !131}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himeshi
!1 = metadata !{metadata !"sparsematmul.c", metadata !"/home/himeshi/Projects/workspace/SparseMatMulScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 79, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 79} ; [ DW_TAG_subprogram ] [
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SparseCompRow_matmult", metadata !"SparseCompRow_matmult", metadata !"", i32 140, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*, i32*, i32*, i32*, 
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !8}
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!13 = metadata !{i32 786449, metadata !14, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !15, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!14 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786478, metadata !17, metadata !18, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!17 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!18 = metadata !{i32 786473, metadata !17}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !21}
!21 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786689, metadata !16, metadata !"z", metadata !18, i32 16777228, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!24 = metadata !{i32 786449, metadata !25, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !26, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!25 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786478, metadata !28, metadata !29, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !35, i32 13} ; [ 
!28 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!29 = metadata !{i32 786473, metadata !28}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !8, metadata !32}
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!34 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!35 = metadata !{metadata !36, metadata !37}
!36 = metadata !{i32 786689, metadata !27, metadata !"name", metadata !29, i32 16777229, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!37 = metadata !{i32 786688, metadata !27, metadata !"x", metadata !29, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!38 = metadata !{i32 786449, metadata !39, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !40, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!39 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786478, metadata !42, metadata !43, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!42 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!43 = metadata !{i32 786473, metadata !42}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!44 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{null, metadata !46, metadata !46}
!46 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786689, metadata !41, metadata !"bitWidth", metadata !43, i32 16777236, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!49 = metadata !{i32 786689, metadata !41, metadata !"shift", metadata !43, i32 33554452, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!50 = metadata !{i32 786449, metadata !51, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !52, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!51 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786478, metadata !54, metadata !55, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!54 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!55 = metadata !{i32 786473, metadata !54}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!56 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{metadata !8, metadata !8, metadata !8, metadata !32}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62}
!59 = metadata !{i32 786689, metadata !53, metadata !"start", metadata !55, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!60 = metadata !{i32 786689, metadata !53, metadata !"end", metadata !55, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!61 = metadata !{i32 786689, metadata !53, metadata !"name", metadata !55, i32 50331661, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!62 = metadata !{i32 786688, metadata !53, metadata !"x", metadata !55, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!63 = metadata !{i32 786449, metadata !64, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !65, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!64 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786478, metadata !67, metadata !68, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !76, i32 12} 
!67 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!68 = metadata !{i32 786473, metadata !67}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!69 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{metadata !71, metadata !71, metadata !72, metadata !74}
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786454, metadata !67, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!75 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !82}
!77 = metadata !{i32 786689, metadata !66, metadata !"destaddr", metadata !68, i32 16777228, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!78 = metadata !{i32 786689, metadata !66, metadata !"srcaddr", metadata !68, i32 33554444, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!79 = metadata !{i32 786689, metadata !66, metadata !"len", metadata !68, i32 50331660, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!80 = metadata !{i32 786688, metadata !66, metadata !"dest", metadata !68, i32 13, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!82 = metadata !{i32 786688, metadata !66, metadata !"src", metadata !68, i32 14, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!83 = metadata !{i32 786449, metadata !84, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !85, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!84 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !92, i32 1
!87 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!88 = metadata !{i32 786473, metadata !87}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!89 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !71, metadata !71, metadata !72, metadata !91}
!91 = metadata !{i32 786454, metadata !87, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!93 = metadata !{i32 786689, metadata !86, metadata !"dst", metadata !88, i32 16777228, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!94 = metadata !{i32 786689, metadata !86, metadata !"src", metadata !88, i32 33554444, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!95 = metadata !{i32 786689, metadata !86, metadata !"count", metadata !88, i32 50331660, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!96 = metadata !{i32 786688, metadata !86, metadata !"a", metadata !88, i32 13, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!97 = metadata !{i32 786688, metadata !86, metadata !"b", metadata !88, i32 14, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!98 = metadata !{i32 786449, metadata !99, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !100, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himes
!99 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786478, metadata !102, metadata !103, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !107, 
!102 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!103 = metadata !{i32 786473, metadata !102}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !71, metadata !71, metadata !72, metadata !106}
!106 = metadata !{i32 786454, metadata !102, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!108 = metadata !{i32 786689, metadata !101, metadata !"destaddr", metadata !103, i32 16777227, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!109 = metadata !{i32 786689, metadata !101, metadata !"srcaddr", metadata !103, i32 33554443, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!110 = metadata !{i32 786689, metadata !101, metadata !"len", metadata !103, i32 50331659, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!111 = metadata !{i32 786688, metadata !101, metadata !"dest", metadata !103, i32 12, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!112 = metadata !{i32 786688, metadata !101, metadata !"src", metadata !103, i32 13, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!113 = metadata !{i32 786449, metadata !114, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !115, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!114 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786478, metadata !117, metadata !118, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !122, i32
!117 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!118 = metadata !{i32 786473, metadata !117}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !71, metadata !71, metadata !8, metadata !121}
!121 = metadata !{i32 786454, metadata !117, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126}
!123 = metadata !{i32 786689, metadata !116, metadata !"dst", metadata !118, i32 16777227, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!124 = metadata !{i32 786689, metadata !116, metadata !"s", metadata !118, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!125 = metadata !{i32 786689, metadata !116, metadata !"count", metadata !118, i32 50331659, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!126 = metadata !{i32 786688, metadata !116, metadata !"a", metadata !118, i32 12, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!129 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!130 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!131 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!132 = metadata !{i32 81, i32 0, metadata !4, null}
!133 = metadata !{i32 82, i32 0, metadata !4, null}
!134 = metadata !{i32 83, i32 0, metadata !4, null}
!135 = metadata !{i32 85, i32 0, metadata !4, null}
!136 = metadata !{i32 86, i32 0, metadata !4, null}
!137 = metadata !{i32 88, i32 0, metadata !4, null}
!138 = metadata !{i32 89, i32 0, metadata !4, null}
!139 = metadata !{i32 90, i32 0, metadata !4, null}
!140 = metadata !{i32 92, i32 0, metadata !4, null}
!141 = metadata !{i32 93, i32 0, metadata !4, null}
!142 = metadata !{i32 94, i32 0, metadata !4, null}
!143 = metadata !{i32 97, i32 0, metadata !4, null}
!144 = metadata !{i32 98, i32 0, metadata !4, null}
!145 = metadata !{i32 100, i32 0, metadata !4, null}
!146 = metadata !{i32 101, i32 0, metadata !4, null}
!147 = metadata !{i32 105, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !4, i32 105, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!149 = metadata !{i32 106, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !148, i32 105, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!151 = metadata !{i32 107, i32 0, metadata !150, null}
!152 = metadata !{i32 108, i32 0, metadata !150, null}
!153 = metadata !{i32 110, i32 0, metadata !150, null}
!154 = metadata !{i32 111, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !150, i32 111, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!156 = metadata !{i32 112, i32 0, metadata !155, null}
!157 = metadata !{i32 114, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !150, i32 114, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!159 = metadata !{i32 115, i32 0, metadata !158, null}
!160 = metadata !{i32 118, i32 0, metadata !4, null}
!161 = metadata !{i32 120, i32 0, metadata !4, null}
!162 = metadata !{i32 121, i32 0, metadata !4, null}
!163 = metadata !{i32 122, i32 0, metadata !4, null}
!164 = metadata !{i32 123, i32 0, metadata !4, null}
!165 = metadata !{i32 124, i32 0, metadata !4, null}
!166 = metadata !{i32 125, i32 0, metadata !4, null}
!167 = metadata !{i32 126, i32 0, metadata !4, null}
!168 = metadata !{i32 127, i32 0, metadata !4, null}
!169 = metadata !{i32 128, i32 0, metadata !4, null}
!170 = metadata !{i32 129, i32 0, metadata !4, null}
!171 = metadata !{i32 131, i32 0, metadata !4, null}
!172 = metadata !{i32 132, i32 0, metadata !4, null}
!173 = metadata !{i32 134, i32 0, metadata !4, null}
!174 = metadata !{i32 135, i32 0, metadata !4, null}
!175 = metadata !{i32 137, i32 0, metadata !4, null}
!176 = metadata !{i32 138, i32 0, metadata !4, null}
!177 = metadata !{i32 149, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !9, i32 149, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!179 = metadata !{i32 151, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !181, i32 151, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!181 = metadata !{i32 786443, metadata !1, metadata !178, i32 149, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!182 = metadata !{i32 152, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 151, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!184 = metadata !{i32 153, i32 0, metadata !183, null}
!185 = metadata !{i32 154, i32 0, metadata !183, null}
!186 = metadata !{i32 155, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !183, i32 155, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/SparseMatMulScimark/sparsematmul.c]
!188 = metadata !{i32 156, i32 0, metadata !187, null}
!189 = metadata !{i32 157, i32 0, metadata !183, null}
!190 = metadata !{i32 161, i32 0, metadata !9, null}
!191 = metadata !{i32 162, i32 0, metadata !9, null}
!192 = metadata !{i32 163, i32 0, metadata !9, null}
!193 = metadata !{i32 164, i32 0, metadata !9, null}
!194 = metadata !{i32 165, i32 0, metadata !9, null}
!195 = metadata !{i32 13, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !17, metadata !16, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!197 = metadata !{i32 14, i32 0, metadata !196, null}
!198 = metadata !{i32 15, i32 0, metadata !16, null}
!199 = metadata !{i32 15, i32 0, metadata !27, null}
!200 = metadata !{i32 16, i32 0, metadata !27, null}
!201 = metadata !{metadata !202, metadata !202, i64 0}
!202 = metadata !{metadata !"int", metadata !203, i64 0}
!203 = metadata !{metadata !"omnipotent char", metadata !204, i64 0}
!204 = metadata !{metadata !"Simple C/C++ TBAA"}
!205 = metadata !{i32 21, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !42, metadata !41, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!207 = metadata !{i32 27, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !42, metadata !206, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!209 = metadata !{i32 29, i32 0, metadata !41, null}
!210 = metadata !{i32 16, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !54, metadata !53, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!212 = metadata !{i32 17, i32 0, metadata !211, null}
!213 = metadata !{i32 19, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !54, metadata !53, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!215 = metadata !{i32 22, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !54, metadata !214, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!217 = metadata !{i32 25, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !54, metadata !216, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!219 = metadata !{i32 26, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !54, metadata !218, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!221 = metadata !{i32 27, i32 0, metadata !220, null}
!222 = metadata !{i32 28, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !54, metadata !218, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!224 = metadata !{i32 29, i32 0, metadata !223, null}
!225 = metadata !{i32 32, i32 0, metadata !216, null}
!226 = metadata !{i32 34, i32 0, metadata !53, null}
!227 = metadata !{i32 16, i32 0, metadata !66, null}
!228 = metadata !{i32 17, i32 0, metadata !66, null}
!229 = metadata !{metadata !229, metadata !230, metadata !231}
!230 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!231 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!232 = metadata !{metadata !203, metadata !203, i64 0}
!233 = metadata !{metadata !233, metadata !230, metadata !231}
!234 = metadata !{i32 18, i32 0, metadata !66, null}
!235 = metadata !{i32 16, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !87, metadata !86, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!237 = metadata !{i32 19, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !87, metadata !86, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!239 = metadata !{i32 20, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !87, metadata !238, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!241 = metadata !{metadata !241, metadata !230, metadata !231}
!242 = metadata !{metadata !242, metadata !230, metadata !231}
!243 = metadata !{i32 22, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !87, metadata !238, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!245 = metadata !{i32 24, i32 0, metadata !244, null}
!246 = metadata !{i32 23, i32 0, metadata !244, null}
!247 = metadata !{metadata !247, metadata !230, metadata !231}
!248 = metadata !{metadata !248, metadata !230, metadata !231}
!249 = metadata !{i32 28, i32 0, metadata !86, null}
!250 = metadata !{i32 15, i32 0, metadata !101, null}
!251 = metadata !{i32 16, i32 0, metadata !101, null}
!252 = metadata !{metadata !252, metadata !230, metadata !231}
!253 = metadata !{metadata !253, metadata !230, metadata !231}
!254 = metadata !{i32 17, i32 0, metadata !101, null}
!255 = metadata !{i32 13, i32 0, metadata !116, null}
!256 = metadata !{i32 14, i32 0, metadata !116, null}
!257 = metadata !{i32 15, i32 0, metadata !116, null}
