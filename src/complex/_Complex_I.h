#include <complex.h>

#define _Complex_I \
	 (((union { \
		float _Complex __c; \
		float __f[2]; \
	}){ .__f = { 0.0, 1.0 } }).__c)


/*
STDC(199901)
*/
