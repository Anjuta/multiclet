double E1[5];
int J, K, L;
	
void P0(void)
{
	E1[J] = E1[K];
	E1[K] = E1[L];
	E1[L] = E1[J];
}


int main() {
	long N9 = 1000, I;
	
	J = 1;
	K = 2;
	L = 3;
	E1[1] = 1.0;
	E1[2] = 2.0;
	E1[3] = 3.0;

	for (I = 1; I <= N9; I++)
		P0();
}