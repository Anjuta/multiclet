; ModuleID = '/home/guerre/multiclet/7/7.c'
source_filename = "/home/guerre/multiclet/7/7.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32-i64:64-f32:32-f64:64-v64:64-n32-S64"
target triple = "multiclet"

@T = common global double 0.000000e+00, align 8
@T2 = common global double 0.000000e+00, align 8

; Function Attrs: nounwind
define void @P3(double, double, double*) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 4
  %9 = load double, double* %4, align 8
  store double %9, double* %7, align 8
  %10 = load double, double* %5, align 8
  store double %10, double* %8, align 8
  %11 = load double, double* @T, align 8
  %12 = load double, double* %7, align 8
  %13 = load double, double* %8, align 8
  %14 = fadd double %12, %13
  %15 = fmul double %11, %14
  store double %15, double* %7, align 8
  %16 = load double, double* @T, align 8
  %17 = load double, double* %7, align 8
  %18 = load double, double* %8, align 8
  %19 = fadd double %17, %18
  %20 = fmul double %16, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = load double, double* %8, align 8
  %23 = fadd double %21, %22
  %24 = load double, double* @T2, align 8
  %25 = fdiv double %23, %24
  %26 = load double*, double** %6, align 4
  store double %25, double* %26, align 8
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %5, align 4
  store double 4.999750e-01, double* @T, align 8
  store double 2.000000e+00, double* @T2, align 8
  store double 1.000000e+00, double* %2, align 8
  store double 1.000000e+00, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store i32 1, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %14, %0
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %7
  %12 = load double, double* %2, align 8
  %13 = load double, double* %3, align 8
  call void @P3(double %12, double %13, double* %4)
  br label %14

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %7

; <label>:17:                                     ; preds = %7
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
