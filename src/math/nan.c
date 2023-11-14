#if 0

# define TGSOURCE "nan.c"
#include "_tgmath.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>

#define strtodf strtof
#define strtodl strtold

TYPE TGFN(nan)(const char *tagp)
{
	if (tagp) {
		char ncharseq[strlen(tagp) + 6];
		strcpy(ncharseq, "NAN(");
		strcat(ncharseq, tagp);
		strcat(ncharseq, ")");
		return TGFN(strtod)(ncharseq, (char**)NULL);
	}
	return TGFN(strtod)("NAN", (char**)NULL);
}

/*
STDC(199901)
LINK(m)
*/


#endif
