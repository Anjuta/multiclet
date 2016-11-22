; ModuleID = '/home/guerre/multiclet/2/2.c'
source_filename = "/home/guerre/multiclet/2/2.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32-i64:64-f32:32-f64:64-v64:64-n32-S64"
target triple = "multiclet"

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca [5 x double], align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %5, align 4
  store double 4.999750e-01, double* %2, align 8
  %6 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 1
  store double 1.000000e+00, double* %6, align 8
  %7 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 2
  store double -1.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 3
  store double -1.000000e+00, double* %8, align 8
  %9 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 4
  store double -1.000000e+00, double* %9, align 8
  store i32 1, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %72, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %75

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 2
  %18 = load double, double* %17, align 8
  %19 = fadd double %16, %18
  %20 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 3
  %21 = load double, double* %20, align 8
  %22 = fadd double %19, %21
  %23 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 4
  %24 = load double, double* %23, align 8
  %25 = fsub double %22, %24
  %26 = load double, double* %2, align 8
  %27 = fmul double %25, %26
  %28 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 1
  store double %27, double* %28, align 8
  %29 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 2
  %32 = load double, double* %31, align 8
  %33 = fadd double %30, %32
  %34 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 3
  %35 = load double, double* %34, align 8
  %36 = fsub double %33, %35
  %37 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 4
  %38 = load double, double* %37, align 8
  %39 = fadd double %36, %38
  %40 = load double, double* %2, align 8
  %41 = fmul double %39, %40
  %42 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 2
  store double %41, double* %42, align 8
  %43 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = fsub double %44, %46
  %48 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 3
  %49 = load double, double* %48, align 8
  %50 = fadd double %47, %49
  %51 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 4
  %52 = load double, double* %51, align 8
  %53 = fadd double %50, %52
  %54 = load double, double* %2, align 8
  %55 = fmul double %53, %54
  %56 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 3
  store double %55, double* %56, align 8
  %57 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = fsub double -0.000000e+00, %58
  %60 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 2
  %61 = load double, double* %60, align 8
  %62 = fadd double %59, %61
  %63 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 3
  %64 = load double, double* %63, align 8
  %65 = fadd double %62, %64
  %66 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 4
  %67 = load double, double* %66, align 8
  %68 = fadd double %65, %67
  %69 = load double, double* %2, align 8
  %70 = fmul double %68, %69
  %71 = getelementptr inbounds [5 x double], [5 x double]* %3, i32 0, i32 4
  store double %70, double* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %14
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %10

; <label>:75:                                     ; preds = %10
  ret i32 0
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
