int main() {
	double T, E1[5];
	long I, N2;

	N2 = 1000;
	T = .499975;

	E1[1] = 1.0;
	E1[2] = -1.0;
	E1[3] = -1.0;
	E1[4] = -1.0;

	for (I = 1; I <= N2; I++) {
		E1[1] = (E1[1] + E1[2] + E1[3] - E1[4]) * T;
		E1[2] = (E1[1] + E1[2] - E1[3] + E1[4]) * T;
		E1[3] = (E1[1] - E1[2] + E1[3] + E1[4]) * T;
		E1[4] = (-E1[1] + E1[2] + E1[3] + E1[4]) * T;
	}

	return 0;
}