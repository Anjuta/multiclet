int main() {
	double X1, X2, X3, X4, T;
	long N1, I;

	T = .499975;
	N1 = 1000;

	X1 = 1.0;
	X2 = -1.0;
	X3 = -1.0;
	X4 = -1.0;

	for (I = 1; I <= N1; I++) {
		X1 = (X1 + X2 + X3 - X4) * T;
		X2 = (X1 + X2 - X3 + X4) * T;
		X3 = (X1 - X2 + X3 + X4) * T;
		X4 = (-X1 + X2 + X3 + X4) * T;
	}
	return 0;
}
