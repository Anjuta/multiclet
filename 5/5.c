int main() {
	int J, K, L;
	double E1[5];
	long N6=1000, I;

	J = 1;
	K = 2;
	L = 3;

	for (I = 1; I <= N6; I++) {
		J = J * (K - J) * (L - K);
		K = L * K - (L - J) * K;
		L = (L - K) * (K + J);
		E1[L - 1] = J + K + L;
		E1[K - 1] = J * K * L;
	}
}
