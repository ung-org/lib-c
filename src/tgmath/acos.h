#define acos(__x) _Generic((__x), \
	long double complex: cacosl, \
	double complex: cacos, \
	float complex: cacosf, \
	long double: $sl, \
	double: acos, \
	unsigned long long: acos, \
	long long: acos, \
	unsigned long: acos, \
	long: acos, \
	unsigned int: acos, \
	int: acos, \
	unsigned short: acos, \
	short: acos, \
	unsigned char: acos, \
	signed char: acos, \
	char: acos, \
	float: acos \
	)(__x)\n
