int main() {
	int J, K;
	long I, N10 = 1000;

	J = 2;
	K = 3;

	for (I = 1; I <= N10; I++) {
		J = J + K;
		K = J + K;
		J = K - J;
		K = K - J - J;
	}
}