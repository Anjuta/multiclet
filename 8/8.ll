; ModuleID = '/home/guerre/multiclet/8/8.c'
source_filename = "/home/guerre/multiclet/8/8.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32-i64:64-f32:32-f64:64-v64:64-n32-S64"
target triple = "multiclet"

@K = common global i32 0, align 4
@E1 = common global [5 x double] zeroinitializer, align 8
@J = common global i32 0, align 4
@L = common global i32 0, align 4

; Function Attrs: nounwind
define void @P0() #0 {
  %1 = load i32, i32* @K, align 4
  %2 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i32 %1
  %3 = load double, double* %2, align 8
  %4 = load i32, i32* @J, align 4
  %5 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i32 %4
  store double %3, double* %5, align 8
  %6 = load i32, i32* @L, align 4
  %7 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i32 %6
  %8 = load double, double* %7, align 8
  %9 = load i32, i32* @K, align 4
  %10 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i32 %9
  store double %8, double* %10, align 8
  %11 = load i32, i32* @J, align 4
  %12 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i32 %11
  %13 = load double, double* %12, align 8
  %14 = load i32, i32* @L, align 4
  %15 = getelementptr inbounds [5 x double], [5 x double]* @E1, i32 0, i32 %14
  store double %13, double* %15, align 8
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %2, align 4
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 2), align 8
  store double 3.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 3), align 8
  store i32 1, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %9, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %4
  call void @P0()
  br label %9

; <label>:9:                                      ; preds = %8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %4

; <label>:12:                                     ; preds = %4
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
