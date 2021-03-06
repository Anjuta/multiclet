.data

DOUBLE_DATA:
	.double\
		0f-1.0, 0f.499975

LONG_DATA:
	.long\
		1000 // N1

.text

	rdl LONG_DATA
	wrl @1, #R6  // Количество повторений
	rdf DOUBLE_DATA + 8
	wrf @1, #R1  // T

	// Чтение переменных и помещение из в коммутатор. Сколько переменных может быть помещено в коммутатор?
	rdf DOUBLE_DATA  // Начальное значение X1, X2, X3, X4
	wrf @1, #R2  // X1
	wrf @2, #R3  // X2
	wrf @3, #R4  // X3
	wrf @4, #R5  // X4

	complete

CYCLE:	
	// X1 = (X1 + X2 + X3 - X4) * T;
	addf @1, @1
	addf @1, @2
	subf @1, @3
	mulf @1, #R1
	wrf @1, #R2  // X1

	// X2 = (X1 + X2 - X3 + X4) * T;
	addf @2, @6
	subf @1, @7
	addf @1, @8
	mulf @1, #R1
	wrf @1, #R3  // X2

	// X3 = (X1 - X2 + X3 + X4) * T;
	subf @6, @2
	addf @1, @12
	addf @1, @13
	mulf @1, #R1
	wrf @1, #R4  // X3

	// X4 = (-X1 + X2 + X3 + X4) * T;
	addf @7, @2
	addf @1, @17
	subf @1, @14
	mulf @1, #R1
	wrf @1, #R5 // X4

	// N1 -= 1
	getl #R6
	getsl -1
	addl @2, @1
	wrl @1, #R6

	jne @2, CYCLE
	complete
