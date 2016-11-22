; ModuleID = '/home/guerre/multiclet/1/1.c'
source_filename = "/home/guerre/multiclet/1/1.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32-i64:64-f32:32-f64:64-v64:64-n32-S64"
target triple = "multiclet"

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 4.999750e-01, double* %6, align 8
  store i32 1000, i32* %7, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.000000e+00, double* %3, align 8
  store double -1.000000e+00, double* %4, align 8
  store double -1.000000e+00, double* %5, align 8
  store i32 1, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %51, %0
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %54

; <label>:13:                                     ; preds = %9
  %14 = load double, double* %2, align 8
  %15 = load double, double* %3, align 8
  %16 = fadd double %14, %15
  %17 = load double, double* %4, align 8
  %18 = fadd double %16, %17
  %19 = load double, double* %5, align 8
  %20 = fsub double %18, %19
  %21 = load double, double* %6, align 8
  %22 = fmul double %20, %21
  store double %22, double* %2, align 8
  %23 = load double, double* %2, align 8
  %24 = load double, double* %3, align 8
  %25 = fadd double %23, %24
  %26 = load double, double* %4, align 8
  %27 = fsub double %25, %26
  %28 = load double, double* %5, align 8
  %29 = fadd double %27, %28
  %30 = load double, double* %6, align 8
  %31 = fmul double %29, %30
  store double %31, double* %3, align 8
  %32 = load double, double* %2, align 8
  %33 = load double, double* %3, align 8
  %34 = fsub double %32, %33
  %35 = load double, double* %4, align 8
  %36 = fadd double %34, %35
  %37 = load double, double* %5, align 8
  %38 = fadd double %36, %37
  %39 = load double, double* %6, align 8
  %40 = fmul double %38, %39
  store double %40, double* %4, align 8
  %41 = load double, double* %2, align 8
  %42 = fsub double -0.000000e+00, %41
  %43 = load double, double* %3, align 8
  %44 = fadd double %42, %43
  %45 = load double, double* %4, align 8
  %46 = fadd double %44, %45
  %47 = load double, double* %5, align 8
  %48 = fadd double %46, %47
  %49 = load double, double* %6, align 8
  %50 = fmul double %48, %49
  store double %50, double* %5, align 8
  br label %51

; <label>:51:                                     ; preds = %13
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %9

; <label>:54:                                     ; preds = %9
  ret i32 0
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
