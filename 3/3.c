int J;
double T, T2;


void PA(double E[])
{
	J = 0;

L10:
	E[1] = (E[1] + E[2] + E[3] - E[4]) * T;
	E[2] = (E[1] + E[2] - E[3] + E[4]) * T;
	E[3] = (E[1] - E[2] + E[3] + E[4]) * T;
	E[4] = (-E[1] + E[2] + E[3] + E[4]) / T2;
	J += 1;

	if (J < 6)
		goto L10;
}


int main() {
	long I, N3;
	double E1[5];

	N3 = 1000;

	T = .499975;
	T2 = 2.0;

	E1[1] = 1.0;
	E1[2] = -1.0;
	E1[3] = -1.0;
	E1[4] = -1.0;

	for (I = 1; I <= N3; I++)
		PA(E1);

	return 0;
}
