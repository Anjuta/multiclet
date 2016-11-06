/* Function: matrix_mul_matrix
	Multiply a matrix by a matrix.
	Basic code is used in many algorithms, mostly with minor changes such as scaling.
*/
void main(ee_u32 N, MATRES *C, MATDAT *A, MATDAT *B) {
	ee_u32 i,j,k;
	for (i=0; i<N; i++) {
		for (j=0; j<N; j++) {
			C[i*N+j]=0;
			for(k=0;k<N;k++)
			{
				C[i*N+j]+=(MATRES)A[i*N+k] * (MATRES)B[k*N+j];
			}
		}
	}
}