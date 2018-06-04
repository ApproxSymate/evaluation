; ModuleID = 'lu.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"__arr32__lu\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"lu_err\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"pivot_err\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"AiiJ\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"A[0][0]\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str6 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str610 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str1711 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2812 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %N = alloca i32, align 4
  %4 = alloca i8*
  %lu = alloca [2 x [2 x i32]], align 16
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 2, i32* %N, align 4, !dbg !140
  %6 = load i32* %N, align 4, !dbg !141
  %7 = zext i32 %6 to i64, !dbg !141
  store i8* null, i8** %4, !dbg !141
  %8 = alloca i32, i64 %7, align 16, !dbg !141
  %9 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i32 0, !dbg !142
  %10 = bitcast [2 x i32]* %9 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* %10, i64 16, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0)), !dbg !142
  %11 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i32 0, !dbg !143
  %12 = bitcast [2 x i32]* %11 to i8*, !dbg !143
  call void @klee_track_error(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)), !dbg !143
  %13 = bitcast i32* %8 to i8*, !dbg !144
  call void @klee_track_error(i8* %13, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !144
  %14 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i64 0, !dbg !145
  %15 = getelementptr inbounds [2 x i32]* %14, i32 0, i64 0, !dbg !145
  %16 = load i32* %15, align 4, !dbg !145
  %17 = icmp ne i32 %16, 0, !dbg !145
  %18 = zext i1 %17 to i32, !dbg !145
  %19 = sext i32 %18 to i64, !dbg !145
  call void @klee_assume(i64 %19), !dbg !145
  %20 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i64 0, !dbg !146
  %21 = getelementptr inbounds [2 x i32]* %20, i32 0, i64 1, !dbg !146
  %22 = load i32* %21, align 4, !dbg !146
  %23 = icmp ne i32 %22, 0, !dbg !146
  %24 = zext i1 %23 to i32, !dbg !146
  %25 = sext i32 %24 to i64, !dbg !146
  call void @klee_assume(i64 %25), !dbg !146
  %26 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i64 1, !dbg !147
  %27 = getelementptr inbounds [2 x i32]* %26, i32 0, i64 0, !dbg !147
  %28 = load i32* %27, align 4, !dbg !147
  %29 = icmp ne i32 %28, 0, !dbg !147
  %30 = zext i1 %29 to i32, !dbg !147
  %31 = sext i32 %30 to i64, !dbg !147
  call void @klee_assume(i64 %31), !dbg !147
  %32 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i64 1, !dbg !148
  %33 = getelementptr inbounds [2 x i32]* %32, i32 0, i64 1, !dbg !148
  %34 = load i32* %33, align 4, !dbg !148
  %35 = icmp ne i32 %34, 0, !dbg !148
  %36 = zext i1 %35 to i32, !dbg !148
  %37 = sext i32 %36 to i64, !dbg !148
  call void @klee_assume(i64 %37), !dbg !148
  %38 = load i32* %N, align 4, !dbg !149
  %39 = load i32* %N, align 4, !dbg !149
  %40 = getelementptr inbounds [2 x [2 x i32]]* %lu, i32 0, i32 0, !dbg !149
  %41 = call i32 @LU_factor(i32 %38, i32 %39, [2 x i32]* %40, i32* %8), !dbg !149
  store i32 0, i32* %1, !dbg !150
  store i32 1, i32* %5
  %42 = load i8** %4, !dbg !150
  %43 = load i32* %1, !dbg !151
  ret i32 %43, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_track_error(i8*, i8*) #3

declare void @klee_assume(i64) #3

; Function Attrs: nounwind uwtable
define i32 @LU_factor(i32 %M, i32 %N, [2 x i32]* %A, i32* %pivot) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca i32*, align 8
  %minMN = alloca i32, align 4
  %j = alloca i32, align 4
  %jp = alloca i32, align 4
  %t = alloca i32, align 4
  %ab = alloca i32, align 4
  %recp = alloca i32, align 4
  %AiiJ = alloca i32, align 4
  %tA = alloca i32, align 4
  %Aii = alloca i32*, align 8
  %Aj = alloca i32*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %tA1 = alloca i32*, align 8
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  store i32 %M, i32* %2, align 4
  store i32 %N, i32* %3, align 4
  store [2 x i32]* %A, [2 x i32]** %4, align 8
  store i32* %pivot, i32** %5, align 8
  %6 = load i32* %2, align 4, !dbg !152
  %7 = load i32* %3, align 4, !dbg !152
  %8 = icmp slt i32 %6, %7, !dbg !152
  %9 = load i32* %2, align 4, !dbg !152
  %10 = load i32* %3, align 4, !dbg !152
  %11 = select i1 %8, i32 %9, i32 %10, !dbg !152
  store i32 %11, i32* %minMN, align 4, !dbg !152
  store i32 0, i32* %j, align 4, !dbg !153
  store i32 0, i32* %j, align 4, !dbg !154
  br label %12, !dbg !154

; <label>:12                                      ; preds = %201, %0
  %13 = load i32* %j, align 4, !dbg !154
  %14 = load i32* %minMN, align 4, !dbg !154
  %15 = icmp slt i32 %13, %14, !dbg !154
  br i1 %15, label %16, label %204, !dbg !154

; <label>:16                                      ; preds = %12
  %17 = load i32* %j, align 4, !dbg !156
  store i32 %17, i32* %jp, align 4, !dbg !156
  %18 = load i32* %j, align 4, !dbg !158
  %19 = sext i32 %18 to i64, !dbg !158
  %20 = load i32* %j, align 4, !dbg !158
  %21 = sext i32 %20 to i64, !dbg !158
  %22 = load [2 x i32]** %4, align 8, !dbg !158
  %23 = getelementptr inbounds [2 x i32]* %22, i64 %21, !dbg !158
  %24 = getelementptr inbounds [2 x i32]* %23, i32 0, i64 %19, !dbg !158
  %25 = load i32* %24, align 4, !dbg !158
  %26 = call i32 @absolute(i32 %25), !dbg !158
  store i32 %26, i32* %t, align 4, !dbg !158
  %27 = load i32* %j, align 4, !dbg !159
  %28 = add nsw i32 %27, 1, !dbg !159
  store i32 %28, i32* %i, align 4, !dbg !159
  br label %29, !dbg !159

; <label>:29                                      ; preds = %49, %16
  %30 = load i32* %i, align 4, !dbg !159
  %31 = load i32* %2, align 4, !dbg !159
  %32 = icmp slt i32 %30, %31, !dbg !159
  br i1 %32, label %33, label %52, !dbg !159

; <label>:33                                      ; preds = %29
  %34 = load i32* %j, align 4, !dbg !161
  %35 = sext i32 %34 to i64, !dbg !161
  %36 = load i32* %i, align 4, !dbg !161
  %37 = sext i32 %36 to i64, !dbg !161
  %38 = load [2 x i32]** %4, align 8, !dbg !161
  %39 = getelementptr inbounds [2 x i32]* %38, i64 %37, !dbg !161
  %40 = getelementptr inbounds [2 x i32]* %39, i32 0, i64 %35, !dbg !161
  %41 = load i32* %40, align 4, !dbg !161
  %42 = call i32 @absolute(i32 %41), !dbg !161
  store i32 %42, i32* %ab, align 4, !dbg !161
  %43 = load i32* %ab, align 4, !dbg !163
  %44 = load i32* %t, align 4, !dbg !163
  %45 = icmp sgt i32 %43, %44, !dbg !163
  br i1 %45, label %46, label %49, !dbg !163

; <label>:46                                      ; preds = %33
  %47 = load i32* %i, align 4, !dbg !165
  store i32 %47, i32* %jp, align 4, !dbg !165
  %48 = load i32* %ab, align 4, !dbg !167
  store i32 %48, i32* %t, align 4, !dbg !167
  br label %49, !dbg !168

; <label>:49                                      ; preds = %33, %46
  %50 = load i32* %i, align 4, !dbg !159
  %51 = add nsw i32 %50, 1, !dbg !159
  store i32 %51, i32* %i, align 4, !dbg !159
  br label %29, !dbg !159

; <label>:52                                      ; preds = %29
  %53 = load i32* %jp, align 4, !dbg !169
  %54 = load i32* %j, align 4, !dbg !169
  %55 = sext i32 %54 to i64, !dbg !169
  %56 = load i32** %5, align 8, !dbg !169
  %57 = getelementptr inbounds i32* %56, i64 %55, !dbg !169
  store i32 %53, i32* %57, align 4, !dbg !169
  %58 = load i32* %j, align 4, !dbg !170
  %59 = sext i32 %58 to i64, !dbg !170
  %60 = load i32* %jp, align 4, !dbg !170
  %61 = sext i32 %60 to i64, !dbg !170
  %62 = load [2 x i32]** %4, align 8, !dbg !170
  %63 = getelementptr inbounds [2 x i32]* %62, i64 %61, !dbg !170
  %64 = getelementptr inbounds [2 x i32]* %63, i32 0, i64 %59, !dbg !170
  %65 = load i32* %64, align 4, !dbg !170
  %66 = icmp eq i32 %65, 0, !dbg !170
  br i1 %66, label %67, label %68, !dbg !170

; <label>:67                                      ; preds = %52
  store i32 1, i32* %1, !dbg !172
  br label %212, !dbg !172

; <label>:68                                      ; preds = %52
  %69 = load i32* %jp, align 4, !dbg !173
  %70 = load i32* %j, align 4, !dbg !173
  %71 = icmp ne i32 %69, %70, !dbg !173
  br i1 %71, label %72, label %112, !dbg !173

; <label>:72                                      ; preds = %68
  store i32 0, i32* %count, align 4, !dbg !175
  br label %73, !dbg !175

; <label>:73                                      ; preds = %76, %72
  %74 = load i32* %count, align 4, !dbg !175
  %75 = icmp slt i32 %74, 2, !dbg !175
  br i1 %75, label %76, label %112, !dbg !175

; <label>:76                                      ; preds = %73
  %77 = load i32* %count, align 4, !dbg !178
  %78 = sext i32 %77 to i64, !dbg !178
  %79 = load i32* %j, align 4, !dbg !178
  %80 = sext i32 %79 to i64, !dbg !178
  %81 = load [2 x i32]** %4, align 8, !dbg !178
  %82 = getelementptr inbounds [2 x i32]* %81, i64 %80, !dbg !178
  %83 = getelementptr inbounds [2 x i32]* %82, i32 0, i64 %78, !dbg !178
  %84 = load i32* %83, align 4, !dbg !178
  %85 = load i32** %tA1, align 8, !dbg !178
  store i32 %84, i32* %85, align 4, !dbg !178
  %86 = load i32* %count, align 4, !dbg !180
  %87 = sext i32 %86 to i64, !dbg !180
  %88 = load i32* %jp, align 4, !dbg !180
  %89 = sext i32 %88 to i64, !dbg !180
  %90 = load [2 x i32]** %4, align 8, !dbg !180
  %91 = getelementptr inbounds [2 x i32]* %90, i64 %89, !dbg !180
  %92 = getelementptr inbounds [2 x i32]* %91, i32 0, i64 %87, !dbg !180
  %93 = load i32* %92, align 4, !dbg !180
  %94 = load i32* %count, align 4, !dbg !180
  %95 = sext i32 %94 to i64, !dbg !180
  %96 = load i32* %j, align 4, !dbg !180
  %97 = sext i32 %96 to i64, !dbg !180
  %98 = load [2 x i32]** %4, align 8, !dbg !180
  %99 = getelementptr inbounds [2 x i32]* %98, i64 %97, !dbg !180
  %100 = getelementptr inbounds [2 x i32]* %99, i32 0, i64 %95, !dbg !180
  store i32 %93, i32* %100, align 4, !dbg !180
  %101 = load i32** %tA1, align 8, !dbg !181
  %102 = load i32* %101, align 4, !dbg !181
  %103 = load i32* %count, align 4, !dbg !181
  %104 = sext i32 %103 to i64, !dbg !181
  %105 = load i32* %jp, align 4, !dbg !181
  %106 = sext i32 %105 to i64, !dbg !181
  %107 = load [2 x i32]** %4, align 8, !dbg !181
  %108 = getelementptr inbounds [2 x i32]* %107, i64 %106, !dbg !181
  %109 = getelementptr inbounds [2 x i32]* %108, i32 0, i64 %104, !dbg !181
  store i32 %102, i32* %109, align 4, !dbg !181
  %110 = load i32* %count, align 4, !dbg !175
  %111 = add nsw i32 %110, 1, !dbg !175
  store i32 %111, i32* %count, align 4, !dbg !175
  br label %73, !dbg !175

; <label>:112                                     ; preds = %73, %68
  %113 = load i32* %j, align 4, !dbg !182
  %114 = load i32* %2, align 4, !dbg !182
  %115 = sub nsw i32 %114, 1, !dbg !182
  %116 = icmp slt i32 %113, %115, !dbg !182
  br i1 %116, label %117, label %146, !dbg !182

; <label>:117                                     ; preds = %112
  %118 = load i32* %j, align 4, !dbg !184
  %119 = sext i32 %118 to i64, !dbg !184
  %120 = load i32* %j, align 4, !dbg !184
  %121 = sext i32 %120 to i64, !dbg !184
  %122 = load [2 x i32]** %4, align 8, !dbg !184
  %123 = getelementptr inbounds [2 x i32]* %122, i64 %121, !dbg !184
  %124 = getelementptr inbounds [2 x i32]* %123, i32 0, i64 %119, !dbg !184
  %125 = load i32* %124, align 4, !dbg !184
  %int_cast_to_i64 = zext i32 %125 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !184
  %126 = sdiv i32 1, %125, !dbg !184
  store i32 %126, i32* %recp, align 4, !dbg !184
  %127 = load i32* %j, align 4, !dbg !186
  %128 = add nsw i32 %127, 1, !dbg !186
  store i32 %128, i32* %k, align 4, !dbg !186
  br label %129, !dbg !186

; <label>:129                                     ; preds = %133, %117
  %130 = load i32* %k, align 4, !dbg !186
  %131 = load i32* %2, align 4, !dbg !186
  %132 = icmp slt i32 %130, %131, !dbg !186
  br i1 %132, label %133, label %146, !dbg !186

; <label>:133                                     ; preds = %129
  %134 = load i32* %recp, align 4, !dbg !188
  %135 = load i32* %j, align 4, !dbg !188
  %136 = sext i32 %135 to i64, !dbg !188
  %137 = load i32* %k, align 4, !dbg !188
  %138 = sext i32 %137 to i64, !dbg !188
  %139 = load [2 x i32]** %4, align 8, !dbg !188
  %140 = getelementptr inbounds [2 x i32]* %139, i64 %138, !dbg !188
  %141 = getelementptr inbounds [2 x i32]* %140, i32 0, i64 %136, !dbg !188
  %142 = load i32* %141, align 4, !dbg !188
  %143 = mul nsw i32 %142, %134, !dbg !188
  store i32 %143, i32* %141, align 4, !dbg !188
  %144 = load i32* %k, align 4, !dbg !186
  %145 = add nsw i32 %144, 1, !dbg !186
  store i32 %145, i32* %k, align 4, !dbg !186
  br label %129, !dbg !186

; <label>:146                                     ; preds = %129, %112
  %147 = load i32* %j, align 4, !dbg !189
  %148 = load i32* %minMN, align 4, !dbg !189
  %149 = sub nsw i32 %148, 1, !dbg !189
  %150 = icmp slt i32 %147, %149, !dbg !189
  br i1 %150, label %151, label %201, !dbg !189

; <label>:151                                     ; preds = %146
  %152 = load i32* %j, align 4, !dbg !191
  %153 = add nsw i32 %152, 1, !dbg !191
  store i32 %153, i32* %ii, align 4, !dbg !191
  br label %154, !dbg !191

; <label>:154                                     ; preds = %198, %151
  %155 = load i32* %ii, align 4, !dbg !191
  %156 = load i32* %2, align 4, !dbg !191
  %157 = icmp slt i32 %155, %156, !dbg !191
  br i1 %157, label %158, label %201, !dbg !191

; <label>:158                                     ; preds = %154
  %159 = load i32* %ii, align 4, !dbg !194
  %160 = sext i32 %159 to i64, !dbg !194
  %161 = load [2 x i32]** %4, align 8, !dbg !194
  %162 = getelementptr inbounds [2 x i32]* %161, i64 %160, !dbg !194
  %163 = getelementptr inbounds [2 x i32]* %162, i32 0, i32 0, !dbg !194
  store i32* %163, i32** %Aii, align 8, !dbg !194
  %164 = load i32* %j, align 4, !dbg !196
  %165 = sext i32 %164 to i64, !dbg !196
  %166 = load [2 x i32]** %4, align 8, !dbg !196
  %167 = getelementptr inbounds [2 x i32]* %166, i64 %165, !dbg !196
  %168 = getelementptr inbounds [2 x i32]* %167, i32 0, i32 0, !dbg !196
  store i32* %168, i32** %Aj, align 8, !dbg !196
  %169 = load i32* %j, align 4, !dbg !197
  %170 = sext i32 %169 to i64, !dbg !197
  %171 = load i32** %Aii, align 8, !dbg !197
  %172 = getelementptr inbounds i32* %171, i64 %170, !dbg !197
  %173 = load i32* %172, align 4, !dbg !197
  store i32 %173, i32* %AiiJ, align 4, !dbg !197
  %174 = load i32* %AiiJ, align 4, !dbg !198
  %175 = sext i32 %174 to i64, !dbg !198
  call void @klee_bound_error(i64 %175, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), double 1.000000e+00), !dbg !198
  %176 = load i32* %j, align 4, !dbg !199
  %177 = add nsw i32 %176, 1, !dbg !199
  store i32 %177, i32* %jj, align 4, !dbg !199
  br label %178, !dbg !199

; <label>:178                                     ; preds = %182, %158
  %179 = load i32* %jj, align 4, !dbg !199
  %180 = load i32* %3, align 4, !dbg !199
  %181 = icmp slt i32 %179, %180, !dbg !199
  br i1 %181, label %182, label %198, !dbg !199

; <label>:182                                     ; preds = %178
  %183 = load i32* %AiiJ, align 4, !dbg !201
  %184 = load i32* %jj, align 4, !dbg !201
  %185 = sext i32 %184 to i64, !dbg !201
  %186 = load i32** %Aj, align 8, !dbg !201
  %187 = getelementptr inbounds i32* %186, i64 %185, !dbg !201
  %188 = load i32* %187, align 4, !dbg !201
  %189 = mul nsw i32 %183, %188, !dbg !201
  %190 = load i32* %jj, align 4, !dbg !201
  %191 = sext i32 %190 to i64, !dbg !201
  %192 = load i32** %Aii, align 8, !dbg !201
  %193 = getelementptr inbounds i32* %192, i64 %191, !dbg !201
  %194 = load i32* %193, align 4, !dbg !201
  %195 = sub nsw i32 %194, %189, !dbg !201
  store i32 %195, i32* %193, align 4, !dbg !201
  %196 = load i32* %jj, align 4, !dbg !199
  %197 = add nsw i32 %196, 1, !dbg !199
  store i32 %197, i32* %jj, align 4, !dbg !199
  br label %178, !dbg !199

; <label>:198                                     ; preds = %178
  %199 = load i32* %ii, align 4, !dbg !191
  %200 = add nsw i32 %199, 1, !dbg !191
  store i32 %200, i32* %ii, align 4, !dbg !191
  br label %154, !dbg !191

; <label>:201                                     ; preds = %146, %154
  %202 = load i32* %j, align 4, !dbg !154
  %203 = add nsw i32 %202, 1, !dbg !154
  store i32 %203, i32* %j, align 4, !dbg !154
  br label %12, !dbg !154

; <label>:204                                     ; preds = %12
  %205 = load [2 x i32]** %4, align 8, !dbg !202
  %206 = getelementptr inbounds [2 x i32]* %205, i64 0, !dbg !202
  %207 = getelementptr inbounds [2 x i32]* %206, i32 0, i64 0, !dbg !202
  %208 = load i32* %207, align 4, !dbg !202
  %209 = sext i32 %208 to i64, !dbg !202
  call void @klee_bound_error(i64 %209, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), double 1.000000e+00), !dbg !202
  %210 = load i32* %2, align 4, !dbg !203
  %211 = sext i32 %210 to i64, !dbg !203
  call void @klee_bound_error(i64 %211, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), double 1.000000e+00), !dbg !203
  store i32 0, i32* %1, !dbg !204
  br label %212, !dbg !204

; <label>:212                                     ; preds = %204, %67
  %213 = load i32* %1, !dbg !205
  ret i32 %213, !dbg !205
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @absolute(i32 %x) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  %3 = load i32* %2, align 4, !dbg !206
  %4 = icmp sge i32 %3, 0, !dbg !206
  %5 = load i32* %2, align 4, !dbg !208
  br i1 %4, label %6, label %7, !dbg !206

; <label>:6                                       ; preds = %0
  store i32 %5, i32* %1, !dbg !208
  br label %9, !dbg !208

; <label>:7                                       ; preds = %0
  %8 = sub nsw i32 0, %5, !dbg !209
  store i32 %8, i32* %1, !dbg !209
  br label %9, !dbg !209

; <label>:9                                       ; preds = %7, %6
  %10 = load i32* %1, !dbg !210
  ret i32 %10, !dbg !210
}

declare void @klee_bound_error(i64, i8*, double) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !211
  br i1 %1, label %2, label %3, !dbg !211

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0)) #6, !dbg !213
  unreachable, !dbg !213

; <label>:3                                       ; preds = %0
  ret void, !dbg !214
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !215
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #7, !dbg !215
  %2 = load i32* %x, align 4, !dbg !216, !tbaa !217
  ret i32 %2, !dbg !216
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !221
  br i1 %1, label %3, label %2, !dbg !221

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #6, !dbg !223
  unreachable, !dbg !223

; <label>:3                                       ; preds = %0
  ret void, !dbg !225
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !226
  br i1 %1, label %3, label %2, !dbg !226

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str610, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1711, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2812, i64 0, i64 0)) #6, !dbg !228
  unreachable, !dbg !228

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !229
  %5 = icmp eq i32 %4, %end, !dbg !229
  br i1 %5, label %21, label %6, !dbg !229

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !231
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #7, !dbg !231
  %8 = icmp eq i32 %start, 0, !dbg !233
  %9 = load i32* %x, align 4, !dbg !235, !tbaa !217
  br i1 %8, label %10, label %13, !dbg !233

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !235
  %12 = zext i1 %11 to i64, !dbg !235
  call void @klee_assume(i64 %12) #7, !dbg !235
  br label %19, !dbg !237

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !238
  %15 = zext i1 %14 to i64, !dbg !238
  call void @klee_assume(i64 %15) #7, !dbg !238
  %16 = load i32* %x, align 4, !dbg !240, !tbaa !217
  %17 = icmp slt i32 %16, %end, !dbg !240
  %18 = zext i1 %17 to i64, !dbg !240
  call void @klee_assume(i64 %18) #7, !dbg !240
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !241, !tbaa !217
  br label %21, !dbg !241

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !242
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !243
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !243

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !244
  %wide.load = load <16 x i8>* %3, align 1, !dbg !244
  %next.gep.sum279 = or i64 %index, 16, !dbg !244
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !244
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !244
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !244
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !244
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !244
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !244
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !244
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !244
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !245

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
  %10 = add i64 %.01, -1, !dbg !243
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !244
  %12 = load i8* %src.03, align 1, !dbg !244, !tbaa !248
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !244
  store i8 %12, i8* %dest.02, align 1, !dbg !244, !tbaa !248
  %14 = icmp eq i64 %10, 0, !dbg !243
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !243, !llvm.loop !249

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !250
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !251
  br i1 %1, label %.loopexit, label %2, !dbg !251

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !253
  br i1 %3, label %.preheader, label %18, !dbg !253

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !255
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !255

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !255
  %wide.load = load <16 x i8>* %6, align 1, !dbg !255
  %next.gep.sum586 = or i64 %index, 16, !dbg !255
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !255
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !255
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !255
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !255
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !255
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !255
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !255
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !255
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !257

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
  %13 = add i64 %.02, -1, !dbg !255
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !255
  %15 = load i8* %b.04, align 1, !dbg !255, !tbaa !248
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !255
  store i8 %15, i8* %a.03, align 1, !dbg !255, !tbaa !248
  %17 = icmp eq i64 %13, 0, !dbg !255
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !255, !llvm.loop !258

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !259
  %20 = icmp eq i64 %count, 0, !dbg !261
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !261

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !262
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !259
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !261
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !261
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !261
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !261
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !261
  %.sum505 = add i64 %.sum440, -31, !dbg !261
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !261
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !261
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !261
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !261
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !261
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !261
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !261
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !261
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !261
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !261
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !261
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !261
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !263

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
  %32 = add i64 %.16, -1, !dbg !261
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !261
  %34 = load i8* %b.18, align 1, !dbg !261, !tbaa !248
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !261
  store i8 %34, i8* %a.17, align 1, !dbg !261, !tbaa !248
  %36 = icmp eq i64 %32, 0, !dbg !261
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !261, !llvm.loop !264

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !265
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !266
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !266

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !267
  %wide.load = load <16 x i8>* %3, align 1, !dbg !267
  %next.gep.sum280 = or i64 %index, 16, !dbg !267
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !267
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !267
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !267
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !267
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !267
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !267
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !267
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !267
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !268

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
  %10 = add i64 %.01, -1, !dbg !266
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !267
  %12 = load i8* %src.03, align 1, !dbg !267, !tbaa !248
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !267
  store i8 %12, i8* %dest.02, align 1, !dbg !267, !tbaa !248
  %14 = icmp eq i64 %10, 0, !dbg !266
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !266, !llvm.loop !269

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !266

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !270
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !271
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !271

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !272
  br label %3, !dbg !271

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !271
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !272
  store volatile i8 %2, i8* %a.02, align 1, !dbg !272, !tbaa !248
  %6 = icmp eq i64 %4, 0, !dbg !271
  br i1 %6, label %._crit_edge, label %3, !dbg !271

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !273
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noreturn nounwind }
attributes #7 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !23, !34, !47, !59, !72, !91, !106, !121}
!llvm.module.flags = !{!137, !138}
!llvm.ident = !{!139, !139, !139, !139, !139, !139, !139, !139, !139}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himeshi
!1 = metadata !{metadata !"lu.c", metadata !"/home/himeshi/Projects/workspace/LUScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !12, metadata !20}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 132, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 132} ; [ DW_TAG_s
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"LU_factor", metadata !"LU_factor", metadata !"", i32 156, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, [2 x i32]*, i32*)* @LU_factor, null, null, 
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8, metadata !15, metadata !19}
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !17, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"absolute", metadata !"absolute", metadata !"", i32 258, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @absolute, null, null, metadata !2, i32 258} ; [ 
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !8, metadata !8}
!23 = metadata !{i32 786449, metadata !24, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !25, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!24 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786478, metadata !27, metadata !28, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!27 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!28 = metadata !{i32 786473, metadata !27}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!29 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !31}
!31 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786689, metadata !26, metadata !"z", metadata !28, i32 16777228, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!34 = metadata !{i32 786449, metadata !35, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !36, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!35 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786478, metadata !38, metadata !39, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !44, i32 13} ; [ 
!38 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!39 = metadata !{i32 786473, metadata !38}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !8, metadata !42}
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786689, metadata !37, metadata !"name", metadata !39, i32 16777229, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!46 = metadata !{i32 786688, metadata !37, metadata !"x", metadata !39, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!47 = metadata !{i32 786449, metadata !48, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !49, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!48 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786478, metadata !51, metadata !52, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!51 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!52 = metadata !{i32 786473, metadata !51}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!53 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !55, metadata !55}
!55 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 786689, metadata !50, metadata !"bitWidth", metadata !52, i32 16777236, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!58 = metadata !{i32 786689, metadata !50, metadata !"shift", metadata !52, i32 33554452, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!59 = metadata !{i32 786449, metadata !60, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !61, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!60 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786478, metadata !63, metadata !64, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!63 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!64 = metadata !{i32 786473, metadata !63}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !8, metadata !8, metadata !8, metadata !42}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71}
!68 = metadata !{i32 786689, metadata !62, metadata !"start", metadata !64, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!69 = metadata !{i32 786689, metadata !62, metadata !"end", metadata !64, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!70 = metadata !{i32 786689, metadata !62, metadata !"name", metadata !64, i32 50331661, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!71 = metadata !{i32 786688, metadata !62, metadata !"x", metadata !64, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!72 = metadata !{i32 786449, metadata !73, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !74, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!73 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786478, metadata !76, metadata !77, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !85, i32 12} 
!76 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!77 = metadata !{i32 786473, metadata !76}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!78 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !80, metadata !81, metadata !83}
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!82 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{i32 786454, metadata !76, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!84 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!86 = metadata !{i32 786689, metadata !75, metadata !"destaddr", metadata !77, i32 16777228, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!87 = metadata !{i32 786689, metadata !75, metadata !"srcaddr", metadata !77, i32 33554444, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!88 = metadata !{i32 786689, metadata !75, metadata !"len", metadata !77, i32 50331660, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!89 = metadata !{i32 786688, metadata !75, metadata !"dest", metadata !77, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!90 = metadata !{i32 786688, metadata !75, metadata !"src", metadata !77, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!91 = metadata !{i32 786449, metadata !92, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !93, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!92 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786478, metadata !95, metadata !96, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !100, i32 
!95 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!96 = metadata !{i32 786473, metadata !95}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!97 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !80, metadata !80, metadata !81, metadata !99}
!99 = metadata !{i32 786454, metadata !95, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!101 = metadata !{i32 786689, metadata !94, metadata !"dst", metadata !96, i32 16777228, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!102 = metadata !{i32 786689, metadata !94, metadata !"src", metadata !96, i32 33554444, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!103 = metadata !{i32 786689, metadata !94, metadata !"count", metadata !96, i32 50331660, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!104 = metadata !{i32 786688, metadata !94, metadata !"a", metadata !96, i32 13, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!105 = metadata !{i32 786688, metadata !94, metadata !"b", metadata !96, i32 14, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!106 = metadata !{i32 786449, metadata !107, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !108, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!107 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786478, metadata !110, metadata !111, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !115, 
!110 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!111 = metadata !{i32 786473, metadata !110}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!112 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !80, metadata !80, metadata !81, metadata !114}
!114 = metadata !{i32 786454, metadata !110, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120}
!116 = metadata !{i32 786689, metadata !109, metadata !"destaddr", metadata !111, i32 16777227, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!117 = metadata !{i32 786689, metadata !109, metadata !"srcaddr", metadata !111, i32 33554443, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!118 = metadata !{i32 786689, metadata !109, metadata !"len", metadata !111, i32 50331659, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!119 = metadata !{i32 786688, metadata !109, metadata !"dest", metadata !111, i32 12, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!120 = metadata !{i32 786688, metadata !109, metadata !"src", metadata !111, i32 13, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!121 = metadata !{i32 786449, metadata !122, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !123, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!122 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786478, metadata !125, metadata !126, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !130, i32
!125 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!126 = metadata !{i32 786473, metadata !125}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!127 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{metadata !80, metadata !80, metadata !8, metadata !129}
!129 = metadata !{i32 786454, metadata !125, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134}
!131 = metadata !{i32 786689, metadata !124, metadata !"dst", metadata !126, i32 16777227, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!132 = metadata !{i32 786689, metadata !124, metadata !"s", metadata !126, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!133 = metadata !{i32 786689, metadata !124, metadata !"count", metadata !126, i32 50331659, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!134 = metadata !{i32 786688, metadata !124, metadata !"a", metadata !126, i32 12, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!136 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!137 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!138 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!139 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!140 = metadata !{i32 133, i32 0, metadata !4, null}
!141 = metadata !{i32 134, i32 0, metadata !4, null}
!142 = metadata !{i32 137, i32 0, metadata !4, null}
!143 = metadata !{i32 139, i32 0, metadata !4, null}
!144 = metadata !{i32 140, i32 0, metadata !4, null}
!145 = metadata !{i32 141, i32 0, metadata !4, null}
!146 = metadata !{i32 142, i32 0, metadata !4, null}
!147 = metadata !{i32 144, i32 0, metadata !4, null}
!148 = metadata !{i32 145, i32 0, metadata !4, null}
!149 = metadata !{i32 151, i32 0, metadata !4, null}
!150 = metadata !{i32 153, i32 0, metadata !4, null}
!151 = metadata !{i32 154, i32 0, metadata !4, null}
!152 = metadata !{i32 158, i32 0, metadata !12, null}
!153 = metadata !{i32 159, i32 0, metadata !12, null}
!154 = metadata !{i32 169, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !12, i32 169, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!156 = metadata !{i32 172, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !155, i32 169, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!158 = metadata !{i32 175, i32 0, metadata !157, null}
!159 = metadata !{i32 176, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !157, i32 176, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!161 = metadata !{i32 177, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !160, i32 176, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!163 = metadata !{i32 178, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !162, i32 178, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!165 = metadata !{i32 179, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !164, i32 178, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!167 = metadata !{i32 180, i32 0, metadata !166, null}
!168 = metadata !{i32 181, i32 0, metadata !166, null}
!169 = metadata !{i32 184, i32 0, metadata !157, null}
!170 = metadata !{i32 189, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !157, i32 189, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!172 = metadata !{i32 190, i32 0, metadata !171, null}
!173 = metadata !{i32 192, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !157, i32 192, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!175 = metadata !{i32 214, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 214, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!177 = metadata !{i32 786443, metadata !1, metadata !174, i32 192, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!178 = metadata !{i32 215, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !176, i32 214, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!180 = metadata !{i32 216, i32 0, metadata !179, null}
!181 = metadata !{i32 217, i32 0, metadata !179, null}
!182 = metadata !{i32 221, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !157, i32 221, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!184 = metadata !{i32 226, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !183, i32 222, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!186 = metadata !{i32 228, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !185, i32 228, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!188 = metadata !{i32 229, i32 0, metadata !187, null}
!189 = metadata !{i32 232, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !157, i32 232, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!191 = metadata !{i32 239, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 239, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!193 = metadata !{i32 786443, metadata !1, metadata !190, i32 232, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!194 = metadata !{i32 240, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !192, i32 239, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!196 = metadata !{i32 241, i32 0, metadata !195, null}
!197 = metadata !{i32 242, i32 0, metadata !195, null}
!198 = metadata !{i32 243, i32 0, metadata !195, null}
!199 = metadata !{i32 245, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !195, i32 245, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!201 = metadata !{i32 246, i32 0, metadata !200, null}
!202 = metadata !{i32 252, i32 0, metadata !12, null}
!203 = metadata !{i32 253, i32 0, metadata !12, null}
!204 = metadata !{i32 255, i32 0, metadata !12, null}
!205 = metadata !{i32 256, i32 0, metadata !12, null}
!206 = metadata !{i32 259, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !20, i32 259, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/LUScimark/lu.c]
!208 = metadata !{i32 260, i32 0, metadata !207, null}
!209 = metadata !{i32 262, i32 0, metadata !207, null}
!210 = metadata !{i32 263, i32 0, metadata !20, null}
!211 = metadata !{i32 13, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !27, metadata !26, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!213 = metadata !{i32 14, i32 0, metadata !212, null}
!214 = metadata !{i32 15, i32 0, metadata !26, null}
!215 = metadata !{i32 15, i32 0, metadata !37, null}
!216 = metadata !{i32 16, i32 0, metadata !37, null}
!217 = metadata !{metadata !218, metadata !218, i64 0}
!218 = metadata !{metadata !"int", metadata !219, i64 0}
!219 = metadata !{metadata !"omnipotent char", metadata !220, i64 0}
!220 = metadata !{metadata !"Simple C/C++ TBAA"}
!221 = metadata !{i32 21, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !51, metadata !50, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!223 = metadata !{i32 27, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !51, metadata !222, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!225 = metadata !{i32 29, i32 0, metadata !50, null}
!226 = metadata !{i32 16, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !63, metadata !62, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!228 = metadata !{i32 17, i32 0, metadata !227, null}
!229 = metadata !{i32 19, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !63, metadata !62, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!231 = metadata !{i32 22, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !63, metadata !230, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!233 = metadata !{i32 25, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !63, metadata !232, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!235 = metadata !{i32 26, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !63, metadata !234, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!237 = metadata !{i32 27, i32 0, metadata !236, null}
!238 = metadata !{i32 28, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !63, metadata !234, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!240 = metadata !{i32 29, i32 0, metadata !239, null}
!241 = metadata !{i32 32, i32 0, metadata !232, null}
!242 = metadata !{i32 34, i32 0, metadata !62, null}
!243 = metadata !{i32 16, i32 0, metadata !75, null}
!244 = metadata !{i32 17, i32 0, metadata !75, null}
!245 = metadata !{metadata !245, metadata !246, metadata !247}
!246 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!247 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!248 = metadata !{metadata !219, metadata !219, i64 0}
!249 = metadata !{metadata !249, metadata !246, metadata !247}
!250 = metadata !{i32 18, i32 0, metadata !75, null}
!251 = metadata !{i32 16, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !95, metadata !94, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!253 = metadata !{i32 19, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !95, metadata !94, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!255 = metadata !{i32 20, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !95, metadata !254, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!257 = metadata !{metadata !257, metadata !246, metadata !247}
!258 = metadata !{metadata !258, metadata !246, metadata !247}
!259 = metadata !{i32 22, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !95, metadata !254, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!261 = metadata !{i32 24, i32 0, metadata !260, null}
!262 = metadata !{i32 23, i32 0, metadata !260, null}
!263 = metadata !{metadata !263, metadata !246, metadata !247}
!264 = metadata !{metadata !264, metadata !246, metadata !247}
!265 = metadata !{i32 28, i32 0, metadata !94, null}
!266 = metadata !{i32 15, i32 0, metadata !109, null}
!267 = metadata !{i32 16, i32 0, metadata !109, null}
!268 = metadata !{metadata !268, metadata !246, metadata !247}
!269 = metadata !{metadata !269, metadata !246, metadata !247}
!270 = metadata !{i32 17, i32 0, metadata !109, null}
!271 = metadata !{i32 13, i32 0, metadata !124, null}
!272 = metadata !{i32 14, i32 0, metadata !124, null}
!273 = metadata !{i32 15, i32 0, metadata !124, null}
