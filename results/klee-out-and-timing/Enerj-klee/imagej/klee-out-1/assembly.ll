; ModuleID = 'imagej-symbolic.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@targetColor = common global i32 0, align 4
@stackSize = common global i32 0, align 4
@maxStackSize = common global i32 0, align 4
@xstack = common global i32* null, align 8
@ystack = common global i32* null, align 8
@pixels = common global [32 x [32 x i32]] zeroinitializer, align 16
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
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 2, i32* @targetColor, align 4, !dbg !152
  store i32 0, i32* @stackSize, align 4, !dbg !153
  store i32 500, i32* @maxStackSize, align 4, !dbg !154
  %0 = load i32* @maxStackSize, align 4, !dbg !155
  %conv = sext i32 %0 to i64, !dbg !155
  %mul = mul i64 4, %conv, !dbg !155
  %call = call noalias i8* @malloc(i64 %mul) #4, !dbg !155
  %1 = bitcast i8* %call to i32*, !dbg !155
  store i32* %1, i32** @xstack, align 8, !dbg !155
  %2 = load i32* @maxStackSize, align 4, !dbg !156
  %conv1 = sext i32 %2 to i64, !dbg !156
  %mul2 = mul i64 4, %conv1, !dbg !156
  %call3 = call noalias i8* @malloc(i64 %mul2) #4, !dbg !156
  %3 = bitcast i8* %call3 to i32*, !dbg !156
  store i32* %3, i32** @ystack, align 8, !dbg !156
  call void @klee_make_symbolic(i8* bitcast ([32 x [32 x i32]]* @pixels to i8*), i64 4096, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)), !dbg !157
  call void @klee_make_symbolic(i8* bitcast (i32* @targetColor to i8*), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !158
  %4 = load i32** @xstack, align 8, !dbg !159
  %5 = bitcast i32* %4 to i8*, !dbg !159
  call void @klee_make_symbolic(i8* %5, i64 2000, i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0)), !dbg !159
  %6 = load i32** @ystack, align 8, !dbg !160
  %7 = bitcast i32* %6 to i8*, !dbg !160
  call void @klee_make_symbolic(i8* %7, i64 2000, i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0)), !dbg !160
  %8 = load i32* getelementptr inbounds ([32 x [32 x i32]]* @pixels, i32 0, i64 0, i64 0), align 4, !dbg !161
  %cmp = icmp sge i32 %8, 0, !dbg !161
  %conv4 = zext i1 %cmp to i32, !dbg !161
  %conv5 = sext i32 %conv4 to i64, !dbg !161
  call void @klee_assume(i64 %conv5), !dbg !161
  %9 = load i32* getelementptr inbounds ([32 x [32 x i32]]* @pixels, i32 0, i64 0, i64 1), align 4, !dbg !162
  %cmp6 = icmp sge i32 %9, 0, !dbg !162
  %conv7 = zext i1 %cmp6 to i32, !dbg !162
  %conv8 = sext i32 %conv7 to i64, !dbg !162
  call void @klee_assume(i64 %conv8), !dbg !162
  %10 = load i32* getelementptr inbounds ([32 x [32 x i32]]* @pixels, i32 0, i64 1, i64 0), align 4, !dbg !163
  %cmp9 = icmp sge i32 %10, 0, !dbg !163
  %conv10 = zext i1 %cmp9 to i32, !dbg !163
  %conv11 = sext i32 %conv10 to i64, !dbg !163
  call void @klee_assume(i64 %conv11), !dbg !163
  %11 = load i32* getelementptr inbounds ([32 x [32 x i32]]* @pixels, i32 0, i64 1, i64 1), align 4, !dbg !164
  %cmp12 = icmp sge i32 %11, 0, !dbg !164
  %conv13 = zext i1 %cmp12 to i32, !dbg !164
  %conv14 = sext i32 %conv13 to i64, !dbg !164
  call void @klee_assume(i64 %conv14), !dbg !164
  %12 = load i32* getelementptr inbounds ([32 x [32 x i32]]* @pixels, i32 0, i64 2, i64 0), align 4, !dbg !165
  %cmp15 = icmp sge i32 %12, 0, !dbg !165
  %conv16 = zext i1 %cmp15 to i32, !dbg !165
  %conv17 = sext i32 %conv16 to i64, !dbg !165
  call void @klee_assume(i64 %conv17), !dbg !165
  %13 = load i32* getelementptr inbounds ([32 x [32 x i32]]* @pixels, i32 0, i64 2, i64 1), align 4, !dbg !166
  %cmp18 = icmp sge i32 %13, 0, !dbg !166
  %conv19 = zext i1 %cmp18 to i32, !dbg !166
  %conv20 = sext i32 %conv19 to i64, !dbg !166
  call void @klee_assume(i64 %conv20), !dbg !166
  call void @klee_track_error(i8* bitcast ([32 x [32 x i32]]* @pixels to i8*), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0)), !dbg !167
  %14 = load i32** @xstack, align 8, !dbg !168
  %15 = bitcast i32* %14 to i8*, !dbg !168
  call void @klee_track_error(i8* %15, i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0)), !dbg !168
  %16 = load i32** @ystack, align 8, !dbg !169
  %17 = bitcast i32* %16 to i8*, !dbg !169
  call void @klee_track_error(i8* %17, i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0)), !dbg !169
  call void @klee_track_error(i8* bitcast (i32* @targetColor to i8*), i8* getelementptr inbounds ([16 x i8]* @.str7, i32 0, i32 0)), !dbg !170
  %call21 = call i32 @fill(i32 0, i32 0), !dbg !171
  ret i32 0, !dbg !172
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
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %color = alloca i32, align 4
  %newColor = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %inScanLine = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 32, i32* %width, align 4, !dbg !173
  store i32 32, i32* %height, align 4, !dbg !174
  %0 = load i32* %x.addr, align 4, !dbg !175
  %1 = load i32* %y.addr, align 4, !dbg !175
  %call = call i32 @getPix(i32 %0, i32 %1), !dbg !175
  store i32 %call, i32* %color, align 4, !dbg !175
  %2 = load i32* %x.addr, align 4, !dbg !176
  %3 = load i32* %x.addr, align 4, !dbg !176
  %4 = load i32* %y.addr, align 4, !dbg !176
  call void @fillLine(i32 %2, i32 %3, i32 %4), !dbg !176
  %5 = load i32* %x.addr, align 4, !dbg !177
  %6 = load i32* %y.addr, align 4, !dbg !177
  %call1 = call i32 @getPix(i32 %5, i32 %6), !dbg !177
  store i32 %call1, i32* %newColor, align 4, !dbg !177
  %7 = load i32* %x.addr, align 4, !dbg !178
  %8 = load i32* %y.addr, align 4, !dbg !178
  %9 = load i32* %color, align 4, !dbg !178
  call void @setPix(i32 %7, i32 %8, i32 %9), !dbg !178
  %10 = load i32* %color, align 4, !dbg !179
  %11 = load i32* %newColor, align 4, !dbg !179
  %cmp = icmp eq i32 %10, %11, !dbg !179
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !181
  br label %return, !dbg !181

if.end:                                           ; preds = %entry
  store i32 0, i32* @stackSize, align 4, !dbg !182
  %12 = load i32* %x.addr, align 4, !dbg !183
  %13 = load i32* %y.addr, align 4, !dbg !183
  call void @push(i32 %12, i32 %13), !dbg !183
  br label %while.body, !dbg !184

while.body:                                       ; preds = %for.cond44, %if.end5, %if.end
  %call2 = call i32 @popx(), !dbg !185
  store i32 %call2, i32* %x.addr, align 4, !dbg !185
  %14 = load i32* %x.addr, align 4, !dbg !187
  %cmp3 = icmp eq i32 %14, -1, !dbg !187
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !187

if.then4:                                         ; preds = %while.body
  store i32 1, i32* %retval, !dbg !189
  br label %return, !dbg !189

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @popy(), !dbg !190
  store i32 %call6, i32* %y.addr, align 4, !dbg !190
  %15 = load i32* %x.addr, align 4, !dbg !191
  %16 = load i32* %y.addr, align 4, !dbg !191
  %call7 = call i32 @getPix(i32 %15, i32 %16), !dbg !191
  %17 = load i32* %color, align 4, !dbg !191
  %cmp8 = icmp ne i32 %call7, %17, !dbg !191
  br i1 %cmp8, label %while.body, label %if.end10, !dbg !191

if.end10:                                         ; preds = %if.end5
  %18 = load i32* %x.addr, align 4, !dbg !193
  store i32 %18, i32* %x1, align 4, !dbg !193
  %19 = load i32* %x.addr, align 4, !dbg !194
  store i32 %19, i32* %x2, align 4, !dbg !194
  br label %while.cond11, !dbg !195

while.cond11:                                     ; preds = %while.body15, %if.end10
  %20 = load i32* %x1, align 4, !dbg !195
  %21 = load i32* %y.addr, align 4, !dbg !195
  %call12 = call i32 @getPix(i32 %20, i32 %21), !dbg !195
  %22 = load i32* %color, align 4, !dbg !195
  %cmp13 = icmp eq i32 %call12, %22, !dbg !195
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !195

land.rhs:                                         ; preds = %while.cond11
  %23 = load i32* %x1, align 4, !dbg !195
  %cmp14 = icmp sge i32 %23, 0, !dbg !195
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond11
  %24 = phi i1 [ false, %while.cond11 ], [ %cmp14, %land.rhs ]
  %25 = load i32* %x1, align 4, !dbg !196
  br i1 %24, label %while.body15, label %while.end

while.body15:                                     ; preds = %land.end
  %dec = add nsw i32 %25, -1, !dbg !196
  store i32 %dec, i32* %x1, align 4, !dbg !196
  br label %while.cond11, !dbg !196

while.end:                                        ; preds = %land.end
  %inc = add nsw i32 %25, 1, !dbg !197
  store i32 %inc, i32* %x1, align 4, !dbg !197
  br label %while.cond16, !dbg !198

while.cond16:                                     ; preds = %while.body22, %while.end
  %26 = load i32* %x2, align 4, !dbg !198
  %27 = load i32* %y.addr, align 4, !dbg !198
  %call17 = call i32 @getPix(i32 %26, i32 %27), !dbg !198
  %28 = load i32* %color, align 4, !dbg !198
  %cmp18 = icmp eq i32 %call17, %28, !dbg !198
  br i1 %cmp18, label %land.rhs19, label %land.end21, !dbg !198

land.rhs19:                                       ; preds = %while.cond16
  %29 = load i32* %x2, align 4, !dbg !198
  %30 = load i32* %width, align 4, !dbg !198
  %cmp20 = icmp slt i32 %29, %30, !dbg !198
  br label %land.end21

land.end21:                                       ; preds = %land.rhs19, %while.cond16
  %31 = phi i1 [ false, %while.cond16 ], [ %cmp20, %land.rhs19 ]
  %32 = load i32* %x2, align 4, !dbg !199
  br i1 %31, label %while.body22, label %while.end24

while.body22:                                     ; preds = %land.end21
  %inc23 = add nsw i32 %32, 1, !dbg !199
  store i32 %inc23, i32* %x2, align 4, !dbg !199
  br label %while.cond16, !dbg !199

while.end24:                                      ; preds = %land.end21
  %dec25 = add nsw i32 %32, -1, !dbg !200
  store i32 %dec25, i32* %x2, align 4, !dbg !200
  %33 = load i32* %x1, align 4, !dbg !201
  %34 = load i32* %x2, align 4, !dbg !201
  %35 = load i32* %y.addr, align 4, !dbg !201
  call void @fillLine(i32 %33, i32 %34, i32 %35), !dbg !201
  store i32 0, i32* %inScanLine, align 4, !dbg !202
  %36 = load i32* %x1, align 4, !dbg !203
  store i32 %36, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %while.end24
  %37 = load i32* %i, align 4, !dbg !203
  %38 = load i32* %x2, align 4, !dbg !203
  %cmp26 = icmp sle i32 %37, %38, !dbg !203
  br i1 %cmp26, label %for.body, label %for.end, !dbg !203

for.body:                                         ; preds = %for.cond
  %39 = load i32* %inScanLine, align 4, !dbg !205
  %tobool = icmp eq i32 %39, 0, !dbg !205
  %40 = load i32* %y.addr, align 4, !dbg !205
  %cmp27 = icmp sgt i32 %40, 0, !dbg !205
  %or.cond = and i1 %tobool, %cmp27, !dbg !205
  br i1 %or.cond, label %land.lhs.true28, label %if.else, !dbg !205

land.lhs.true28:                                  ; preds = %for.body
  %41 = load i32* %i, align 4, !dbg !205
  %42 = load i32* %y.addr, align 4, !dbg !205
  %sub = sub nsw i32 %42, 1, !dbg !205
  %call29 = call i32 @getPix(i32 %41, i32 %sub), !dbg !205
  %43 = load i32* %color, align 4, !dbg !205
  %cmp30 = icmp eq i32 %call29, %43, !dbg !205
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !205

if.then31:                                        ; preds = %land.lhs.true28
  %44 = load i32* %i, align 4, !dbg !208
  %45 = load i32* %y.addr, align 4, !dbg !208
  %sub32 = sub nsw i32 %45, 1, !dbg !208
  call void @push(i32 %44, i32 %sub32), !dbg !208
  store i32 1, i32* %inScanLine, align 4, !dbg !210
  br label %for.inc, !dbg !211

if.else:                                          ; preds = %for.body, %land.lhs.true28
  %46 = load i32* %inScanLine, align 4, !dbg !212
  %tobool33 = icmp ne i32 %46, 0, !dbg !212
  %47 = load i32* %y.addr, align 4, !dbg !212
  %cmp35 = icmp sgt i32 %47, 0, !dbg !212
  %or.cond1 = and i1 %tobool33, %cmp35, !dbg !212
  br i1 %or.cond1, label %land.lhs.true36, label %for.inc, !dbg !212

land.lhs.true36:                                  ; preds = %if.else
  %48 = load i32* %i, align 4, !dbg !212
  %49 = load i32* %y.addr, align 4, !dbg !212
  %sub37 = sub nsw i32 %49, 1, !dbg !212
  %call38 = call i32 @getPix(i32 %48, i32 %sub37), !dbg !212
  %50 = load i32* %color, align 4, !dbg !212
  %cmp39 = icmp ne i32 %call38, %50, !dbg !212
  br i1 %cmp39, label %if.then40, label %for.inc, !dbg !212

if.then40:                                        ; preds = %land.lhs.true36
  store i32 0, i32* %inScanLine, align 4, !dbg !214
  br label %for.inc, !dbg !214

for.inc:                                          ; preds = %if.then31, %if.then40, %land.lhs.true36, %if.else
  %51 = load i32* %i, align 4, !dbg !203
  %inc43 = add nsw i32 %51, 1, !dbg !203
  store i32 %inc43, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !203

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %inScanLine, align 4, !dbg !215
  %52 = load i32* %x1, align 4, !dbg !216
  store i32 %52, i32* %i, align 4, !dbg !216
  br label %for.cond44, !dbg !216

for.cond44:                                       ; preds = %for.inc68, %for.end
  %53 = load i32* %i, align 4, !dbg !216
  %54 = load i32* %x2, align 4, !dbg !216
  %cmp45 = icmp sle i32 %53, %54, !dbg !216
  br i1 %cmp45, label %for.body46, label %while.body, !dbg !216

for.body46:                                       ; preds = %for.cond44
  %55 = load i32* %inScanLine, align 4, !dbg !218
  %tobool47 = icmp ne i32 %55, 0, !dbg !218
  br i1 %tobool47, label %if.else56, label %land.lhs.true48, !dbg !218

land.lhs.true48:                                  ; preds = %for.body46
  %56 = load i32* %y.addr, align 4, !dbg !218
  %57 = load i32* %height, align 4, !dbg !218
  %sub49 = sub nsw i32 %57, 1, !dbg !218
  %cmp50 = icmp slt i32 %56, %sub49, !dbg !218
  br i1 %cmp50, label %land.lhs.true51, label %if.else56, !dbg !218

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %58 = load i32* %i, align 4, !dbg !218
  %59 = load i32* %y.addr, align 4, !dbg !218
  %add = add nsw i32 %59, 1, !dbg !218
  %call52 = call i32 @getPix(i32 %58, i32 %add), !dbg !218
  %60 = load i32* %color, align 4, !dbg !218
  %cmp53 = icmp eq i32 %call52, %60, !dbg !218
  br i1 %cmp53, label %if.then54, label %if.else56, !dbg !218

if.then54:                                        ; preds = %land.lhs.true51
  %61 = load i32* %i, align 4, !dbg !221
  %62 = load i32* %y.addr, align 4, !dbg !221
  %add55 = add nsw i32 %62, 1, !dbg !221
  call void @push(i32 %61, i32 %add55), !dbg !221
  store i32 1, i32* %inScanLine, align 4, !dbg !223
  br label %for.inc68, !dbg !224

if.else56:                                        ; preds = %land.lhs.true51, %land.lhs.true48, %for.body46
  %63 = load i32* %inScanLine, align 4, !dbg !225
  %tobool57 = icmp ne i32 %63, 0, !dbg !225
  br i1 %tobool57, label %land.lhs.true58, label %for.inc68, !dbg !225

land.lhs.true58:                                  ; preds = %if.else56
  %64 = load i32* %y.addr, align 4, !dbg !225
  %65 = load i32* %height, align 4, !dbg !225
  %sub59 = sub nsw i32 %65, 1, !dbg !225
  %cmp60 = icmp slt i32 %64, %sub59, !dbg !225
  br i1 %cmp60, label %land.lhs.true61, label %for.inc68, !dbg !225

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %66 = load i32* %i, align 4, !dbg !227
  %67 = load i32* %y.addr, align 4, !dbg !227
  %add62 = add nsw i32 %67, 1, !dbg !227
  %call63 = call i32 @getPix(i32 %66, i32 %add62), !dbg !227
  %68 = load i32* %color, align 4, !dbg !227
  %cmp64 = icmp ne i32 %call63, %68, !dbg !227
  br i1 %cmp64, label %if.then65, label %for.inc68, !dbg !227

if.then65:                                        ; preds = %land.lhs.true61
  store i32 0, i32* %inScanLine, align 4, !dbg !228
  br label %for.inc68, !dbg !228

for.inc68:                                        ; preds = %if.then54, %if.then65, %land.lhs.true61, %land.lhs.true58, %if.else56
  %69 = load i32* %i, align 4, !dbg !216
  %inc69 = add nsw i32 %69, 1, !dbg !216
  store i32 %inc69, i32* %i, align 4, !dbg !216
  br label %for.cond44, !dbg !216

return:                                           ; preds = %if.then4, %if.then
  %70 = load i32* %retval, !dbg !229
  ret i32 %70, !dbg !229
}

; Function Attrs: nounwind uwtable
define i32 @getPix(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %returnVal = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x.addr, align 4, !dbg !230
  %cmp = icmp slt i32 %0, 0, !dbg !230
  %1 = load i32* %x.addr, align 4, !dbg !230
  %cmp1 = icmp sge i32 %1, 32, !dbg !230
  %or.cond = or i1 %cmp, %cmp1, !dbg !230
  %2 = load i32* %y.addr, align 4, !dbg !230
  %cmp3 = icmp slt i32 %2, 0, !dbg !230
  %or.cond1 = or i1 %or.cond, %cmp3, !dbg !230
  %3 = load i32* %y.addr, align 4, !dbg !230
  %cmp5 = icmp sge i32 %3, 32, !dbg !230
  %or.cond2 = or i1 %or.cond1, %cmp5, !dbg !230
  br i1 %or.cond2, label %if.then, label %if.else, !dbg !230

if.then:                                          ; preds = %entry
  store i32 -1, i32* %returnVal, align 4, !dbg !232
  br label %if.end, !dbg !232

if.else:                                          ; preds = %entry
  %4 = load i32* %y.addr, align 4, !dbg !233
  %idxprom = sext i32 %4 to i64, !dbg !233
  %5 = load i32* %x.addr, align 4, !dbg !233
  %idxprom6 = sext i32 %5 to i64, !dbg !233
  %arrayidx = getelementptr inbounds [32 x [32 x i32]]* @pixels, i32 0, i64 %idxprom6, !dbg !233
  %arrayidx7 = getelementptr inbounds [32 x i32]* %arrayidx, i32 0, i64 %idxprom, !dbg !233
  %6 = load i32* %arrayidx7, align 4, !dbg !233
  store i32 %6, i32* %returnVal, align 4, !dbg !233
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32* %returnVal, align 4, !dbg !234
  ret i32 %7, !dbg !234
}

; Function Attrs: nounwind uwtable
define void @setPix(i32 %x, i32 %y, i32 %c) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32* %x.addr, align 4, !dbg !235
  %cmp = icmp slt i32 %0, 0, !dbg !235
  %1 = load i32* %x.addr, align 4, !dbg !235
  %cmp1 = icmp sge i32 %1, 32, !dbg !235
  %or.cond = or i1 %cmp, %cmp1, !dbg !235
  %2 = load i32* %y.addr, align 4, !dbg !235
  %cmp3 = icmp slt i32 %2, 0, !dbg !235
  %or.cond1 = or i1 %or.cond, %cmp3, !dbg !235
  %3 = load i32* %y.addr, align 4, !dbg !235
  %cmp5 = icmp sge i32 %3, 32, !dbg !235
  %or.cond2 = or i1 %or.cond1, %cmp5, !dbg !235
  br i1 %or.cond2, label %if.end, label %if.else, !dbg !235

if.else:                                          ; preds = %entry
  %4 = load i32* %c.addr, align 4, !dbg !237
  %5 = load i32* %y.addr, align 4, !dbg !237
  %idxprom = sext i32 %5 to i64, !dbg !237
  %6 = load i32* %x.addr, align 4, !dbg !237
  %idxprom6 = sext i32 %6 to i64, !dbg !237
  %arrayidx = getelementptr inbounds [32 x [32 x i32]]* @pixels, i32 0, i64 %idxprom6, !dbg !237
  %arrayidx7 = getelementptr inbounds [32 x i32]* %arrayidx, i32 0, i64 %idxprom, !dbg !237
  store i32 %4, i32* %arrayidx7, align 4, !dbg !237
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  ret void, !dbg !238
}

; Function Attrs: nounwind uwtable
define i32 @popx() #0 {
entry:
  %returnVal = alloca i32, align 4
  %0 = load i32* @stackSize, align 4, !dbg !239
  %cmp = icmp eq i32 %0, 0, !dbg !239
  br i1 %cmp, label %if.then, label %if.else, !dbg !239

if.then:                                          ; preds = %entry
  store i32 -1, i32* %returnVal, align 4, !dbg !241
  br label %if.end, !dbg !241

if.else:                                          ; preds = %entry
  %1 = load i32* @stackSize, align 4, !dbg !242
  %sub = sub nsw i32 %1, 1, !dbg !242
  %idxprom = sext i32 %sub to i64, !dbg !242
  %2 = load i32** @xstack, align 8, !dbg !242
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !242
  %3 = load i32* %arrayidx, align 4, !dbg !242
  store i32 %3, i32* %returnVal, align 4, !dbg !242
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32* %returnVal, align 4, !dbg !243
  ret i32 %4, !dbg !243
}

; Function Attrs: nounwind uwtable
define i32 @popy() #0 {
entry:
  %value = alloca i32, align 4
  %0 = load i32* @stackSize, align 4, !dbg !244
  %sub = sub nsw i32 %0, 1, !dbg !244
  %idxprom = sext i32 %sub to i64, !dbg !244
  %1 = load i32** @ystack, align 8, !dbg !244
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !244
  %2 = load i32* %arrayidx, align 4, !dbg !244
  store i32 %2, i32* %value, align 4, !dbg !244
  %3 = load i32* @stackSize, align 4, !dbg !245
  %dec = add nsw i32 %3, -1, !dbg !245
  store i32 %dec, i32* @stackSize, align 4, !dbg !245
  %4 = load i32* %value, align 4, !dbg !246
  ret i32 %4, !dbg !246
}

; Function Attrs: nounwind uwtable
define void @fillLine(i32 %x1, i32 %x2, i32 %y) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x1.addr, align 4, !dbg !247
  %1 = load i32* %x2.addr, align 4, !dbg !247
  %cmp = icmp sgt i32 %0, %1, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %entry
  %2 = load i32* %x1.addr, align 4, !dbg !249
  store i32 %2, i32* %t, align 4, !dbg !249
  %3 = load i32* %x2.addr, align 4, !dbg !251
  store i32 %3, i32* %x1.addr, align 4, !dbg !251
  %4 = load i32* %t, align 4, !dbg !252
  store i32 %4, i32* %x2.addr, align 4, !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32* %x1.addr, align 4, !dbg !254
  store i32 %5, i32* %x, align 4, !dbg !254
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.body, %if.end
  %6 = load i32* %x, align 4, !dbg !254
  %7 = load i32* %x2.addr, align 4, !dbg !254
  %cmp1 = icmp sle i32 %6, %7, !dbg !254
  br i1 %cmp1, label %for.body, label %for.end, !dbg !254

for.body:                                         ; preds = %for.cond
  %8 = load i32* %x, align 4, !dbg !256
  %9 = load i32* %y.addr, align 4, !dbg !256
  %10 = load i32* @targetColor, align 4, !dbg !256
  call void @setPix(i32 %8, i32 %9, i32 %10), !dbg !256
  %11 = load i32* %x, align 4, !dbg !254
  %inc = add nsw i32 %11, 1, !dbg !254
  store i32 %inc, i32* %x, align 4, !dbg !254
  br label %for.cond, !dbg !254

for.end:                                          ; preds = %for.cond
  ret void, !dbg !257
}

; Function Attrs: nounwind uwtable
define void @push(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %newXStack = alloca i32*, align 8
  %newYStack = alloca i32*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* @stackSize, align 4, !dbg !258
  %inc = add nsw i32 %0, 1, !dbg !258
  store i32 %inc, i32* @stackSize, align 4, !dbg !258
  %1 = load i32* @stackSize, align 4, !dbg !259
  %cmp = icmp eq i32 %1, 500, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  %2 = load i32* @maxStackSize, align 4, !dbg !261
  %conv = sext i32 %2 to i64, !dbg !261
  %mul = mul i64 4, %conv, !dbg !261
  %mul1 = mul i64 %mul, 2, !dbg !261
  %call = call noalias i8* @malloc(i64 %mul1) #4, !dbg !261
  %3 = bitcast i8* %call to i32*, !dbg !261
  store i32* %3, i32** %newXStack, align 8, !dbg !261
  %4 = load i32* @maxStackSize, align 4, !dbg !263
  %conv2 = sext i32 %4 to i64, !dbg !263
  %mul3 = mul i64 4, %conv2, !dbg !263
  %mul4 = mul i64 %mul3, 2, !dbg !263
  %call5 = call noalias i8* @malloc(i64 %mul4) #4, !dbg !263
  %5 = bitcast i8* %call5 to i32*, !dbg !263
  store i32* %5, i32** %newYStack, align 8, !dbg !263
  %6 = load i32** %newXStack, align 8, !dbg !264
  %7 = bitcast i32* %6 to i8*, !dbg !264
  %8 = load i32** @xstack, align 8, !dbg !264
  %9 = bitcast i32* %8 to i8*, !dbg !264
  %10 = load i32* @maxStackSize, align 4, !dbg !264
  %conv6 = sext i32 %10 to i64, !dbg !264
  %mul7 = mul i64 4, %conv6, !dbg !264
  %11 = call i8* @memcpy(i8* %7, i8* %9, i64 %mul7)
  %12 = load i32** %newYStack, align 8, !dbg !265
  %13 = bitcast i32* %12 to i8*, !dbg !265
  %14 = load i32** @ystack, align 8, !dbg !265
  %15 = bitcast i32* %14 to i8*, !dbg !265
  %16 = load i32* @maxStackSize, align 4, !dbg !265
  %conv8 = sext i32 %16 to i64, !dbg !265
  %mul9 = mul i64 4, %conv8, !dbg !265
  %17 = call i8* @memcpy(i8* %13, i8* %15, i64 %mul9)
  %18 = load i32** %newXStack, align 8, !dbg !266
  store i32* %18, i32** @xstack, align 8, !dbg !266
  %19 = load i32** %newYStack, align 8, !dbg !267
  store i32* %19, i32** @ystack, align 8, !dbg !267
  %20 = load i32* @maxStackSize, align 4, !dbg !268
  %mul10 = mul nsw i32 %20, 2, !dbg !268
  store i32 %mul10, i32* @maxStackSize, align 4, !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then, %entry
  %21 = load i32* %x.addr, align 4, !dbg !270
  %22 = load i32* @stackSize, align 4, !dbg !270
  %sub = sub nsw i32 %22, 1, !dbg !270
  %idxprom = sext i32 %sub to i64, !dbg !270
  %23 = load i32** @xstack, align 8, !dbg !270
  %arrayidx = getelementptr inbounds i32* %23, i64 %idxprom, !dbg !270
  store i32 %21, i32* %arrayidx, align 4, !dbg !270
  %24 = load i32* %y.addr, align 4, !dbg !271
  %25 = load i32* @stackSize, align 4, !dbg !271
  %sub11 = sub nsw i32 %25, 1, !dbg !271
  %idxprom12 = sext i32 %sub11 to i64, !dbg !271
  %26 = load i32** @ystack, align 8, !dbg !271
  %arrayidx13 = getelementptr inbounds i32* %26, i64 %idxprom12, !dbg !271
  store i32 %24, i32* %arrayidx13, align 4, !dbg !271
  ret void, !dbg !272
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #5 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !273
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0)) #7, !dbg !275
  unreachable, !dbg !275

if.end:                                           ; preds = %entry
  ret void, !dbg !276
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #5 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !277
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #8, !dbg !277
  %1 = load i32* %x, align 4, !dbg !278, !tbaa !279
  ret i32 %1, !dbg !278
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #5 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !283
  br i1 %cmp, label %if.end, label %if.then, !dbg !283

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str311, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !285
  unreachable, !dbg !285

if.end:                                           ; preds = %entry
  ret void, !dbg !287
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #5 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !288
  br i1 %cmp, label %if.end, label %if.then, !dbg !288

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str612, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !290
  unreachable, !dbg !290

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !291
  %cmp1 = icmp eq i32 %add, %end, !dbg !291
  br i1 %cmp1, label %return, label %if.else, !dbg !291

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !293
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #8, !dbg !293
  %cmp3 = icmp eq i32 %start, 0, !dbg !295
  %1 = load i32* %x, align 4, !dbg !297, !tbaa !279
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !295

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !297
  %conv6 = zext i1 %cmp5 to i64, !dbg !297
  call void @klee_assume(i64 %conv6) #8, !dbg !297
  br label %if.end14, !dbg !299

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !300
  %conv10 = zext i1 %cmp8 to i64, !dbg !300
  call void @klee_assume(i64 %conv10) #8, !dbg !300
  %2 = load i32* %x, align 4, !dbg !302, !tbaa !279
  %cmp11 = icmp slt i32 %2, %end, !dbg !302
  %conv13 = zext i1 %cmp11 to i64, !dbg !302
  call void @klee_assume(i64 %conv13) #8, !dbg !302
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !303, !tbaa !279
  br label %return, !dbg !303

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !304
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !305
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !305

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !306
  %wide.load = load <16 x i8>* %1, align 1, !dbg !306
  %next.gep.sum282 = or i64 %index, 16, !dbg !306
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !306
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !306
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !306
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !306
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !306
  %5 = getelementptr i8* %destaddr, i64 %next.gep.sum282, !dbg !306
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !306
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !306
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !307

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
  %dec = add i64 %len.addr.04, -1, !dbg !305
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !306
  %8 = load i8* %src.06, align 1, !dbg !306, !tbaa !310
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !306
  store i8 %8, i8* %dest.05, align 1, !dbg !306, !tbaa !310
  %cmp = icmp eq i64 %dec, 0, !dbg !305
  br i1 %cmp, label %while.end, label %while.body, !dbg !305, !llvm.loop !311

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !312
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #5 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !313
  br i1 %cmp, label %return, label %if.end, !dbg !313

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !315
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !315

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !317
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !317

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !317
  %wide.load = load <16 x i8>* %1, align 1, !dbg !317
  %next.gep.sum610 = or i64 %index, 16, !dbg !317
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !317
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !317
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !317
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !317
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !317
  %5 = getelementptr i8* %dst, i64 %next.gep.sum610, !dbg !317
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !317
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !317
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !319

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
  %dec = add i64 %count.addr.028, -1, !dbg !317
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !317
  %8 = load i8* %b.030, align 1, !dbg !317, !tbaa !310
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !317
  store i8 %8, i8* %a.029, align 1, !dbg !317, !tbaa !310
  %tobool = icmp eq i64 %dec, 0, !dbg !317
  br i1 %tobool, label %return, label %while.body, !dbg !317, !llvm.loop !320

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !321
  %tobool832 = icmp eq i64 %count, 0, !dbg !323
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !323

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !324
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !321
  %n.vec241 = and i64 %count, -32
  %cmp.zero243 = icmp eq i64 %n.vec241, 0
  br i1 %cmp.zero243, label %middle.block236, label %vector.memcheck250

vector.memcheck250:                               ; preds = %while.body9.lr.ph
  %bound1247 = icmp ule i8* %add.ptr5, %dst
  %bound0246 = icmp ule i8* %add.ptr, %src
  %memcheck.conflict249 = and i1 %bound0246, %bound1247
  %add.ptr5.sum = sub i64 %sub, %n.vec241
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %add.ptr5.sum
  %rev.ptr.ind.end255 = getelementptr i8* %dst, i64 %add.ptr5.sum
  %rev.ind.end257 = sub i64 %count, %n.vec241
  br i1 %memcheck.conflict249, label %middle.block236, label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.memcheck250
  %index238 = phi i64 [ %index.next260, %vector.body235 ], [ 0, %vector.memcheck250 ]
  %add.ptr5.sum465 = sub i64 %sub, %index238
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !323
  %9 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !323
  %10 = bitcast i8* %9 to <16 x i8>*, !dbg !323
  %wide.load460 = load <16 x i8>* %10, align 1, !dbg !323
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !323
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !323
  %11 = getelementptr i8* %src, i64 %.sum, !dbg !323
  %12 = bitcast i8* %11 to <16 x i8>*, !dbg !323
  %wide.load461 = load <16 x i8>* %12, align 1, !dbg !323
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !323
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !323
  %13 = getelementptr i8* %dst, i64 %next.gep262.sum, !dbg !323
  %14 = bitcast i8* %13 to <16 x i8>*, !dbg !323
  store <16 x i8> %reverse463, <16 x i8>* %14, align 1, !dbg !323
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !323
  %15 = getelementptr i8* %dst, i64 %.sum, !dbg !323
  %16 = bitcast i8* %15 to <16 x i8>*, !dbg !323
  store <16 x i8> %reverse464, <16 x i8>* %16, align 1, !dbg !323
  %index.next260 = add i64 %index238, 32
  %17 = icmp eq i64 %index.next260, %n.vec241
  br i1 %17, label %middle.block236, label %vector.body235, !llvm.loop !325

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !323
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !323
  %18 = load i8* %b.135, align 1, !dbg !323, !tbaa !310
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !323
  store i8 %18, i8* %a.134, align 1, !dbg !323, !tbaa !310
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !323
  br i1 %tobool8, label %return, label %while.body9, !dbg !323, !llvm.loop !326

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !327
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #5 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !328
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !328

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !329
  %wide.load = load <16 x i8>* %1, align 1, !dbg !329
  %next.gep.sum283 = or i64 %index, 16, !dbg !329
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !329
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !329
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !329
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !329
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !329
  %5 = getelementptr i8* %destaddr, i64 %next.gep.sum283, !dbg !329
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !329
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !329
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !330

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
  %dec = add i64 %len.addr.04, -1, !dbg !328
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !329
  %8 = load i8* %src.06, align 1, !dbg !329, !tbaa !310
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !329
  store i8 %8, i8* %dest.05, align 1, !dbg !329, !tbaa !310
  %cmp = icmp eq i64 %dec, 0, !dbg !328
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !328, !llvm.loop !331

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !328

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !332
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #5 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !333
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !333

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !334
  br label %while.body, !dbg !333

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !333
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !334
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !334, !tbaa !310
  %cmp = icmp eq i64 %dec, 0, !dbg !333
  br i1 %cmp, label %while.end, label %while.body, !dbg !333

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !335
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

!llvm.dbg.cu = !{!0, !33, !44, !58, !70, !83, !103, !118, !133}
!llvm.module.flags = !{!149, !150}
!llvm.ident = !{!151, !151, !151, !151, !151, !151, !151, !151, !151}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !22, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!1 = metadata !{metadata !"imagej-symbolic.c", metadata !"/home/himeshi/approx/Enerj/imagej"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
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
!22 = metadata !{metadata !23, metadata !25, metadata !26, metadata !27, metadata !31, metadata !32}
!23 = metadata !{i32 786484, i32 0, null, metadata !"xstack", metadata !"xstack", metadata !"", metadata !5, i32 20, metadata !24, i32 0, i32 1, i32** @xstack, null} ; [ DW_TAG_variable ] [xstack] [line 20] [def]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786484, i32 0, null, metadata !"ystack", metadata !"ystack", metadata !"", metadata !5, i32 21, metadata !24, i32 0, i32 1, i32** @ystack, null} ; [ DW_TAG_variable ] [ystack] [line 21] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"stackSize", metadata !"stackSize", metadata !"", metadata !5, i32 22, metadata !8, i32 0, i32 1, i32* @stackSize, null} ; [ DW_TAG_variable ] [stackSize] [line 22] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"pixels", metadata !"pixels", metadata !"", metadata !5, i32 23, metadata !28, i32 0, i32 1, [32 x [32 x i32]]* @pixels, null} ; [ DW_TAG_variable ] [pixels] [line 23] [def]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !8, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from int]
!29 = metadata !{metadata !30, metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!31 = metadata !{i32 786484, i32 0, null, metadata !"targetColor", metadata !"targetColor", metadata !"", metadata !5, i32 24, metadata !8, i32 0, i32 1, i32* @targetColor, null} ; [ DW_TAG_variable ] [targetColor] [line 24] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"maxStackSize", metadata !"maxStackSize", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @maxStackSize, null} ; [ DW_TAG_variable ] [maxStackSize] [line 25] [def]
!33 = metadata !{i32 786449, metadata !34, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !35, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!34 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786478, metadata !37, metadata !38, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!37 = metadata !{metadata !"klee_div_zero_check.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!38 = metadata !{i32 786473, metadata !37}        ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786689, metadata !36, metadata !"z", metadata !38, i32 16777228, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!44 = metadata !{i32 786449, metadata !45, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !46, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!45 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786478, metadata !48, metadata !49, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !55, i32 13} ; [ 
!48 = metadata !{metadata !"klee_int.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!49 = metadata !{i32 786473, metadata !48}        ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_int.c]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !8, metadata !52}
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!54 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !47, metadata !"name", metadata !49, i32 16777229, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!57 = metadata !{i32 786688, metadata !47, metadata !"x", metadata !49, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!58 = metadata !{i32 786449, metadata !59, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !60, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!59 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786478, metadata !62, metadata !63, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!62 = metadata !{metadata !"klee_overshift_check.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!63 = metadata !{i32 786473, metadata !62}        ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!64 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !66, metadata !66}
!66 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{metadata !68, metadata !69}
!68 = metadata !{i32 786689, metadata !61, metadata !"bitWidth", metadata !63, i32 16777236, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!69 = metadata !{i32 786689, metadata !61, metadata !"shift", metadata !63, i32 33554452, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!70 = metadata !{i32 786449, metadata !71, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !72, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!71 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786478, metadata !74, metadata !75, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!74 = metadata !{metadata !"klee_range.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!75 = metadata !{i32 786473, metadata !74}        ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!76 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !8, metadata !8, metadata !8, metadata !52}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82}
!79 = metadata !{i32 786689, metadata !73, metadata !"start", metadata !75, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!80 = metadata !{i32 786689, metadata !73, metadata !"end", metadata !75, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!81 = metadata !{i32 786689, metadata !73, metadata !"name", metadata !75, i32 50331661, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!82 = metadata !{i32 786688, metadata !73, metadata !"x", metadata !75, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!83 = metadata !{i32 786449, metadata !84, i32 1, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !85, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himesh
!84 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !96, i32 12} 
!87 = metadata !{metadata !"memcpy.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!88 = metadata !{i32 786473, metadata !87}        ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memcpy.c]
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
!104 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/memmove.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786478, metadata !107, metadata !108, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !112, 
!107 = metadata !{metadata !"memmove.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!108 = metadata !{i32 786473, metadata !107}      ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memmove.c]
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
!119 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786478, metadata !122, metadata !123, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !124, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !127, 
!122 = metadata !{metadata !"mempcpy.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!123 = metadata !{i32 786473, metadata !122}      ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/mempcpy.c]
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
!134 = metadata !{metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic/memset.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786478, metadata !137, metadata !138, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !142, i32
!137 = metadata !{metadata !"memset.c", metadata !"/home/himeshi/approx/klee/klee/runtime/Intrinsic"}
!138 = metadata !{i32 786473, metadata !137}      ; [ DW_TAG_file_type ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memset.c]
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
!152 = metadata !{i32 39, i32 0, metadata !4, null}
!153 = metadata !{i32 40, i32 0, metadata !4, null}
!154 = metadata !{i32 41, i32 0, metadata !4, null}
!155 = metadata !{i32 42, i32 0, metadata !4, null}
!156 = metadata !{i32 43, i32 0, metadata !4, null}
!157 = metadata !{i32 45, i32 0, metadata !4, null}
!158 = metadata !{i32 46, i32 0, metadata !4, null}
!159 = metadata !{i32 47, i32 0, metadata !4, null}
!160 = metadata !{i32 48, i32 0, metadata !4, null}
!161 = metadata !{i32 50, i32 0, metadata !4, null}
!162 = metadata !{i32 51, i32 0, metadata !4, null}
!163 = metadata !{i32 52, i32 0, metadata !4, null}
!164 = metadata !{i32 53, i32 0, metadata !4, null}
!165 = metadata !{i32 54, i32 0, metadata !4, null}
!166 = metadata !{i32 55, i32 0, metadata !4, null}
!167 = metadata !{i32 57, i32 0, metadata !4, null}
!168 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!169 = metadata !{i32 59, i32 0, metadata !4, null}
!170 = metadata !{i32 60, i32 0, metadata !4, null}
!171 = metadata !{i32 62, i32 0, metadata !4, null}
!172 = metadata !{i32 63, i32 0, metadata !4, null}
!173 = metadata !{i32 124, i32 0, metadata !21, null}
!174 = metadata !{i32 125, i32 0, metadata !21, null}
!175 = metadata !{i32 126, i32 0, metadata !21, null}
!176 = metadata !{i32 127, i32 0, metadata !21, null}
!177 = metadata !{i32 128, i32 0, metadata !21, null}
!178 = metadata !{i32 129, i32 0, metadata !21, null}
!179 = metadata !{i32 131, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !21, i32 131, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!181 = metadata !{i32 132, i32 0, metadata !180, null}
!182 = metadata !{i32 134, i32 0, metadata !21, null}
!183 = metadata !{i32 135, i32 0, metadata !21, null}
!184 = metadata !{i32 137, i32 0, metadata !21, null}
!185 = metadata !{i32 138, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !21, i32 137, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!187 = metadata !{i32 139, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !186, i32 139, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!189 = metadata !{i32 140, i32 0, metadata !188, null}
!190 = metadata !{i32 141, i32 0, metadata !186, null}
!191 = metadata !{i32 143, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !186, i32 143, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!193 = metadata !{i32 145, i32 0, metadata !186, null}
!194 = metadata !{i32 146, i32 0, metadata !186, null}
!195 = metadata !{i32 148, i32 0, metadata !186, null}
!196 = metadata !{i32 149, i32 0, metadata !186, null}
!197 = metadata !{i32 150, i32 0, metadata !186, null}
!198 = metadata !{i32 152, i32 0, metadata !186, null}
!199 = metadata !{i32 153, i32 0, metadata !186, null}
!200 = metadata !{i32 154, i32 0, metadata !186, null}
!201 = metadata !{i32 156, i32 0, metadata !186, null}
!202 = metadata !{i32 158, i32 0, metadata !186, null}
!203 = metadata !{i32 160, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !186, i32 160, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!205 = metadata !{i32 161, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !207, i32 161, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 160, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!208 = metadata !{i32 162, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !206, i32 161, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!210 = metadata !{i32 163, i32 0, metadata !209, null}
!211 = metadata !{i32 164, i32 0, metadata !209, null}
!212 = metadata !{i32 164, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !206, i32 164, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!214 = metadata !{i32 165, i32 0, metadata !213, null}
!215 = metadata !{i32 168, i32 0, metadata !186, null}
!216 = metadata !{i32 169, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !186, i32 169, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!218 = metadata !{i32 170, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !220, i32 170, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!220 = metadata !{i32 786443, metadata !1, metadata !217, i32 169, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!221 = metadata !{i32 171, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !219, i32 170, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!223 = metadata !{i32 172, i32 0, metadata !222, null}
!224 = metadata !{i32 173, i32 0, metadata !222, null}
!225 = metadata !{i32 173, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !219, i32 173, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!227 = metadata !{i32 174, i32 0, metadata !226, null}
!228 = metadata !{i32 175, i32 0, metadata !226, null}
!229 = metadata !{i32 178, i32 0, metadata !21, null}
!230 = metadata !{i32 67, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !9, i32 67, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!232 = metadata !{i32 68, i32 0, metadata !231, null}
!233 = metadata !{i32 70, i32 0, metadata !231, null}
!234 = metadata !{i32 71, i32 0, metadata !9, null}
!235 = metadata !{i32 75, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !12, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!237 = metadata !{i32 78, i32 0, metadata !236, null}
!238 = metadata !{i32 79, i32 0, metadata !12, null}
!239 = metadata !{i32 83, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !15, i32 83, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!241 = metadata !{i32 84, i32 0, metadata !240, null}
!242 = metadata !{i32 86, i32 0, metadata !240, null}
!243 = metadata !{i32 88, i32 0, metadata !15, null}
!244 = metadata !{i32 92, i32 0, metadata !16, null}
!245 = metadata !{i32 93, i32 0, metadata !16, null}
!246 = metadata !{i32 94, i32 0, metadata !16, null}
!247 = metadata !{i32 99, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !17, i32 99, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!249 = metadata !{i32 100, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 99, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!251 = metadata !{i32 101, i32 0, metadata !250, null}
!252 = metadata !{i32 102, i32 0, metadata !250, null}
!253 = metadata !{i32 103, i32 0, metadata !250, null}
!254 = metadata !{i32 104, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !17, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!256 = metadata !{i32 105, i32 0, metadata !255, null}
!257 = metadata !{i32 106, i32 0, metadata !17, null}
!258 = metadata !{i32 109, i32 0, metadata !18, null}
!259 = metadata !{i32 110, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !18, i32 110, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!261 = metadata !{i32 111, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !260, i32 110, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/Enerj/imagej/imagej-symbolic.c]
!263 = metadata !{i32 112, i32 0, metadata !262, null}
!264 = metadata !{i32 113, i32 0, metadata !262, null}
!265 = metadata !{i32 114, i32 0, metadata !262, null}
!266 = metadata !{i32 115, i32 0, metadata !262, null}
!267 = metadata !{i32 116, i32 0, metadata !262, null}
!268 = metadata !{i32 117, i32 0, metadata !262, null}
!269 = metadata !{i32 118, i32 0, metadata !262, null}
!270 = metadata !{i32 119, i32 0, metadata !18, null}
!271 = metadata !{i32 120, i32 0, metadata !18, null}
!272 = metadata !{i32 121, i32 0, metadata !18, null}
!273 = metadata !{i32 13, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !37, metadata !36, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_div_zero_check.c]
!275 = metadata !{i32 14, i32 0, metadata !274, null}
!276 = metadata !{i32 15, i32 0, metadata !36, null}
!277 = metadata !{i32 15, i32 0, metadata !47, null}
!278 = metadata !{i32 16, i32 0, metadata !47, null}
!279 = metadata !{metadata !280, metadata !280, i64 0}
!280 = metadata !{metadata !"int", metadata !281, i64 0}
!281 = metadata !{metadata !"omnipotent char", metadata !282, i64 0}
!282 = metadata !{metadata !"Simple C/C++ TBAA"}
!283 = metadata !{i32 21, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !62, metadata !61, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!285 = metadata !{i32 27, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !62, metadata !284, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_overshift_check.c]
!287 = metadata !{i32 29, i32 0, metadata !61, null}
!288 = metadata !{i32 16, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !74, metadata !73, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!290 = metadata !{i32 17, i32 0, metadata !289, null}
!291 = metadata !{i32 19, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !74, metadata !73, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!293 = metadata !{i32 22, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !74, metadata !292, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!295 = metadata !{i32 25, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !74, metadata !294, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!297 = metadata !{i32 26, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !74, metadata !296, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!299 = metadata !{i32 27, i32 0, metadata !298, null}
!300 = metadata !{i32 28, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !74, metadata !296, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/klee_range.c]
!302 = metadata !{i32 29, i32 0, metadata !301, null}
!303 = metadata !{i32 32, i32 0, metadata !294, null}
!304 = metadata !{i32 34, i32 0, metadata !73, null}
!305 = metadata !{i32 16, i32 0, metadata !86, null}
!306 = metadata !{i32 17, i32 0, metadata !86, null}
!307 = metadata !{metadata !307, metadata !308, metadata !309}
!308 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!309 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!310 = metadata !{metadata !281, metadata !281, i64 0}
!311 = metadata !{metadata !311, metadata !308, metadata !309}
!312 = metadata !{i32 18, i32 0, metadata !86, null}
!313 = metadata !{i32 16, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !107, metadata !106, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memmove.c]
!315 = metadata !{i32 19, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !107, metadata !106, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memmove.c]
!317 = metadata !{i32 20, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !107, metadata !316, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memmove.c]
!319 = metadata !{metadata !319, metadata !308, metadata !309}
!320 = metadata !{metadata !320, metadata !308, metadata !309}
!321 = metadata !{i32 22, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !107, metadata !316, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/himeshi/approx/klee/klee/runtime/Intrinsic/memmove.c]
!323 = metadata !{i32 24, i32 0, metadata !322, null}
!324 = metadata !{i32 23, i32 0, metadata !322, null}
!325 = metadata !{metadata !325, metadata !308, metadata !309}
!326 = metadata !{metadata !326, metadata !308, metadata !309}
!327 = metadata !{i32 28, i32 0, metadata !106, null}
!328 = metadata !{i32 15, i32 0, metadata !121, null}
!329 = metadata !{i32 16, i32 0, metadata !121, null}
!330 = metadata !{metadata !330, metadata !308, metadata !309}
!331 = metadata !{metadata !331, metadata !308, metadata !309}
!332 = metadata !{i32 17, i32 0, metadata !121, null}
!333 = metadata !{i32 13, i32 0, metadata !136, null}
!334 = metadata !{i32 14, i32 0, metadata !136, null}
!335 = metadata !{i32 15, i32 0, metadata !136, null}
