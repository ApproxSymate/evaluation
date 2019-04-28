; ModuleID = 'blackscholes-symbolic.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numError = global i32 0, align 4
@inv_sqrt_2xPI = common global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"temp1\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"temp2\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"temp3\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"temp4\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"temp5\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"temp6\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"temp1_err\00", align 1
@.str7 = private unnamed_addr constant [10 x i8] c"temp2_err\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"temp3_err\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"temp4_err\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"temp5_err\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"temp6_err\00", align 1
@numOptions = common global i32 0, align 4
@nThreads = common global i32 0, align 4
@sptprice = common global i32* null, align 8
@strike = common global i32* null, align 8
@rate = common global i32* null, align 8
@volatility = common global i32* null, align 8
@otime = common global i32* null, align 8
@otype = common global i32* null, align 8
@prices = common global i32 0, align 4
@.str12 = private unnamed_addr constant [14 x i8] c"inv_sqrt_2xPI\00", align 1
@data_s = common global i32 0, align 4
@.str13 = private unnamed_addr constant [7 x i8] c"data_s\00", align 1
@data_strike = common global i32 0, align 4
@.str14 = private unnamed_addr constant [12 x i8] c"data_strike\00", align 1
@data_r = common global i32 0, align 4
@.str15 = private unnamed_addr constant [7 x i8] c"data_r\00", align 1
@data_divq = common global i32 0, align 4
@.str16 = private unnamed_addr constant [10 x i8] c"data_divq\00", align 1
@data_v = common global i32 0, align 4
@.str17 = private unnamed_addr constant [7 x i8] c"data_v\00", align 1
@data_t = common global i32 0, align 4
@.str18 = private unnamed_addr constant [7 x i8] c"data_t\00", align 1
@data_divs = common global i32 0, align 4
@.str19 = private unnamed_addr constant [10 x i8] c"data_divs\00", align 1
@data_DGrefval = common global i32 0, align 4
@.str20 = private unnamed_addr constant [14 x i8] c"data_DGrefval\00", align 1
@data_OptionType = common global i8 0, align 1
@.str21 = private unnamed_addr constant [18 x i8] c"inv_sqrt_2xPI_err\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"data_s_err\00", align 1
@.str23 = private unnamed_addr constant [16 x i8] c"data_strike_err\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"data_r_err\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"data_divq_err\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"data_v_err\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"data_t_err\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"data_divs_err\00", align 1
@.str29 = private unnamed_addr constant [18 x i8] c"data_DGrefval_err\00", align 1
@.str30 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str131 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str232 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str333 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1434 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str2535 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str636 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str1737 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2838 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @CNDF(i32 %InputX) #0 {
  %1 = alloca i32, align 4
  %sign = alloca i32, align 4
  %OutputX = alloca i32, align 4
  %xInput = alloca i32, align 4
  %xNPrimeofX = alloca i32, align 4
  %expValues = alloca i32, align 4
  %xK2 = alloca i32, align 4
  %xK2_2 = alloca i32, align 4
  %xK2_3 = alloca i32, align 4
  %xK2_4 = alloca i32, align 4
  %xK2_5 = alloca i32, align 4
  %xLocal = alloca i32, align 4
  %xLocal_1 = alloca i32, align 4
  %xLocal_2 = alloca i32, align 4
  %xLocal_3 = alloca i32, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %temp3 = alloca i32, align 4
  %temp4 = alloca i32, align 4
  %temp5 = alloca i32, align 4
  %temp6 = alloca i32, align 4
  store i32 %InputX, i32* %1, align 4
  %2 = load i32* %1, align 4, !dbg !160
  %3 = icmp slt i32 %2, 0, !dbg !160
  br i1 %3, label %4, label %7, !dbg !160

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4, !dbg !162
  %6 = sub nsw i32 0, %5, !dbg !162
  store i32 %6, i32* %1, align 4, !dbg !162
  store i32 1, i32* %sign, align 4, !dbg !164
  br label %8, !dbg !165

; <label>:7                                       ; preds = %0
  store i32 0, i32* %sign, align 4, !dbg !166
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = load i32* %1, align 4, !dbg !167
  store i32 %9, i32* %xInput, align 4, !dbg !167
  %10 = load i32* %1, align 4, !dbg !168
  %11 = load i32* %1, align 4, !dbg !168
  %12 = mul nsw i32 %10, %11, !dbg !168
  %int_cast_to_i64 = zext i32 -2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !168
  %13 = sdiv i32 %12, -2, !dbg !168
  %14 = sitofp i32 %13 to double, !dbg !168
  %15 = call double @exp(double %14) #6, !dbg !168
  %16 = fptosi double %15 to i32, !dbg !168
  store i32 %16, i32* %expValues, align 4, !dbg !168
  %17 = load i32* %expValues, align 4, !dbg !169
  store i32 %17, i32* %xNPrimeofX, align 4, !dbg !169
  %18 = load i32* %xNPrimeofX, align 4, !dbg !170
  %19 = load i32* @inv_sqrt_2xPI, align 4, !dbg !170
  %20 = mul nsw i32 %18, %19, !dbg !170
  store i32 %20, i32* %xNPrimeofX, align 4, !dbg !170
  %21 = bitcast i32* %temp1 to i8*, !dbg !171
  call void @klee_make_symbolic(i8* %21, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)), !dbg !171
  %22 = bitcast i32* %temp2 to i8*, !dbg !172
  call void @klee_make_symbolic(i8* %22, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)), !dbg !172
  %23 = bitcast i32* %temp3 to i8*, !dbg !173
  call void @klee_make_symbolic(i8* %23, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !173
  %24 = bitcast i32* %temp4 to i8*, !dbg !174
  call void @klee_make_symbolic(i8* %24, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)), !dbg !174
  %25 = bitcast i32* %temp5 to i8*, !dbg !175
  call void @klee_make_symbolic(i8* %25, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)), !dbg !175
  %26 = bitcast i32* %temp6 to i8*, !dbg !176
  call void @klee_make_symbolic(i8* %26, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !176
  %27 = bitcast i32* %temp1 to i8*, !dbg !177
  call void @klee_track_error(i8* %27, i8* getelementptr inbounds ([10 x i8]* @.str6, i32 0, i32 0)), !dbg !177
  %28 = bitcast i32* %temp2 to i8*, !dbg !178
  call void @klee_track_error(i8* %28, i8* getelementptr inbounds ([10 x i8]* @.str7, i32 0, i32 0)), !dbg !178
  %29 = bitcast i32* %temp3 to i8*, !dbg !179
  call void @klee_track_error(i8* %29, i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0)), !dbg !179
  %30 = bitcast i32* %temp4 to i8*, !dbg !180
  call void @klee_track_error(i8* %30, i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0)), !dbg !180
  %31 = bitcast i32* %temp5 to i8*, !dbg !181
  call void @klee_track_error(i8* %31, i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0)), !dbg !181
  %32 = bitcast i32* %temp6 to i8*, !dbg !182
  call void @klee_track_error(i8* %32, i8* getelementptr inbounds ([10 x i8]* @.str11, i32 0, i32 0)), !dbg !182
  %33 = load i32* %temp1, align 4, !dbg !183
  %34 = load i32* %xInput, align 4, !dbg !183
  %35 = mul nsw i32 %33, %34, !dbg !183
  store i32 %35, i32* %xK2, align 4, !dbg !183
  %36 = load i32* %xK2, align 4, !dbg !184
  %37 = add nsw i32 1, %36, !dbg !184
  store i32 %37, i32* %xK2, align 4, !dbg !184
  %38 = load i32* %xK2, align 4, !dbg !185
  %39 = icmp ne i32 %38, 0, !dbg !185
  %40 = zext i1 %39 to i32, !dbg !185
  %41 = sext i32 %40 to i64, !dbg !185
  call void @klee_assume(i64 %41), !dbg !185
  %42 = load i32* %xK2, align 4, !dbg !186
  %int_cast_to_i641 = zext i32 %42 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !186
  %43 = sdiv i32 1, %42, !dbg !186
  store i32 %43, i32* %xK2, align 4, !dbg !186
  %44 = load i32* %xK2, align 4, !dbg !187
  %45 = load i32* %xK2, align 4, !dbg !187
  %46 = mul nsw i32 %44, %45, !dbg !187
  store i32 %46, i32* %xK2_2, align 4, !dbg !187
  %47 = load i32* %xK2_2, align 4, !dbg !188
  %48 = load i32* %xK2, align 4, !dbg !188
  %49 = mul nsw i32 %47, %48, !dbg !188
  store i32 %49, i32* %xK2_3, align 4, !dbg !188
  %50 = load i32* %xK2_3, align 4, !dbg !189
  %51 = load i32* %xK2, align 4, !dbg !189
  %52 = mul nsw i32 %50, %51, !dbg !189
  store i32 %52, i32* %xK2_4, align 4, !dbg !189
  %53 = load i32* %xK2_4, align 4, !dbg !190
  %54 = load i32* %xK2, align 4, !dbg !190
  %55 = mul nsw i32 %53, %54, !dbg !190
  store i32 %55, i32* %xK2_5, align 4, !dbg !190
  %56 = load i32* %xK2, align 4, !dbg !191
  %57 = load i32* %temp2, align 4, !dbg !191
  %58 = mul nsw i32 %56, %57, !dbg !191
  store i32 %58, i32* %xLocal_1, align 4, !dbg !191
  %59 = load i32* %xK2_2, align 4, !dbg !192
  %60 = load i32* %temp3, align 4, !dbg !192
  %61 = mul nsw i32 %59, %60, !dbg !192
  store i32 %61, i32* %xLocal_2, align 4, !dbg !192
  %62 = load i32* %xK2_3, align 4, !dbg !193
  %63 = load i32* %temp4, align 4, !dbg !193
  %64 = mul nsw i32 %62, %63, !dbg !193
  store i32 %64, i32* %xLocal_3, align 4, !dbg !193
  %65 = load i32* %xLocal_2, align 4, !dbg !194
  %66 = load i32* %xLocal_3, align 4, !dbg !194
  %67 = add nsw i32 %65, %66, !dbg !194
  store i32 %67, i32* %xLocal_2, align 4, !dbg !194
  %68 = load i32* %xK2_4, align 4, !dbg !195
  %69 = load i32* %temp5, align 4, !dbg !195
  %70 = mul nsw i32 %68, %69, !dbg !195
  store i32 %70, i32* %xLocal_3, align 4, !dbg !195
  %71 = load i32* %xLocal_2, align 4, !dbg !196
  %72 = load i32* %xLocal_3, align 4, !dbg !196
  %73 = add nsw i32 %71, %72, !dbg !196
  store i32 %73, i32* %xLocal_2, align 4, !dbg !196
  %74 = load i32* %xK2_5, align 4, !dbg !197
  %75 = load i32* %temp6, align 4, !dbg !197
  %76 = mul nsw i32 %74, %75, !dbg !197
  store i32 %76, i32* %xLocal_3, align 4, !dbg !197
  %77 = load i32* %xLocal_2, align 4, !dbg !198
  %78 = load i32* %xLocal_3, align 4, !dbg !198
  %79 = add nsw i32 %77, %78, !dbg !198
  store i32 %79, i32* %xLocal_2, align 4, !dbg !198
  %80 = load i32* %xLocal_2, align 4, !dbg !199
  %81 = load i32* %xLocal_1, align 4, !dbg !199
  %82 = add nsw i32 %80, %81, !dbg !199
  store i32 %82, i32* %xLocal_1, align 4, !dbg !199
  %83 = load i32* %xLocal_1, align 4, !dbg !200
  %84 = load i32* %xNPrimeofX, align 4, !dbg !200
  %85 = mul nsw i32 %83, %84, !dbg !200
  store i32 %85, i32* %xLocal, align 4, !dbg !200
  %86 = load i32* %xLocal, align 4, !dbg !201
  %87 = sub nsw i32 1, %86, !dbg !201
  store i32 %87, i32* %xLocal, align 4, !dbg !201
  %88 = load i32* %xLocal, align 4, !dbg !202
  store i32 %88, i32* %OutputX, align 4, !dbg !202
  %89 = load i32* %sign, align 4, !dbg !203
  %90 = icmp ne i32 %89, 0, !dbg !203
  br i1 %90, label %91, label %94, !dbg !203

; <label>:91                                      ; preds = %8
  %92 = load i32* %OutputX, align 4, !dbg !205
  %93 = sub nsw i32 1, %92, !dbg !205
  store i32 %93, i32* %OutputX, align 4, !dbg !205
  br label %94, !dbg !207

; <label>:94                                      ; preds = %91, %8
  %95 = load i32* %OutputX, align 4, !dbg !208
  ret i32 %95, !dbg !208
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare double @exp(double) #2

declare void @klee_make_symbolic(i8*, i64, i8*) #3

declare void @klee_track_error(i8*, i8*) #3

declare void @klee_assume(i64) #3

; Function Attrs: nounwind uwtable
define i32 @BlkSchlsEqEuroNoDiv(i32 %sptprice, i32 %strike, i32 %rate, i32 %volatility, i32 %time, i32 %otype, i32 %timet) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %OptionPrice = alloca i32, align 4
  %xStockPrice = alloca i32, align 4
  %xStrikePrice = alloca i32, align 4
  %xRiskFreeRate = alloca i32, align 4
  %xVolatility = alloca i32, align 4
  %xTime = alloca i32, align 4
  %xSqrtTime = alloca i32, align 4
  %logValues = alloca i32, align 4
  %xLogTerm = alloca i32, align 4
  %xD1 = alloca i32, align 4
  %xD2 = alloca i32, align 4
  %xPowerTerm = alloca i32, align 4
  %xDen = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %FutureValueX = alloca i32, align 4
  %NofXd1 = alloca i32, align 4
  %NofXd2 = alloca i32, align 4
  %NegNofXd1 = alloca i32, align 4
  %NegNofXd2 = alloca i32, align 4
  store i32 %sptprice, i32* %1, align 4
  store i32 %strike, i32* %2, align 4
  store i32 %rate, i32* %3, align 4
  store i32 %volatility, i32* %4, align 4
  store i32 %time, i32* %5, align 4
  store i32 %otype, i32* %6, align 4
  store i32 %timet, i32* %7, align 4
  %8 = load i32* %1, align 4, !dbg !209
  store i32 %8, i32* %xStockPrice, align 4, !dbg !209
  %9 = load i32* %2, align 4, !dbg !210
  store i32 %9, i32* %xStrikePrice, align 4, !dbg !210
  %10 = load i32* %3, align 4, !dbg !211
  store i32 %10, i32* %xRiskFreeRate, align 4, !dbg !211
  %11 = load i32* %4, align 4, !dbg !212
  store i32 %11, i32* %xVolatility, align 4, !dbg !212
  %12 = load i32* %5, align 4, !dbg !213
  store i32 %12, i32* %xTime, align 4, !dbg !213
  %13 = load i32* %xTime, align 4, !dbg !214
  %14 = sitofp i32 %13 to double, !dbg !214
  %15 = call double @sqrt(double %14) #6, !dbg !214
  %16 = fptosi double %15 to i32, !dbg !214
  store i32 %16, i32* %xSqrtTime, align 4, !dbg !214
  %17 = load i32* %2, align 4, !dbg !215
  %18 = icmp ne i32 %17, 0, !dbg !215
  %19 = zext i1 %18 to i32, !dbg !215
  %20 = sext i32 %19 to i64, !dbg !215
  call void @klee_assume(i64 %20), !dbg !215
  %21 = load i32* %1, align 4, !dbg !216
  %22 = load i32* %2, align 4, !dbg !216
  %int_cast_to_i64 = zext i32 %22 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !216
  %23 = sdiv i32 %21, %22, !dbg !216
  %24 = sitofp i32 %23 to double, !dbg !216
  %25 = call double @log(double %24) #6, !dbg !216
  %26 = fptosi double %25 to i32, !dbg !216
  store i32 %26, i32* %logValues, align 4, !dbg !216
  %27 = load i32* %logValues, align 4, !dbg !217
  store i32 %27, i32* %xLogTerm, align 4, !dbg !217
  %28 = load i32* %xVolatility, align 4, !dbg !218
  %29 = load i32* %xVolatility, align 4, !dbg !218
  %30 = mul nsw i32 %28, %29, !dbg !218
  store i32 %30, i32* %xPowerTerm, align 4, !dbg !218
  %31 = load i32* %xPowerTerm, align 4, !dbg !219
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !219
  %32 = sdiv i32 %31, 2, !dbg !219
  store i32 %32, i32* %xPowerTerm, align 4, !dbg !219
  %33 = load i32* %xRiskFreeRate, align 4, !dbg !220
  %34 = load i32* %xPowerTerm, align 4, !dbg !220
  %35 = add nsw i32 %33, %34, !dbg !220
  store i32 %35, i32* %xD1, align 4, !dbg !220
  %36 = load i32* %xD1, align 4, !dbg !221
  %37 = load i32* %xTime, align 4, !dbg !221
  %38 = mul nsw i32 %36, %37, !dbg !221
  store i32 %38, i32* %xD1, align 4, !dbg !221
  %39 = load i32* %xD1, align 4, !dbg !222
  %40 = load i32* %xLogTerm, align 4, !dbg !222
  %41 = add nsw i32 %39, %40, !dbg !222
  store i32 %41, i32* %xD1, align 4, !dbg !222
  %42 = load i32* %xVolatility, align 4, !dbg !223
  %43 = load i32* %xSqrtTime, align 4, !dbg !223
  %44 = mul nsw i32 %42, %43, !dbg !223
  store i32 %44, i32* %xDen, align 4, !dbg !223
  %45 = load i32* %xDen, align 4, !dbg !224
  %46 = icmp ne i32 %45, 0, !dbg !224
  %47 = zext i1 %46 to i32, !dbg !224
  %48 = sext i32 %47 to i64, !dbg !224
  call void @klee_assume(i64 %48), !dbg !224
  %49 = load i32* %xD1, align 4, !dbg !225
  %50 = load i32* %xDen, align 4, !dbg !225
  %int_cast_to_i642 = zext i32 %50 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !225
  %51 = sdiv i32 %49, %50, !dbg !225
  store i32 %51, i32* %xD1, align 4, !dbg !225
  %52 = load i32* %xD1, align 4, !dbg !226
  %53 = load i32* %xDen, align 4, !dbg !226
  %54 = sub nsw i32 %52, %53, !dbg !226
  store i32 %54, i32* %xD2, align 4, !dbg !226
  %55 = load i32* %xD1, align 4, !dbg !227
  store i32 %55, i32* %d1, align 4, !dbg !227
  %56 = load i32* %xD2, align 4, !dbg !228
  store i32 %56, i32* %d2, align 4, !dbg !228
  %57 = load i32* %d1, align 4, !dbg !229
  %58 = call i32 @CNDF(i32 %57), !dbg !229
  store i32 %58, i32* %NofXd1, align 4, !dbg !229
  %59 = load i32* %d2, align 4, !dbg !230
  %60 = call i32 @CNDF(i32 %59), !dbg !230
  store i32 %60, i32* %NofXd2, align 4, !dbg !230
  %61 = load i32* %3, align 4, !dbg !231
  %62 = sub nsw i32 0, %61, !dbg !231
  %63 = sitofp i32 %62 to double, !dbg !231
  %64 = call double @exp(double %63) #6, !dbg !231
  %65 = fptosi double %64 to i32, !dbg !231
  store i32 %65, i32* %FutureValueX, align 4, !dbg !231
  %66 = load i32* %FutureValueX, align 4, !dbg !232
  %67 = load i32* %2, align 4, !dbg !232
  %68 = mul nsw i32 %66, %67, !dbg !232
  %69 = load i32* %5, align 4, !dbg !232
  %70 = mul nsw i32 %68, %69, !dbg !232
  store i32 %70, i32* %FutureValueX, align 4, !dbg !232
  %71 = load i32* %6, align 4, !dbg !233
  %72 = icmp eq i32 %71, 0, !dbg !233
  br i1 %72, label %73, label %81, !dbg !233

; <label>:73                                      ; preds = %0
  %74 = load i32* %1, align 4, !dbg !235
  %75 = load i32* %NofXd1, align 4, !dbg !235
  %76 = mul nsw i32 %74, %75, !dbg !235
  %77 = load i32* %FutureValueX, align 4, !dbg !235
  %78 = load i32* %NofXd2, align 4, !dbg !235
  %79 = mul nsw i32 %77, %78, !dbg !235
  %80 = sub nsw i32 %76, %79, !dbg !235
  store i32 %80, i32* %OptionPrice, align 4, !dbg !235
  br label %93, !dbg !237

; <label>:81                                      ; preds = %0
  %82 = load i32* %NofXd1, align 4, !dbg !238
  %83 = sub nsw i32 1, %82, !dbg !238
  store i32 %83, i32* %NegNofXd1, align 4, !dbg !238
  %84 = load i32* %NofXd2, align 4, !dbg !240
  %85 = sub nsw i32 1, %84, !dbg !240
  store i32 %85, i32* %NegNofXd2, align 4, !dbg !240
  %86 = load i32* %FutureValueX, align 4, !dbg !241
  %87 = load i32* %NegNofXd2, align 4, !dbg !241
  %88 = mul nsw i32 %86, %87, !dbg !241
  %89 = load i32* %1, align 4, !dbg !241
  %90 = load i32* %NegNofXd1, align 4, !dbg !241
  %91 = mul nsw i32 %89, %90, !dbg !241
  %92 = sub nsw i32 %88, %91, !dbg !241
  store i32 %92, i32* %OptionPrice, align 4, !dbg !241
  br label %93

; <label>:93                                      ; preds = %81, %73
  %94 = load i32* %OptionPrice, align 4, !dbg !242
  ret i32 %94, !dbg !242
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define i32 @bs_thread(i8* %tid_ptr) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %price = alloca i32, align 4
  %priceDelta = alloca i32, align 4
  %tid = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store i8* %tid_ptr, i8** %1, align 8
  %2 = load i8** %1, align 8, !dbg !243
  %3 = bitcast i8* %2 to i32*, !dbg !243
  %4 = load i32* %3, align 4, !dbg !243
  store i32 %4, i32* %tid, align 4, !dbg !243
  %5 = load i32* %tid, align 4, !dbg !244
  %6 = load i32* @numOptions, align 4, !dbg !244
  %7 = load i32* @nThreads, align 4, !dbg !244
  %int_cast_to_i64 = zext i32 %7 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !244
  %8 = sdiv i32 %6, %7, !dbg !244
  %9 = mul nsw i32 %5, %8, !dbg !244
  store i32 %9, i32* %start, align 4, !dbg !244
  %10 = load i32* %start, align 4, !dbg !245
  %11 = load i32* @numOptions, align 4, !dbg !245
  %12 = load i32* @nThreads, align 4, !dbg !245
  %int_cast_to_i641 = zext i32 %12 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !245
  %13 = sdiv i32 %11, %12, !dbg !245
  %14 = add nsw i32 %10, %13, !dbg !245
  store i32 %14, i32* %end, align 4, !dbg !245
  store i32 0, i32* %j, align 4, !dbg !246
  br label %15, !dbg !246

; <label>:15                                      ; preds = %59, %0
  %16 = load i32* %j, align 4, !dbg !246
  %17 = icmp slt i32 %16, 1, !dbg !246
  br i1 %17, label %18, label %62, !dbg !246

; <label>:18                                      ; preds = %15
  %19 = load i32* %start, align 4, !dbg !248
  store i32 %19, i32* %i, align 4, !dbg !248
  br label %20, !dbg !248

; <label>:20                                      ; preds = %24, %18
  %21 = load i32* %i, align 4, !dbg !248
  %22 = load i32* %end, align 4, !dbg !248
  %23 = icmp slt i32 %21, %22, !dbg !248
  br i1 %23, label %24, label %59, !dbg !248

; <label>:24                                      ; preds = %20
  %25 = load i32* %i, align 4, !dbg !251
  %26 = sext i32 %25 to i64, !dbg !251
  %27 = load i32** @sptprice, align 8, !dbg !251
  %28 = getelementptr inbounds i32* %27, i64 %26, !dbg !251
  %29 = load i32* %28, align 4, !dbg !251
  %30 = load i32* %i, align 4, !dbg !251
  %31 = sext i32 %30 to i64, !dbg !251
  %32 = load i32** @strike, align 8, !dbg !251
  %33 = getelementptr inbounds i32* %32, i64 %31, !dbg !251
  %34 = load i32* %33, align 4, !dbg !251
  %35 = load i32* %i, align 4, !dbg !251
  %36 = sext i32 %35 to i64, !dbg !251
  %37 = load i32** @rate, align 8, !dbg !251
  %38 = getelementptr inbounds i32* %37, i64 %36, !dbg !251
  %39 = load i32* %38, align 4, !dbg !251
  %40 = load i32* %i, align 4, !dbg !251
  %41 = sext i32 %40 to i64, !dbg !251
  %42 = load i32** @volatility, align 8, !dbg !251
  %43 = getelementptr inbounds i32* %42, i64 %41, !dbg !251
  %44 = load i32* %43, align 4, !dbg !251
  %45 = load i32* %i, align 4, !dbg !251
  %46 = sext i32 %45 to i64, !dbg !251
  %47 = load i32** @otime, align 8, !dbg !251
  %48 = getelementptr inbounds i32* %47, i64 %46, !dbg !251
  %49 = load i32* %48, align 4, !dbg !251
  %50 = load i32* %i, align 4, !dbg !251
  %51 = sext i32 %50 to i64, !dbg !251
  %52 = load i32** @otype, align 8, !dbg !251
  %53 = getelementptr inbounds i32* %52, i64 %51, !dbg !251
  %54 = load i32* %53, align 4, !dbg !251
  %55 = call i32 @BlkSchlsEqEuroNoDiv(i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 0), !dbg !251
  store i32 %55, i32* %price, align 4, !dbg !251
  %56 = load i32* %price, align 4, !dbg !253
  store i32 %56, i32* @prices, align 4, !dbg !253
  %57 = load i32* %i, align 4, !dbg !248
  %58 = add nsw i32 %57, 1, !dbg !248
  store i32 %58, i32* %i, align 4, !dbg !248
  br label %20, !dbg !248

; <label>:59                                      ; preds = %20
  %60 = load i32* %j, align 4, !dbg !246
  %61 = add nsw i32 %60, 1, !dbg !246
  store i32 %61, i32* %j, align 4, !dbg !246
  br label %15, !dbg !246

; <label>:62                                      ; preds = %15
  ret i32 0, !dbg !254
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %loopnum = alloca i32, align 4
  %buffer = alloca i32*, align 8
  %buffer2 = alloca i32*, align 8
  %rv = alloca i32, align 4
  %tid = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 1, i32* @nThreads, align 4, !dbg !255
  store i32 1, i32* @numOptions, align 4, !dbg !256
  call void @klee_make_symbolic(i8* bitcast (i32* @inv_sqrt_2xPI to i8*), i64 4, i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)), !dbg !257
  call void @klee_make_symbolic(i8* bitcast (i32* @data_s to i8*), i64 4, i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0)), !dbg !258
  call void @klee_make_symbolic(i8* bitcast (i32* @data_strike to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0)), !dbg !259
  call void @klee_make_symbolic(i8* bitcast (i32* @data_r to i8*), i64 4, i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0)), !dbg !260
  call void @klee_make_symbolic(i8* bitcast (i32* @data_divq to i8*), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0)), !dbg !261
  call void @klee_make_symbolic(i8* bitcast (i32* @data_v to i8*), i64 4, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0)), !dbg !262
  call void @klee_make_symbolic(i8* bitcast (i32* @data_t to i8*), i64 4, i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0)), !dbg !263
  call void @klee_make_symbolic(i8* bitcast (i32* @data_divs to i8*), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str19, i32 0, i32 0)), !dbg !264
  call void @klee_make_symbolic(i8* bitcast (i32* @data_DGrefval to i8*), i64 4, i8* getelementptr inbounds ([14 x i8]* @.str20, i32 0, i32 0)), !dbg !265
  store i8 67, i8* @data_OptionType, align 1, !dbg !266
  call void @klee_track_error(i8* bitcast (i32* @inv_sqrt_2xPI to i8*), i8* getelementptr inbounds ([18 x i8]* @.str21, i32 0, i32 0)), !dbg !267
  call void @klee_track_error(i8* bitcast (i32* @data_s to i8*), i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0)), !dbg !268
  call void @klee_track_error(i8* bitcast (i32* @data_strike to i8*), i8* getelementptr inbounds ([16 x i8]* @.str23, i32 0, i32 0)), !dbg !269
  call void @klee_track_error(i8* bitcast (i32* @data_r to i8*), i8* getelementptr inbounds ([11 x i8]* @.str24, i32 0, i32 0)), !dbg !270
  call void @klee_track_error(i8* bitcast (i32* @data_divq to i8*), i8* getelementptr inbounds ([14 x i8]* @.str25, i32 0, i32 0)), !dbg !271
  call void @klee_track_error(i8* bitcast (i32* @data_v to i8*), i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0)), !dbg !272
  call void @klee_track_error(i8* bitcast (i32* @data_t to i8*), i8* getelementptr inbounds ([11 x i8]* @.str27, i32 0, i32 0)), !dbg !273
  call void @klee_track_error(i8* bitcast (i32* @data_divs to i8*), i8* getelementptr inbounds ([14 x i8]* @.str28, i32 0, i32 0)), !dbg !274
  call void @klee_track_error(i8* bitcast (i32* @data_DGrefval to i8*), i8* getelementptr inbounds ([18 x i8]* @.str29, i32 0, i32 0)), !dbg !275
  %4 = load i32* @numOptions, align 4, !dbg !276
  %5 = mul nsw i32 5, %4, !dbg !276
  %6 = sext i32 %5 to i64, !dbg !276
  %7 = mul i64 %6, 4, !dbg !276
  %8 = add i64 %7, 256, !dbg !276
  %9 = call noalias i8* @malloc(i64 %8) #6, !dbg !276
  %10 = bitcast i8* %9 to i32*, !dbg !276
  store i32* %10, i32** %buffer, align 8, !dbg !276
  %11 = load i32** %buffer, align 8, !dbg !277
  %12 = ptrtoint i32* %11 to i64, !dbg !277
  %13 = add i64 %12, 256, !dbg !277
  %14 = and i64 %13, -64, !dbg !277
  %15 = inttoptr i64 %14 to i32*, !dbg !277
  store i32* %15, i32** @sptprice, align 8, !dbg !277
  %16 = load i32** @sptprice, align 8, !dbg !278
  %17 = load i32* @numOptions, align 4, !dbg !278
  %18 = sext i32 %17 to i64, !dbg !278
  %19 = getelementptr inbounds i32* %16, i64 %18, !dbg !278
  store i32* %19, i32** @strike, align 8, !dbg !278
  %20 = load i32** @strike, align 8, !dbg !279
  %21 = load i32* @numOptions, align 4, !dbg !279
  %22 = sext i32 %21 to i64, !dbg !279
  %23 = getelementptr inbounds i32* %20, i64 %22, !dbg !279
  store i32* %23, i32** @rate, align 8, !dbg !279
  %24 = load i32** @rate, align 8, !dbg !280
  %25 = load i32* @numOptions, align 4, !dbg !280
  %26 = sext i32 %25 to i64, !dbg !280
  %27 = getelementptr inbounds i32* %24, i64 %26, !dbg !280
  store i32* %27, i32** @volatility, align 8, !dbg !280
  %28 = load i32** @volatility, align 8, !dbg !281
  %29 = load i32* @numOptions, align 4, !dbg !281
  %30 = sext i32 %29 to i64, !dbg !281
  %31 = getelementptr inbounds i32* %28, i64 %30, !dbg !281
  store i32* %31, i32** @otime, align 8, !dbg !281
  %32 = load i32* @numOptions, align 4, !dbg !282
  %33 = sext i32 %32 to i64, !dbg !282
  %34 = mul i64 %33, 4, !dbg !282
  %35 = add i64 %34, 256, !dbg !282
  %36 = call noalias i8* @malloc(i64 %35) #6, !dbg !282
  %37 = bitcast i8* %36 to i32*, !dbg !282
  store i32* %37, i32** %buffer2, align 8, !dbg !282
  %38 = load i32** %buffer2, align 8, !dbg !283
  %39 = ptrtoint i32* %38 to i64, !dbg !283
  %40 = add i64 %39, 256, !dbg !283
  %41 = and i64 %40, -64, !dbg !283
  %42 = inttoptr i64 %41 to i32*, !dbg !283
  store i32* %42, i32** @otype, align 8, !dbg !283
  store i32 0, i32* %i, align 4, !dbg !284
  br label %43, !dbg !284

; <label>:43                                      ; preds = %47, %0
  %44 = load i32* %i, align 4, !dbg !284
  %45 = load i32* @numOptions, align 4, !dbg !284
  %46 = icmp slt i32 %44, %45, !dbg !284
  br i1 %46, label %47, label %83, !dbg !284

; <label>:47                                      ; preds = %43
  %48 = load i8* @data_OptionType, align 1, !dbg !286
  %49 = sext i8 %48 to i32, !dbg !286
  %50 = icmp eq i32 %49, 80, !dbg !286
  %51 = select i1 %50, i32 1, i32 0, !dbg !286
  %52 = load i32* %i, align 4, !dbg !286
  %53 = sext i32 %52 to i64, !dbg !286
  %54 = load i32** @otype, align 8, !dbg !286
  %55 = getelementptr inbounds i32* %54, i64 %53, !dbg !286
  store i32 %51, i32* %55, align 4, !dbg !286
  %56 = load i32* @data_s, align 4, !dbg !288
  %57 = load i32* %i, align 4, !dbg !288
  %58 = sext i32 %57 to i64, !dbg !288
  %59 = load i32** @sptprice, align 8, !dbg !288
  %60 = getelementptr inbounds i32* %59, i64 %58, !dbg !288
  store i32 %56, i32* %60, align 4, !dbg !288
  %61 = load i32* @data_strike, align 4, !dbg !289
  %62 = load i32* %i, align 4, !dbg !289
  %63 = sext i32 %62 to i64, !dbg !289
  %64 = load i32** @strike, align 8, !dbg !289
  %65 = getelementptr inbounds i32* %64, i64 %63, !dbg !289
  store i32 %61, i32* %65, align 4, !dbg !289
  %66 = load i32* @data_r, align 4, !dbg !290
  %67 = load i32* %i, align 4, !dbg !290
  %68 = sext i32 %67 to i64, !dbg !290
  %69 = load i32** @rate, align 8, !dbg !290
  %70 = getelementptr inbounds i32* %69, i64 %68, !dbg !290
  store i32 %66, i32* %70, align 4, !dbg !290
  %71 = load i32* @data_v, align 4, !dbg !291
  %72 = load i32* %i, align 4, !dbg !291
  %73 = sext i32 %72 to i64, !dbg !291
  %74 = load i32** @volatility, align 8, !dbg !291
  %75 = getelementptr inbounds i32* %74, i64 %73, !dbg !291
  store i32 %71, i32* %75, align 4, !dbg !291
  %76 = load i32* @data_t, align 4, !dbg !292
  %77 = load i32* %i, align 4, !dbg !292
  %78 = sext i32 %77 to i64, !dbg !292
  %79 = load i32** @otime, align 8, !dbg !292
  %80 = getelementptr inbounds i32* %79, i64 %78, !dbg !292
  store i32 %76, i32* %80, align 4, !dbg !292
  %81 = load i32* %i, align 4, !dbg !284
  %82 = add nsw i32 %81, 1, !dbg !284
  store i32 %82, i32* %i, align 4, !dbg !284
  br label %43, !dbg !284

; <label>:83                                      ; preds = %43
  store i32 0, i32* %tid, align 4, !dbg !293
  %84 = bitcast i32* %tid to i8*, !dbg !294
  %85 = call i32 @bs_thread(i8* %84), !dbg !294
  ret i32 0, !dbg !295
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !296
  br i1 %1, label %2, label %3, !dbg !296

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str30, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str131, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str232, i64 0, i64 0)) #7, !dbg !298
  unreachable, !dbg !298

; <label>:3                                       ; preds = %0
  ret void, !dbg !299
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !300
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !300
  %2 = load i32* %x, align 4, !dbg !301, !tbaa !302
  ret i32 %2, !dbg !301
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !306
  br i1 %1, label %3, label %2, !dbg !306

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str333, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1434, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2535, i64 0, i64 0)) #7, !dbg !308
  unreachable, !dbg !308

; <label>:3                                       ; preds = %0
  ret void, !dbg !310
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !311
  br i1 %1, label %3, label %2, !dbg !311

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str636, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1737, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2838, i64 0, i64 0)) #7, !dbg !313
  unreachable, !dbg !313

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !314
  %5 = icmp eq i32 %4, %end, !dbg !314
  br i1 %5, label %21, label %6, !dbg !314

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !316
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !316
  %8 = icmp eq i32 %start, 0, !dbg !318
  %9 = load i32* %x, align 4, !dbg !320, !tbaa !302
  br i1 %8, label %10, label %13, !dbg !318

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !320
  %12 = zext i1 %11 to i64, !dbg !320
  call void @klee_assume(i64 %12) #8, !dbg !320
  br label %19, !dbg !322

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !323
  %15 = zext i1 %14 to i64, !dbg !323
  call void @klee_assume(i64 %15) #8, !dbg !323
  %16 = load i32* %x, align 4, !dbg !325, !tbaa !302
  %17 = icmp slt i32 %16, %end, !dbg !325
  %18 = zext i1 %17 to i64, !dbg !325
  call void @klee_assume(i64 %18) #8, !dbg !325
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !326, !tbaa !302
  br label %21, !dbg !326

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !327
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !328
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !328

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !329
  %wide.load = load <16 x i8>* %3, align 1, !dbg !329
  %next.gep.sum279 = or i64 %index, 16, !dbg !329
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !329
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !329
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !329
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !329
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !329
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !329
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !329
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !329
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !330

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
  %10 = add i64 %.01, -1, !dbg !328
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !329
  %12 = load i8* %src.03, align 1, !dbg !329, !tbaa !333
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !329
  store i8 %12, i8* %dest.02, align 1, !dbg !329, !tbaa !333
  %14 = icmp eq i64 %10, 0, !dbg !328
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !328, !llvm.loop !334

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !335
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !336
  br i1 %1, label %.loopexit, label %2, !dbg !336

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !338
  br i1 %3, label %.preheader, label %18, !dbg !338

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !340
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !340

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !340
  %wide.load = load <16 x i8>* %6, align 1, !dbg !340
  %next.gep.sum586 = or i64 %index, 16, !dbg !340
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !340
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !340
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !340
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !340
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !340
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !340
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !340
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !340
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !342

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
  %13 = add i64 %.02, -1, !dbg !340
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !340
  %15 = load i8* %b.04, align 1, !dbg !340, !tbaa !333
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !340
  store i8 %15, i8* %a.03, align 1, !dbg !340, !tbaa !333
  %17 = icmp eq i64 %13, 0, !dbg !340
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !340, !llvm.loop !343

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !344
  %20 = icmp eq i64 %count, 0, !dbg !346
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !346

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !347
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !344
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !346
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !346
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !346
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !346
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !346
  %.sum505 = add i64 %.sum440, -31, !dbg !346
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !346
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !346
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !346
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !346
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !346
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !346
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !346
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !346
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !346
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !346
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !346
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !346
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !348

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
  %32 = add i64 %.16, -1, !dbg !346
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !346
  %34 = load i8* %b.18, align 1, !dbg !346, !tbaa !333
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !346
  store i8 %34, i8* %a.17, align 1, !dbg !346, !tbaa !333
  %36 = icmp eq i64 %32, 0, !dbg !346
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !346, !llvm.loop !349

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !350
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !351
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !351

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !352
  %wide.load = load <16 x i8>* %3, align 1, !dbg !352
  %next.gep.sum280 = or i64 %index, 16, !dbg !352
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !352
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !352
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !352
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !352
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !352
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !352
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !352
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !352
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !353

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
  %10 = add i64 %.01, -1, !dbg !351
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !352
  %12 = load i8* %src.03, align 1, !dbg !352, !tbaa !333
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !352
  store i8 %12, i8* %dest.02, align 1, !dbg !352, !tbaa !333
  %14 = icmp eq i64 %10, 0, !dbg !351
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !351, !llvm.loop !354

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !351

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !355
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !356
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !356

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !357
  br label %3, !dbg !356

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !356
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !357
  store volatile i8 %2, i8* %a.02, align 1, !dbg !357, !tbaa !333
  %6 = icmp eq i64 %4, 0, !dbg !356
  br i1 %6, label %._crit_edge, label %3, !dbg !356

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !358
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !44, !55, !68, !80, !93, !111, !126, !141}
!llvm.module.flags = !{!157, !158}
!llvm.ident = !{!159, !159, !159, !159, !159, !159, !159, !159, !159}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"blackscholes-symbolic.c", metadata !"/home/himeshi/Projects/workspace/fptuning/blackscholes"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CNDF", metadata !"CNDF", metadata !"", i32 67, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @CNDF, null, null, metadata !2, i32 67} ; [ DW_TAG_subprogra
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BlkSchlsEqEuroNoDiv", metadata !"BlkSchlsEqEuroNoDiv", metadata !"", i32 145, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32, i32, i32)
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bs_thread", metadata !"bs_thread", metadata !"", i32 221, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @bs_thread, null, null, metadata !2, i32 221} ;
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !15}
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 244, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 244} ; [ DW_TAG
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8, metadata !8, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40,
!23 = metadata !{i32 786484, i32 0, null, metadata !"numError", metadata !"numError", metadata !"", metadata !5, i32 56, metadata !8, i32 0, i32 1, i32* @numError, null} ; [ DW_TAG_variable ] [numError] [line 56] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"data_s", metadata !"data_s", metadata !"", metadata !5, i32 37, metadata !8, i32 0, i32 1, i32* @data_s, null} ; [ DW_TAG_variable ] [data_s] [line 37] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"data_strike", metadata !"data_strike", metadata !"", metadata !5, i32 38, metadata !8, i32 0, i32 1, i32* @data_strike, null} ; [ DW_TAG_variable ] [data_strike] [line 38] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"data_r", metadata !"data_r", metadata !"", metadata !5, i32 39, metadata !8, i32 0, i32 1, i32* @data_r, null} ; [ DW_TAG_variable ] [data_r] [line 39] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"data_divq", metadata !"data_divq", metadata !"", metadata !5, i32 40, metadata !8, i32 0, i32 1, i32* @data_divq, null} ; [ DW_TAG_variable ] [data_divq] [line 40] [def]
!28 = metadata !{i32 786484, i32 0, null, metadata !"data_v", metadata !"data_v", metadata !"", metadata !5, i32 41, metadata !8, i32 0, i32 1, i32* @data_v, null} ; [ DW_TAG_variable ] [data_v] [line 41] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"data_t", metadata !"data_t", metadata !"", metadata !5, i32 42, metadata !8, i32 0, i32 1, i32* @data_t, null} ; [ DW_TAG_variable ] [data_t] [line 42] [def]
!30 = metadata !{i32 786484, i32 0, null, metadata !"data_OptionType", metadata !"data_OptionType", metadata !"", metadata !5, i32 43, metadata !21, i32 0, i32 1, i8* @data_OptionType, null} ; [ DW_TAG_variable ] [data_OptionType] [line 43] [def]
!31 = metadata !{i32 786484, i32 0, null, metadata !"data_divs", metadata !"data_divs", metadata !"", metadata !5, i32 44, metadata !8, i32 0, i32 1, i32* @data_divs, null} ; [ DW_TAG_variable ] [data_divs] [line 44] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"data_DGrefval", metadata !"data_DGrefval", metadata !"", metadata !5, i32 45, metadata !8, i32 0, i32 1, i32* @data_DGrefval, null} ; [ DW_TAG_variable ] [data_DGrefval] [line 45] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"prices", metadata !"prices", metadata !"", metadata !5, i32 47, metadata !8, i32 0, i32 1, i32* @prices, null} ; [ DW_TAG_variable ] [prices] [line 47] [def]
!34 = metadata !{i32 786484, i32 0, null, metadata !"numOptions", metadata !"numOptions", metadata !"", metadata !5, i32 48, metadata !8, i32 0, i32 1, i32* @numOptions, null} ; [ DW_TAG_variable ] [numOptions] [line 48] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"otype", metadata !"otype", metadata !"", metadata !5, i32 50, metadata !36, i32 0, i32 1, i32** @otype, null} ; [ DW_TAG_variable ] [otype] [line 50] [def]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!37 = metadata !{i32 786484, i32 0, null, metadata !"sptprice", metadata !"sptprice", metadata !"", metadata !5, i32 51, metadata !36, i32 0, i32 1, i32** @sptprice, null} ; [ DW_TAG_variable ] [sptprice] [line 51] [def]
!38 = metadata !{i32 786484, i32 0, null, metadata !"strike", metadata !"strike", metadata !"", metadata !5, i32 52, metadata !36, i32 0, i32 1, i32** @strike, null} ; [ DW_TAG_variable ] [strike] [line 52] [def]
!39 = metadata !{i32 786484, i32 0, null, metadata !"rate", metadata !"rate", metadata !"", metadata !5, i32 53, metadata !36, i32 0, i32 1, i32** @rate, null} ; [ DW_TAG_variable ] [rate] [line 53] [def]
!40 = metadata !{i32 786484, i32 0, null, metadata !"volatility", metadata !"volatility", metadata !"", metadata !5, i32 54, metadata !36, i32 0, i32 1, i32** @volatility, null} ; [ DW_TAG_variable ] [volatility] [line 54] [def]
!41 = metadata !{i32 786484, i32 0, null, metadata !"otime", metadata !"otime", metadata !"", metadata !5, i32 55, metadata !36, i32 0, i32 1, i32** @otime, null} ; [ DW_TAG_variable ] [otime] [line 55] [def]
!42 = metadata !{i32 786484, i32 0, null, metadata !"nThreads", metadata !"nThreads", metadata !"", metadata !5, i32 57, metadata !8, i32 0, i32 1, i32* @nThreads, null} ; [ DW_TAG_variable ] [nThreads] [line 57] [def]
!43 = metadata !{i32 786484, i32 0, null, metadata !"inv_sqrt_2xPI", metadata !"inv_sqrt_2xPI", metadata !"", metadata !5, i32 65, metadata !8, i32 0, i32 1, i32* @inv_sqrt_2xPI, null} ; [ DW_TAG_variable ] [inv_sqrt_2xPI] [line 65] [def]
!44 = metadata !{i32 786449, metadata !45, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !46, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!45 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786478, metadata !48, metadata !49, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!48 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!49 = metadata !{i32 786473, metadata !48}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !52}
!52 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786689, metadata !47, metadata !"z", metadata !49, i32 16777228, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!55 = metadata !{i32 786449, metadata !56, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !57, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!56 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786478, metadata !59, metadata !60, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !65, i32 13} ; [ 
!59 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!60 = metadata !{i32 786473, metadata !59}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_int.c]
!61 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{metadata !8, metadata !63}
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786689, metadata !58, metadata !"name", metadata !60, i32 16777229, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!67 = metadata !{i32 786688, metadata !58, metadata !"x", metadata !60, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!68 = metadata !{i32 786449, metadata !69, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !70, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!69 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786478, metadata !72, metadata !73, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!72 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!73 = metadata !{i32 786473, metadata !72}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!74 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{null, metadata !76, metadata !76}
!76 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{metadata !78, metadata !79}
!78 = metadata !{i32 786689, metadata !71, metadata !"bitWidth", metadata !73, i32 16777236, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!79 = metadata !{i32 786689, metadata !71, metadata !"shift", metadata !73, i32 33554452, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!80 = metadata !{i32 786449, metadata !81, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !82, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!81 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!84 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!85 = metadata !{i32 786473, metadata !84}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !8, metadata !8, metadata !8, metadata !63}
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92}
!89 = metadata !{i32 786689, metadata !83, metadata !"start", metadata !85, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!90 = metadata !{i32 786689, metadata !83, metadata !"end", metadata !85, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!91 = metadata !{i32 786689, metadata !83, metadata !"name", metadata !85, i32 50331661, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!92 = metadata !{i32 786688, metadata !83, metadata !"x", metadata !85, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!93 = metadata !{i32 786449, metadata !94, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !95, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!94 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786478, metadata !97, metadata !98, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !105, i32 12}
!97 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!98 = metadata !{i32 786473, metadata !97}        ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memcpy.c]
!99 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !15, metadata !15, metadata !101, metadata !103}
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!102 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{i32 786454, metadata !97, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!104 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110}
!106 = metadata !{i32 786689, metadata !96, metadata !"destaddr", metadata !98, i32 16777228, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!107 = metadata !{i32 786689, metadata !96, metadata !"srcaddr", metadata !98, i32 33554444, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!108 = metadata !{i32 786689, metadata !96, metadata !"len", metadata !98, i32 50331660, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!109 = metadata !{i32 786688, metadata !96, metadata !"dest", metadata !98, i32 13, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!110 = metadata !{i32 786688, metadata !96, metadata !"src", metadata !98, i32 14, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!111 = metadata !{i32 786449, metadata !112, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !113, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!112 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786478, metadata !115, metadata !116, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !120, 
!115 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!116 = metadata !{i32 786473, metadata !115}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!117 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{metadata !15, metadata !15, metadata !101, metadata !119}
!119 = metadata !{i32 786454, metadata !115, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!121 = metadata !{i32 786689, metadata !114, metadata !"dst", metadata !116, i32 16777228, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!122 = metadata !{i32 786689, metadata !114, metadata !"src", metadata !116, i32 33554444, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!123 = metadata !{i32 786689, metadata !114, metadata !"count", metadata !116, i32 50331660, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!124 = metadata !{i32 786688, metadata !114, metadata !"a", metadata !116, i32 13, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!125 = metadata !{i32 786688, metadata !114, metadata !"b", metadata !116, i32 14, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!126 = metadata !{i32 786449, metadata !127, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !128, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!127 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786478, metadata !130, metadata !131, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !135, 
!130 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!131 = metadata !{i32 786473, metadata !130}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/mempcpy.c]
!132 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !15, metadata !15, metadata !101, metadata !134}
!134 = metadata !{i32 786454, metadata !130, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!136 = metadata !{i32 786689, metadata !129, metadata !"destaddr", metadata !131, i32 16777227, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!137 = metadata !{i32 786689, metadata !129, metadata !"srcaddr", metadata !131, i32 33554443, metadata !101, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!138 = metadata !{i32 786689, metadata !129, metadata !"len", metadata !131, i32 50331659, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!139 = metadata !{i32 786688, metadata !129, metadata !"dest", metadata !131, i32 12, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!140 = metadata !{i32 786688, metadata !129, metadata !"src", metadata !131, i32 13, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!141 = metadata !{i32 786449, metadata !142, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !143, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/him
!142 = metadata !{metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786478, metadata !145, metadata !146, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !150, i32
!145 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic"}
!146 = metadata !{i32 786473, metadata !145}      ; [ DW_TAG_file_type ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memset.c]
!147 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{metadata !15, metadata !15, metadata !8, metadata !149}
!149 = metadata !{i32 786454, metadata !145, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154}
!151 = metadata !{i32 786689, metadata !144, metadata !"dst", metadata !146, i32 16777227, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!152 = metadata !{i32 786689, metadata !144, metadata !"s", metadata !146, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!153 = metadata !{i32 786689, metadata !144, metadata !"count", metadata !146, i32 50331659, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!154 = metadata !{i32 786688, metadata !144, metadata !"a", metadata !146, i32 12, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!155 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!156 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!157 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!158 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!159 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!160 = metadata !{i32 81, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !4, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!162 = metadata !{i32 82, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !161, i32 81, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!164 = metadata !{i32 83, i32 0, metadata !163, null}
!165 = metadata !{i32 84, i32 0, metadata !163, null}
!166 = metadata !{i32 85, i32 0, metadata !161, null}
!167 = metadata !{i32 87, i32 0, metadata !4, null}
!168 = metadata !{i32 90, i32 0, metadata !4, null}
!169 = metadata !{i32 91, i32 0, metadata !4, null}
!170 = metadata !{i32 92, i32 0, metadata !4, null}
!171 = metadata !{i32 96, i32 0, metadata !4, null}
!172 = metadata !{i32 97, i32 0, metadata !4, null}
!173 = metadata !{i32 98, i32 0, metadata !4, null}
!174 = metadata !{i32 99, i32 0, metadata !4, null}
!175 = metadata !{i32 100, i32 0, metadata !4, null}
!176 = metadata !{i32 101, i32 0, metadata !4, null}
!177 = metadata !{i32 103, i32 0, metadata !4, null}
!178 = metadata !{i32 104, i32 0, metadata !4, null}
!179 = metadata !{i32 105, i32 0, metadata !4, null}
!180 = metadata !{i32 106, i32 0, metadata !4, null}
!181 = metadata !{i32 107, i32 0, metadata !4, null}
!182 = metadata !{i32 108, i32 0, metadata !4, null}
!183 = metadata !{i32 110, i32 0, metadata !4, null}
!184 = metadata !{i32 111, i32 0, metadata !4, null}
!185 = metadata !{i32 112, i32 0, metadata !4, null}
!186 = metadata !{i32 113, i32 0, metadata !4, null}
!187 = metadata !{i32 114, i32 0, metadata !4, null}
!188 = metadata !{i32 115, i32 0, metadata !4, null}
!189 = metadata !{i32 116, i32 0, metadata !4, null}
!190 = metadata !{i32 117, i32 0, metadata !4, null}
!191 = metadata !{i32 119, i32 0, metadata !4, null}
!192 = metadata !{i32 120, i32 0, metadata !4, null}
!193 = metadata !{i32 121, i32 0, metadata !4, null}
!194 = metadata !{i32 122, i32 0, metadata !4, null}
!195 = metadata !{i32 123, i32 0, metadata !4, null}
!196 = metadata !{i32 124, i32 0, metadata !4, null}
!197 = metadata !{i32 125, i32 0, metadata !4, null}
!198 = metadata !{i32 126, i32 0, metadata !4, null}
!199 = metadata !{i32 128, i32 0, metadata !4, null}
!200 = metadata !{i32 129, i32 0, metadata !4, null}
!201 = metadata !{i32 130, i32 0, metadata !4, null}
!202 = metadata !{i32 132, i32 0, metadata !4, null}
!203 = metadata !{i32 134, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !4, i32 134, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!205 = metadata !{i32 135, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !204, i32 134, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!207 = metadata !{i32 136, i32 0, metadata !206, null}
!208 = metadata !{i32 138, i32 0, metadata !4, null}
!209 = metadata !{i32 172, i32 0, metadata !9, null}
!210 = metadata !{i32 173, i32 0, metadata !9, null}
!211 = metadata !{i32 174, i32 0, metadata !9, null}
!212 = metadata !{i32 175, i32 0, metadata !9, null}
!213 = metadata !{i32 177, i32 0, metadata !9, null}
!214 = metadata !{i32 178, i32 0, metadata !9, null}
!215 = metadata !{i32 180, i32 0, metadata !9, null}
!216 = metadata !{i32 181, i32 0, metadata !9, null}
!217 = metadata !{i32 183, i32 0, metadata !9, null}
!218 = metadata !{i32 185, i32 0, metadata !9, null}
!219 = metadata !{i32 186, i32 0, metadata !9, null}
!220 = metadata !{i32 188, i32 0, metadata !9, null}
!221 = metadata !{i32 189, i32 0, metadata !9, null}
!222 = metadata !{i32 190, i32 0, metadata !9, null}
!223 = metadata !{i32 192, i32 0, metadata !9, null}
!224 = metadata !{i32 193, i32 0, metadata !9, null}
!225 = metadata !{i32 194, i32 0, metadata !9, null}
!226 = metadata !{i32 195, i32 0, metadata !9, null}
!227 = metadata !{i32 197, i32 0, metadata !9, null}
!228 = metadata !{i32 198, i32 0, metadata !9, null}
!229 = metadata !{i32 200, i32 0, metadata !9, null}
!230 = metadata !{i32 201, i32 0, metadata !9, null}
!231 = metadata !{i32 203, i32 0, metadata !9, null}
!232 = metadata !{i32 204, i32 0, metadata !9, null}
!233 = metadata !{i32 205, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !9, i32 205, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!235 = metadata !{i32 206, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !234, i32 205, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!237 = metadata !{i32 207, i32 0, metadata !236, null}
!238 = metadata !{i32 208, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !234, i32 207, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!240 = metadata !{i32 209, i32 0, metadata !239, null}
!241 = metadata !{i32 210, i32 0, metadata !239, null}
!242 = metadata !{i32 213, i32 0, metadata !9, null}
!243 = metadata !{i32 225, i32 0, metadata !12, null}
!244 = metadata !{i32 226, i32 0, metadata !12, null}
!245 = metadata !{i32 227, i32 0, metadata !12, null}
!246 = metadata !{i32 229, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !12, i32 229, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!248 = metadata !{i32 230, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !250, i32 230, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!250 = metadata !{i32 786443, metadata !1, metadata !247, i32 229, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!251 = metadata !{i32 235, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !249, i32 230, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!253 = metadata !{i32 237, i32 0, metadata !252, null}
!254 = metadata !{i32 241, i32 0, metadata !12, null}
!255 = metadata !{i32 252, i32 0, metadata !16, null}
!256 = metadata !{i32 253, i32 0, metadata !16, null}
!257 = metadata !{i32 255, i32 0, metadata !16, null}
!258 = metadata !{i32 256, i32 0, metadata !16, null}
!259 = metadata !{i32 257, i32 0, metadata !16, null}
!260 = metadata !{i32 258, i32 0, metadata !16, null}
!261 = metadata !{i32 259, i32 0, metadata !16, null}
!262 = metadata !{i32 260, i32 0, metadata !16, null}
!263 = metadata !{i32 261, i32 0, metadata !16, null}
!264 = metadata !{i32 262, i32 0, metadata !16, null}
!265 = metadata !{i32 263, i32 0, metadata !16, null}
!266 = metadata !{i32 264, i32 0, metadata !16, null}
!267 = metadata !{i32 266, i32 0, metadata !16, null}
!268 = metadata !{i32 267, i32 0, metadata !16, null}
!269 = metadata !{i32 268, i32 0, metadata !16, null}
!270 = metadata !{i32 269, i32 0, metadata !16, null}
!271 = metadata !{i32 270, i32 0, metadata !16, null}
!272 = metadata !{i32 271, i32 0, metadata !16, null}
!273 = metadata !{i32 272, i32 0, metadata !16, null}
!274 = metadata !{i32 273, i32 0, metadata !16, null}
!275 = metadata !{i32 274, i32 0, metadata !16, null}
!276 = metadata !{i32 279, i32 0, metadata !16, null}
!277 = metadata !{i32 280, i32 0, metadata !16, null}
!278 = metadata !{i32 282, i32 0, metadata !16, null}
!279 = metadata !{i32 283, i32 0, metadata !16, null}
!280 = metadata !{i32 284, i32 0, metadata !16, null}
!281 = metadata !{i32 285, i32 0, metadata !16, null}
!282 = metadata !{i32 287, i32 0, metadata !16, null}
!283 = metadata !{i32 288, i32 0, metadata !16, null}
!284 = metadata !{i32 290, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !16, i32 290, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!286 = metadata !{i32 291, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !285, i32 290, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/fptuning/blackscholes/blackscholes-symbolic.c]
!288 = metadata !{i32 292, i32 0, metadata !287, null}
!289 = metadata !{i32 293, i32 0, metadata !287, null}
!290 = metadata !{i32 294, i32 0, metadata !287, null}
!291 = metadata !{i32 295, i32 0, metadata !287, null}
!292 = metadata !{i32 296, i32 0, metadata !287, null}
!293 = metadata !{i32 300, i32 0, metadata !16, null}
!294 = metadata !{i32 301, i32 0, metadata !16, null}
!295 = metadata !{i32 303, i32 0, metadata !16, null}
!296 = metadata !{i32 13, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !48, metadata !47, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!298 = metadata !{i32 14, i32 0, metadata !297, null}
!299 = metadata !{i32 15, i32 0, metadata !47, null}
!300 = metadata !{i32 15, i32 0, metadata !58, null}
!301 = metadata !{i32 16, i32 0, metadata !58, null}
!302 = metadata !{metadata !303, metadata !303, i64 0}
!303 = metadata !{metadata !"int", metadata !304, i64 0}
!304 = metadata !{metadata !"omnipotent char", metadata !305, i64 0}
!305 = metadata !{metadata !"Simple C/C++ TBAA"}
!306 = metadata !{i32 21, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !72, metadata !71, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!308 = metadata !{i32 27, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !72, metadata !307, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!310 = metadata !{i32 29, i32 0, metadata !71, null}
!311 = metadata !{i32 16, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !84, metadata !83, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!313 = metadata !{i32 17, i32 0, metadata !312, null}
!314 = metadata !{i32 19, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !84, metadata !83, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!316 = metadata !{i32 22, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !84, metadata !315, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!318 = metadata !{i32 25, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !84, metadata !317, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!320 = metadata !{i32 26, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !84, metadata !319, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!322 = metadata !{i32 27, i32 0, metadata !321, null}
!323 = metadata !{i32 28, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !84, metadata !319, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/klee_range.c]
!325 = metadata !{i32 29, i32 0, metadata !324, null}
!326 = metadata !{i32 32, i32 0, metadata !317, null}
!327 = metadata !{i32 34, i32 0, metadata !83, null}
!328 = metadata !{i32 16, i32 0, metadata !96, null}
!329 = metadata !{i32 17, i32 0, metadata !96, null}
!330 = metadata !{metadata !330, metadata !331, metadata !332}
!331 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!332 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!333 = metadata !{metadata !304, metadata !304, i64 0}
!334 = metadata !{metadata !334, metadata !331, metadata !332}
!335 = metadata !{i32 18, i32 0, metadata !96, null}
!336 = metadata !{i32 16, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !115, metadata !114, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!338 = metadata !{i32 19, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !115, metadata !114, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!340 = metadata !{i32 20, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !115, metadata !339, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!342 = metadata !{metadata !342, metadata !331, metadata !332}
!343 = metadata !{metadata !343, metadata !331, metadata !332}
!344 = metadata !{i32 22, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !115, metadata !339, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/Approx/klee/klee/runtime/Intrinsic/memmove.c]
!346 = metadata !{i32 24, i32 0, metadata !345, null}
!347 = metadata !{i32 23, i32 0, metadata !345, null}
!348 = metadata !{metadata !348, metadata !331, metadata !332}
!349 = metadata !{metadata !349, metadata !331, metadata !332}
!350 = metadata !{i32 28, i32 0, metadata !114, null}
!351 = metadata !{i32 15, i32 0, metadata !129, null}
!352 = metadata !{i32 16, i32 0, metadata !129, null}
!353 = metadata !{metadata !353, metadata !331, metadata !332}
!354 = metadata !{metadata !354, metadata !331, metadata !332}
!355 = metadata !{i32 17, i32 0, metadata !129, null}
!356 = metadata !{i32 13, i32 0, metadata !144, null}
!357 = metadata !{i32 14, i32 0, metadata !144, null}
!358 = metadata !{i32 15, i32 0, metadata !144, null}
