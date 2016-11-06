int main() {
	int J;
	long I, N4;

	N4 = 1000;

	J = 1;
	for (I = 1; I <= N4; I++) {
		if (J == 1)
			J = 2;
		else
			J = 3;

		if (J > 2)
			J = 0;
		else
			J = 1;

		if (J < 1)
			J = 1;
		else
			J = 0;
	}

	return 0;
}
