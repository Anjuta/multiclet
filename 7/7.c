double T, T2;


void P3(double X, double Y, double *Z)
{
	double X1, Y1;

	X1 = X;
	Y1 = Y;
	X1 = T * (X1 + Y1);
	Y1 = T * (X1 + Y1);
	*Z = (X1 + Y1) / T2;
}


int main() {
	double X, Y, Z;
	long N8 = 1000, I;

	T = .499975;
	T2 = 2.0;


	X = 1.0;
	Y = 1.0;
	Z = 1.0;

	for (I = 1; I <= N8; I++)
		P3(X, Y, &Z);
}