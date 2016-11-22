; ModuleID = '/home/guerre/multiclet/4/4.c'
source_filename = "/home/guerre/multiclet/4/4.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32-i64:64-f32:32-f64:64-v64:64-n32-S64"
target triple = "multiclet"

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %4, align 4
  store i32 1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %25, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i32 2, i32* %2, align 4
  br label %14

; <label>:13:                                     ; preds = %9
  store i32 3, i32* %2, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  %15 = load i32, i32* %2, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  store i32 0, i32* %2, align 4
  br label %19

; <label>:18:                                     ; preds = %14
  store i32 1, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 1, i32* %2, align 4
  br label %24

; <label>:23:                                     ; preds = %19
  store i32 0, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %22
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

; <label>:28:                                     ; preds = %5
  ret i32 0
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
