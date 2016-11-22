; ModuleID = '/home/guerre/multiclet/3/3.c'
source_filename = "/home/guerre/multiclet/3/3.c"
target datalayout = "e-m:e-p:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32-i64:64-f32:32-f64:64-v64:64-n32-S64"
target triple = "multiclet"

@J = common global i32 0, align 4
@T = common global double 0.000000e+00, align 8
@T2 = common global double 0.000000e+00, align 8

; Function Attrs: nounwind
define void @PA(double*) #0 {
  %2 = alloca double*, align 4
  store double* %0, double** %2, align 4
  store i32 0, i32* @J, align 4
  br label %3

; <label>:3:                                      ; preds = %85, %1
  %4 = load double*, double** %2, align 4
  %5 = getelementptr inbounds double, double* %4, i32 1
  %6 = load double, double* %5, align 8
  %7 = load double*, double** %2, align 4
  %8 = getelementptr inbounds double, double* %7, i32 2
  %9 = load double, double* %8, align 8
  %10 = fadd double %6, %9
  %11 = load double*, double** %2, align 4
  %12 = getelementptr inbounds double, double* %11, i32 3
  %13 = load double, double* %12, align 8
  %14 = fadd double %10, %13
  %15 = load double*, double** %2, align 4
  %16 = getelementptr inbounds double, double* %15, i32 4
  %17 = load double, double* %16, align 8
  %18 = fsub double %14, %17
  %19 = load double, double* @T, align 8
  %20 = fmul double %18, %19
  %21 = load double*, double** %2, align 4
  %22 = getelementptr inbounds double, double* %21, i32 1
  store double %20, double* %22, align 8
  %23 = load double*, double** %2, align 4
  %24 = getelementptr inbounds double, double* %23, i32 1
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %2, align 4
  %27 = getelementptr inbounds double, double* %26, i32 2
  %28 = load double, double* %27, align 8
  %29 = fadd double %25, %28
  %30 = load double*, double** %2, align 4
  %31 = getelementptr inbounds double, double* %30, i32 3
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  %34 = load double*, double** %2, align 4
  %35 = getelementptr inbounds double, double* %34, i32 4
  %36 = load double, double* %35, align 8
  %37 = fadd double %33, %36
  %38 = load double, double* @T, align 8
  %39 = fmul double %37, %38
  %40 = load double*, double** %2, align 4
  %41 = getelementptr inbounds double, double* %40, i32 2
  store double %39, double* %41, align 8
  %42 = load double*, double** %2, align 4
  %43 = getelementptr inbounds double, double* %42, i32 1
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %2, align 4
  %46 = getelementptr inbounds double, double* %45, i32 2
  %47 = load double, double* %46, align 8
  %48 = fsub double %44, %47
  %49 = load double*, double** %2, align 4
  %50 = getelementptr inbounds double, double* %49, i32 3
  %51 = load double, double* %50, align 8
  %52 = fadd double %48, %51
  %53 = load double*, double** %2, align 4
  %54 = getelementptr inbounds double, double* %53, i32 4
  %55 = load double, double* %54, align 8
  %56 = fadd double %52, %55
  %57 = load double, double* @T, align 8
  %58 = fmul double %56, %57
  %59 = load double*, double** %2, align 4
  %60 = getelementptr inbounds double, double* %59, i32 3
  store double %58, double* %60, align 8
  %61 = load double*, double** %2, align 4
  %62 = getelementptr inbounds double, double* %61, i32 1
  %63 = load double, double* %62, align 8
  %64 = fsub double -0.000000e+00, %63
  %65 = load double*, double** %2, align 4
  %66 = getelementptr inbounds double, double* %65, i32 2
  %67 = load double, double* %66, align 8
  %68 = fadd double %64, %67
  %69 = load double*, double** %2, align 4
  %70 = getelementptr inbounds double, double* %69, i32 3
  %71 = load double, double* %70, align 8
  %72 = fadd double %68, %71
  %73 = load double*, double** %2, align 4
  %74 = getelementptr inbounds double, double* %73, i32 4
  %75 = load double, double* %74, align 8
  %76 = fadd double %72, %75
  %77 = load double, double* @T2, align 8
  %78 = fdiv double %76, %77
  %79 = load double*, double** %2, align 4
  %80 = getelementptr inbounds double, double* %79, i32 4
  store double %78, double* %80, align 8
  %81 = load i32, i32* @J, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @J, align 4
  %83 = load i32, i32* @J, align 4
  %84 = icmp slt i32 %83, 6
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %3
  br label %3

; <label>:86:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x double], align 8
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %3, align 4
  store double 4.999750e-01, double* @T, align 8
  store double 2.000000e+00, double* @T2, align 8
  %5 = getelementptr inbounds [5 x double], [5 x double]* %4, i32 0, i32 1
  store double 1.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds [5 x double], [5 x double]* %4, i32 0, i32 2
  store double -1.000000e+00, double* %6, align 8
  %7 = getelementptr inbounds [5 x double], [5 x double]* %4, i32 0, i32 3
  store double -1.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds [5 x double], [5 x double]* %4, i32 0, i32 4
  store double -1.000000e+00, double* %8, align 8
  store i32 1, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %15, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [5 x double], [5 x double]* %4, i32 0, i32 0
  call void @PA(double* %14)
  br label %15

; <label>:15:                                     ; preds = %13
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %9

; <label>:18:                                     ; preds = %9
  ret i32 0
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
