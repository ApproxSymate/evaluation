; ModuleID = 'montecarlo.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"__arr32__x\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"__arr32__y\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"x_err\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"y_err\00", align 1
@.str4 = private unnamed_addr constant [80 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [71 x i8] c"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %under_curve = alloca i32, align 4
  %count = alloca i32, align 4
  %result = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  %y = alloca [3 x i32], align 4
  %Num_samples = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %under_curve, align 4, !dbg !121
  store i32 3, i32* %Num_samples, align 4, !dbg !122
  %2 = getelementptr inbounds [3 x i32]* %x, i32 0, i32 0, !dbg !123
  %3 = bitcast i32* %2 to i8*, !dbg !123
  call void @klee_make_symbolic(i8* %3, i64 12, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)), !dbg !123
  %4 = getelementptr inbounds [3 x i32]* %y, i32 0, i32 0, !dbg !124
  %5 = bitcast i32* %4 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* %5, i64 12, i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0)), !dbg !124
  %6 = bitcast [3 x i32]* %x to i8*, !dbg !125
  call void @klee_track_error(i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !125
  %7 = bitcast [3 x i32]* %y to i8*, !dbg !126
  call void @klee_track_error(i8* %7, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)), !dbg !126
  store i32 0, i32* %count, align 4, !dbg !127
  br label %8, !dbg !127

; <label>:8                                       ; preds = %36, %0
  %9 = load i32* %count, align 4, !dbg !127
  %10 = load i32* %Num_samples, align 4, !dbg !127
  %11 = icmp slt i32 %9, %10, !dbg !127
  br i1 %11, label %12, label %39, !dbg !127

; <label>:12                                      ; preds = %8
  %13 = load i32* %count, align 4, !dbg !129
  %14 = sext i32 %13 to i64, !dbg !129
  %15 = getelementptr inbounds [3 x i32]* %x, i32 0, i64 %14, !dbg !129
  %16 = load i32* %15, align 4, !dbg !129
  %17 = load i32* %count, align 4, !dbg !129
  %18 = sext i32 %17 to i64, !dbg !129
  %19 = getelementptr inbounds [3 x i32]* %x, i32 0, i64 %18, !dbg !129
  %20 = load i32* %19, align 4, !dbg !129
  %21 = mul nsw i32 %16, %20, !dbg !129
  %22 = load i32* %count, align 4, !dbg !129
  %23 = sext i32 %22 to i64, !dbg !129
  %24 = getelementptr inbounds [3 x i32]* %y, i32 0, i64 %23, !dbg !129
  %25 = load i32* %24, align 4, !dbg !129
  %26 = load i32* %count, align 4, !dbg !129
  %27 = sext i32 %26 to i64, !dbg !129
  %28 = getelementptr inbounds [3 x i32]* %y, i32 0, i64 %27, !dbg !129
  %29 = load i32* %28, align 4, !dbg !129
  %30 = mul nsw i32 %25, %29, !dbg !129
  %31 = add nsw i32 %21, %30, !dbg !129
  %32 = icmp sle i32 %31, 1, !dbg !129
  br i1 %32, label %33, label %36, !dbg !129

; <label>:33                                      ; preds = %12
  %34 = load i32* %under_curve, align 4, !dbg !132
  %35 = add nsw i32 %34, 1, !dbg !132
  store i32 %35, i32* %under_curve, align 4, !dbg !132
  br label %36, !dbg !132

; <label>:36                                      ; preds = %12, %33
  %37 = load i32* %count, align 4, !dbg !127
  %38 = add nsw i32 %37, 1, !dbg !127
  store i32 %38, i32* %count, align 4, !dbg !127
  br label %8, !dbg !127

; <label>:39                                      ; preds = %8
  %40 = load i32* %under_curve, align 4, !dbg !133
  %41 = load i32* %Num_samples, align 4, !dbg !133
  %int_cast_to_i64 = zext i32 %41 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !133
  %42 = sdiv i32 %40, %41, !dbg !133
  %43 = mul nsw i32 %42, 4, !dbg !133
  store i32 %43, i32* %result, align 4, !dbg !133
  ret i32 0, !dbg !134
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @klee_make_symbolic(i8*, i64, i8*) #2

declare void @klee_track_error(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #3 {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !135
  br i1 %cmp, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([80 x i8]* @.str4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0)) #6, !dbg !137
  unreachable, !dbg !137

if.end:                                           ; preds = %entry
  ret void, !dbg !138
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #3 {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !139
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #7, !dbg !139
  %1 = load i32* %x, align 4, !dbg !140, !tbaa !141
  ret i32 %1, !dbg !140
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #3 {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !145
  br i1 %cmp, label %if.end, label %if.then, !dbg !145

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #6, !dbg !147
  unreachable, !dbg !147

if.end:                                           ; preds = %entry
  ret void, !dbg !149
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #3 {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !150
  br i1 %cmp, label %if.end, label %if.then, !dbg !150

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([71 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #6, !dbg !152
  unreachable, !dbg !152

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !153
  %cmp1 = icmp eq i32 %add, %end, !dbg !153
  br i1 %cmp1, label %return, label %if.else, !dbg !153

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !155
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) #7, !dbg !155
  %cmp3 = icmp eq i32 %start, 0, !dbg !157
  %1 = load i32* %x, align 4, !dbg !159, !tbaa !141
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !157

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !159
  %conv6 = zext i1 %cmp5 to i64, !dbg !159
  call void @klee_assume(i64 %conv6) #7, !dbg !159
  br label %if.end14, !dbg !161

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !162
  %conv10 = zext i1 %cmp8 to i64, !dbg !162
  call void @klee_assume(i64 %conv10) #7, !dbg !162
  %2 = load i32* %x, align 4, !dbg !164, !tbaa !141
  %cmp11 = icmp slt i32 %2, %end, !dbg !164
  %conv13 = zext i1 %cmp11 to i64, !dbg !164
  call void @klee_assume(i64 %conv13) #7, !dbg !164
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !165, !tbaa !141
  br label %return, !dbg !165

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !166
}

declare void @klee_assume(i64) #5

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #3 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !167
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !167

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !168
  %wide.load = load <16 x i8>* %1, align 1, !dbg !168
  %next.gep.sum282 = or i64 %index, 16, !dbg !168
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum282, !dbg !168
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !168
  %wide.load203 = load <16 x i8>* %3, align 1, !dbg !168
  %4 = bitcast i8* %next.gep106 to <16 x i8>*, !dbg !168
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !168
  %next.gep106.sum299 = or i64 %index, 16, !dbg !168
  %5 = getelementptr i8* %destaddr, i64 %next.gep106.sum299, !dbg !168
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !168
  store <16 x i8> %wide.load203, <16 x i8>* %6, align 1, !dbg !168
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !169

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
  %dec = add i64 %len.addr.04, -1, !dbg !167
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !168
  %8 = load i8* %src.06, align 1, !dbg !168, !tbaa !172
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !168
  store i8 %8, i8* %dest.05, align 1, !dbg !168, !tbaa !172
  %cmp = icmp eq i64 %dec, 0, !dbg !167
  br i1 %cmp, label %while.end, label %while.body, !dbg !167, !llvm.loop !173

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i8* %destaddr, !dbg !174
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #3 {
entry:
  %cmp = icmp eq i8* %src, %dst, !dbg !175
  br i1 %cmp, label %return, label %if.end, !dbg !175

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i8* %src, %dst, !dbg !177
  br i1 %cmp1, label %while.cond.preheader, label %if.else, !dbg !177

while.cond.preheader:                             ; preds = %if.end
  %tobool27 = icmp eq i64 %count, 0, !dbg !179
  br i1 %tobool27, label %return, label %while.body.preheader, !dbg !179

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !179
  %wide.load = load <16 x i8>* %1, align 1, !dbg !179
  %next.gep.sum610 = or i64 %index, 16, !dbg !179
  %2 = getelementptr i8* %src, i64 %next.gep.sum610, !dbg !179
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !179
  %wide.load233 = load <16 x i8>* %3, align 1, !dbg !179
  %4 = bitcast i8* %next.gep136 to <16 x i8>*, !dbg !179
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !179
  %next.gep136.sum627 = or i64 %index, 16, !dbg !179
  %5 = getelementptr i8* %dst, i64 %next.gep136.sum627, !dbg !179
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !179
  store <16 x i8> %wide.load233, <16 x i8>* %6, align 1, !dbg !179
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !181

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
  %dec = add i64 %count.addr.028, -1, !dbg !179
  %incdec.ptr = getelementptr inbounds i8* %b.030, i64 1, !dbg !179
  %8 = load i8* %b.030, align 1, !dbg !179, !tbaa !172
  %incdec.ptr3 = getelementptr inbounds i8* %a.029, i64 1, !dbg !179
  store i8 %8, i8* %a.029, align 1, !dbg !179, !tbaa !172
  %tobool = icmp eq i64 %dec, 0, !dbg !179
  br i1 %tobool, label %return, label %while.body, !dbg !179, !llvm.loop !182

if.else:                                          ; preds = %if.end
  %sub = add i64 %count, -1, !dbg !183
  %tobool832 = icmp eq i64 %count, 0, !dbg !185
  br i1 %tobool832, label %return, label %while.body9.lr.ph, !dbg !185

while.body9.lr.ph:                                ; preds = %if.else
  %add.ptr5 = getelementptr inbounds i8* %src, i64 %sub, !dbg !186
  %add.ptr = getelementptr inbounds i8* %dst, i64 %sub, !dbg !183
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
  %next.gep262.sum = add i64 %add.ptr5.sum465, -15, !dbg !185
  %10 = getelementptr i8* %src, i64 %next.gep262.sum, !dbg !185
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !185
  %wide.load460 = load <16 x i8>* %11, align 1, !dbg !185
  %reverse = shufflevector <16 x i8> %wide.load460, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !185
  %.sum = add i64 %add.ptr5.sum465, -31, !dbg !185
  %12 = getelementptr i8* %src, i64 %.sum, !dbg !185
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !185
  %wide.load461 = load <16 x i8>* %13, align 1, !dbg !185
  %reverse462 = shufflevector <16 x i8> %wide.load461, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !185
  %reverse463 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !185
  %next.gep359.sum = add i64 %add.ptr.sum497, -15, !dbg !185
  %14 = getelementptr i8* %dst, i64 %next.gep359.sum, !dbg !185
  %15 = bitcast i8* %14 to <16 x i8>*, !dbg !185
  store <16 x i8> %reverse463, <16 x i8>* %15, align 1, !dbg !185
  %reverse464 = shufflevector <16 x i8> %reverse462, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !185
  %.sum531 = add i64 %add.ptr.sum497, -31, !dbg !185
  %16 = getelementptr i8* %dst, i64 %.sum531, !dbg !185
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !185
  store <16 x i8> %reverse464, <16 x i8>* %17, align 1, !dbg !185
  %index.next260 = add i64 %index238, 32
  %18 = icmp eq i64 %index.next260, %n.vec241
  br i1 %18, label %middle.block236, label %vector.body235, !llvm.loop !187

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
  %dec7 = add i64 %count.addr.133, -1, !dbg !185
  %incdec.ptr10 = getelementptr inbounds i8* %b.135, i64 -1, !dbg !185
  %19 = load i8* %b.135, align 1, !dbg !185, !tbaa !172
  %incdec.ptr11 = getelementptr inbounds i8* %a.134, i64 -1, !dbg !185
  store i8 %19, i8* %a.134, align 1, !dbg !185, !tbaa !172
  %tobool8 = icmp eq i64 %dec7, 0, !dbg !185
  br i1 %tobool8, label %return, label %while.body9, !dbg !185, !llvm.loop !188

return:                                           ; preds = %while.body9, %middle.block236, %if.else, %while.body, %middle.block, %while.cond.preheader, %entry
  ret i8* %dst, !dbg !189
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #3 {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !190
  br i1 %cmp3, label %while.end, label %while.body.preheader, !dbg !190

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
  %1 = bitcast i8* %next.gep to <16 x i8>*, !dbg !191
  %wide.load = load <16 x i8>* %1, align 1, !dbg !191
  %next.gep.sum283 = or i64 %index, 16, !dbg !191
  %2 = getelementptr i8* %srcaddr, i64 %next.gep.sum283, !dbg !191
  %3 = bitcast i8* %2 to <16 x i8>*, !dbg !191
  %wide.load204 = load <16 x i8>* %3, align 1, !dbg !191
  %4 = bitcast i8* %next.gep107 to <16 x i8>*, !dbg !191
  store <16 x i8> %wide.load, <16 x i8>* %4, align 1, !dbg !191
  %next.gep107.sum300 = or i64 %index, 16, !dbg !191
  %5 = getelementptr i8* %destaddr, i64 %next.gep107.sum300, !dbg !191
  %6 = bitcast i8* %5 to <16 x i8>*, !dbg !191
  store <16 x i8> %wide.load204, <16 x i8>* %6, align 1, !dbg !191
  %index.next = add i64 %index, 32
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !192

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
  %dec = add i64 %len.addr.04, -1, !dbg !190
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !191
  %8 = load i8* %src.06, align 1, !dbg !191, !tbaa !172
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !191
  store i8 %8, i8* %dest.05, align 1, !dbg !191, !tbaa !172
  %cmp = icmp eq i64 %dec, 0, !dbg !190
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !190, !llvm.loop !193

while.cond.while.end_crit_edge:                   ; preds = %while.body, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !190

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !194
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #3 {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !195
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !195

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !196
  br label %while.body, !dbg !195

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !195
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !196
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !196, !tbaa !172
  %cmp = icmp eq i64 %dec, 0, !dbg !195
  br i1 %cmp, label %while.end, label %while.body, !dbg !195

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !197
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noreturn nounwind }
attributes #7 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !9, !19, !32, !43, !55, !74, !88, !102}
!llvm.module.flags = !{!117, !118}
!llvm.ident = !{!119, !120, !120, !120, !120, !120, !120, !120, !120}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4 (tags/RELEASE_34/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/himeshi
!1 = metadata !{metadata !"montecarlo.c", metadata !"/home/himeshi/Projects/workspace/MonteCarloScimark"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 57, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 57} ; [ DW_TAG_subprogram ] [
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786449, metadata !10, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !11, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/
!10 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786478, metadata !10, metadata !13, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!13 = metadata !{i32 786473, metadata !10}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !13, i32 16777228, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!19 = metadata !{i32 786449, metadata !20, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !21, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!20 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786478, metadata !20, metadata !23, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !29, i32 13} ; [ 
!23 = metadata !{i32 786473, metadata !20}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_int.c]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !8, metadata !26}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!28 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!29 = metadata !{metadata !30, metadata !31}
!30 = metadata !{i32 786689, metadata !22, metadata !"name", metadata !23, i32 16777229, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!31 = metadata !{i32 786688, metadata !22, metadata !"x", metadata !23, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!32 = metadata !{i32 786449, metadata !33, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !34, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!33 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786478, metadata !33, metadata !36, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!36 = metadata !{i32 786473, metadata !33}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!37 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{null, metadata !39, metadata !39}
!39 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 786689, metadata !35, metadata !"bitWidth", metadata !36, i32 16777236, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!42 = metadata !{i32 786689, metadata !35, metadata !"shift", metadata !36, i32 33554452, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!43 = metadata !{i32 786449, metadata !44, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !45, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!44 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786478, metadata !44, metadata !47, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!47 = metadata !{i32 786473, metadata !44}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!48 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !8, metadata !8, metadata !8, metadata !26}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786689, metadata !46, metadata !"start", metadata !47, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!52 = metadata !{i32 786689, metadata !46, metadata !"end", metadata !47, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!53 = metadata !{i32 786689, metadata !46, metadata !"name", metadata !47, i32 50331661, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!54 = metadata !{i32 786688, metadata !46, metadata !"x", metadata !47, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!55 = metadata !{i32 786449, metadata !56, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !57, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!56 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786478, metadata !56, metadata !59, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !67, i32 12} 
!59 = metadata !{i32 786473, metadata !56}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memcpy.c]
!60 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !62, metadata !63, metadata !65}
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{i32 786454, metadata !56, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!66 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !73}
!68 = metadata !{i32 786689, metadata !58, metadata !"destaddr", metadata !59, i32 16777228, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!69 = metadata !{i32 786689, metadata !58, metadata !"srcaddr", metadata !59, i32 33554444, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!70 = metadata !{i32 786689, metadata !58, metadata !"len", metadata !59, i32 50331660, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!71 = metadata !{i32 786688, metadata !58, metadata !"dest", metadata !59, i32 13, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!73 = metadata !{i32 786688, metadata !58, metadata !"src", metadata !59, i32 14, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!74 = metadata !{i32 786449, metadata !75, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !76, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!75 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786478, metadata !75, metadata !78, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !82, i32 1
!78 = metadata !{i32 786473, metadata !75}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!79 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !62, metadata !62, metadata !63, metadata !81}
!81 = metadata !{i32 786454, metadata !75, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87}
!83 = metadata !{i32 786689, metadata !77, metadata !"dst", metadata !78, i32 16777228, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!84 = metadata !{i32 786689, metadata !77, metadata !"src", metadata !78, i32 33554444, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!85 = metadata !{i32 786689, metadata !77, metadata !"count", metadata !78, i32 50331660, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!86 = metadata !{i32 786688, metadata !77, metadata !"a", metadata !78, i32 13, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!87 = metadata !{i32 786688, metadata !77, metadata !"b", metadata !78, i32 14, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!88 = metadata !{i32 786449, metadata !89, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !90, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home
!89 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786478, metadata !89, metadata !92, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !96, i32 1
!92 = metadata !{i32 786473, metadata !89}        ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/mempcpy.c]
!93 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !62, metadata !62, metadata !63, metadata !95}
!95 = metadata !{i32 786454, metadata !89, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!97 = metadata !{i32 786689, metadata !91, metadata !"destaddr", metadata !92, i32 16777227, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!98 = metadata !{i32 786689, metadata !91, metadata !"srcaddr", metadata !92, i32 33554443, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!99 = metadata !{i32 786689, metadata !91, metadata !"len", metadata !92, i32 50331659, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!100 = metadata !{i32 786688, metadata !91, metadata !"dest", metadata !92, i32 12, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!101 = metadata !{i32 786688, metadata !91, metadata !"src", metadata !92, i32 13, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!102 = metadata !{i32 786449, metadata !103, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !104, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!103 = metadata !{metadata !"/home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c", metadata !"/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic"}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786478, metadata !103, metadata !106, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !110, i32
!106 = metadata !{i32 786473, metadata !103}      ; [ DW_TAG_file_type ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memset.c]
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{metadata !62, metadata !62, metadata !8, metadata !109}
!109 = metadata !{i32 786454, metadata !103, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114}
!111 = metadata !{i32 786689, metadata !105, metadata !"dst", metadata !106, i32 16777227, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!112 = metadata !{i32 786689, metadata !105, metadata !"s", metadata !106, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!113 = metadata !{i32 786689, metadata !105, metadata !"count", metadata !106, i32 50331659, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!114 = metadata !{i32 786688, metadata !105, metadata !"a", metadata !106, i32 12, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!116 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!117 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!118 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!119 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!120 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!121 = metadata !{i32 59, i32 0, metadata !4, null}
!122 = metadata !{i32 65, i32 0, metadata !4, null}
!123 = metadata !{i32 67, i32 0, metadata !4, null}
!124 = metadata !{i32 68, i32 0, metadata !4, null}
!125 = metadata !{i32 70, i32 0, metadata !4, null}
!126 = metadata !{i32 71, i32 0, metadata !4, null}
!127 = metadata !{i32 73, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !4, i32 73, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!129 = metadata !{i32 75, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !131, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!131 = metadata !{i32 786443, metadata !1, metadata !128, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/himeshi/Projects/workspace/MonteCarloScimark/montecarlo.c]
!132 = metadata !{i32 76, i32 0, metadata !130, null}
!133 = metadata !{i32 80, i32 0, metadata !4, null}
!134 = metadata !{i32 87, i32 0, metadata !4, null}
!135 = metadata !{i32 13, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !10, metadata !12, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_div_zero_check.c]
!137 = metadata !{i32 14, i32 0, metadata !136, null}
!138 = metadata !{i32 15, i32 0, metadata !12, null}
!139 = metadata !{i32 15, i32 0, metadata !22, null}
!140 = metadata !{i32 16, i32 0, metadata !22, null}
!141 = metadata !{metadata !142, metadata !142, i64 0}
!142 = metadata !{metadata !"int", metadata !143, i64 0}
!143 = metadata !{metadata !"omnipotent char", metadata !144, i64 0}
!144 = metadata !{metadata !"Simple C/C++ TBAA"}
!145 = metadata !{i32 21, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !33, metadata !35, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!147 = metadata !{i32 27, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !33, metadata !146, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_overshift_check.c]
!149 = metadata !{i32 29, i32 0, metadata !35, null}
!150 = metadata !{i32 16, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !44, metadata !46, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!152 = metadata !{i32 17, i32 0, metadata !151, null}
!153 = metadata !{i32 19, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !44, metadata !46, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!155 = metadata !{i32 22, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !44, metadata !154, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!157 = metadata !{i32 25, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !44, metadata !156, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!159 = metadata !{i32 26, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !44, metadata !158, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!161 = metadata !{i32 27, i32 0, metadata !160, null}
!162 = metadata !{i32 28, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !44, metadata !158, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/klee_range.c]
!164 = metadata !{i32 29, i32 0, metadata !163, null}
!165 = metadata !{i32 32, i32 0, metadata !156, null}
!166 = metadata !{i32 34, i32 0, metadata !46, null}
!167 = metadata !{i32 16, i32 0, metadata !58, null}
!168 = metadata !{i32 17, i32 0, metadata !58, null}
!169 = metadata !{metadata !169, metadata !170, metadata !171}
!170 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!171 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!172 = metadata !{metadata !143, metadata !143, i64 0}
!173 = metadata !{metadata !173, metadata !170, metadata !171}
!174 = metadata !{i32 18, i32 0, metadata !58, null}
!175 = metadata !{i32 16, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !75, metadata !77, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!177 = metadata !{i32 19, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !75, metadata !77, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!179 = metadata !{i32 20, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !75, metadata !178, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!181 = metadata !{metadata !181, metadata !170, metadata !171}
!182 = metadata !{metadata !182, metadata !170, metadata !171}
!183 = metadata !{i32 22, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !75, metadata !178, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/dcsandr/projects/fp-analysis/klee/build/runtime/Intrinsic//home/dcsandr/projects/fp-analysis/klee/runtime/Intrinsic/memmove.c]
!185 = metadata !{i32 24, i32 0, metadata !184, null}
!186 = metadata !{i32 23, i32 0, metadata !184, null}
!187 = metadata !{metadata !187, metadata !170, metadata !171}
!188 = metadata !{metadata !188, metadata !170, metadata !171}
!189 = metadata !{i32 28, i32 0, metadata !77, null}
!190 = metadata !{i32 15, i32 0, metadata !91, null}
!191 = metadata !{i32 16, i32 0, metadata !91, null}
!192 = metadata !{metadata !192, metadata !170, metadata !171}
!193 = metadata !{metadata !193, metadata !170, metadata !171}
!194 = metadata !{i32 17, i32 0, metadata !91, null}
!195 = metadata !{i32 13, i32 0, metadata !105, null}
!196 = metadata !{i32 14, i32 0, metadata !105, null}
!197 = metadata !{i32 15, i32 0, metadata !105, null}
