#include <string.h>
#include "stdlib.h"
#include "nonstd/assert.h"

/** collate strings **/
int strcoll(const char *s1, const char *s2)
{
	char *x1 = NULL;
	char *x2 = NULL;
	int ret = 0;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	x1 = malloc(strxfrm(x1, s1, 0));
	x2 = malloc(strxfrm(x2, s2, 0));

	if (x1 && x2) {
		strxfrm(x1, s1, 0);
		strxfrm(x2, s2, 0);
		ret = strcmp(x1, x2);
	}

	free(x1);
	free(x2);

	/*
	RETURN(NEGATIVE, ARGUMENT(s1) collates before ARGUMENT(s2));
	RETURN(ZERO, ARGUMENT(s1) collates equal to ARGUMENT(s2));
	RETURN(POSITIVE, ARGUMENT(s1) collates after ARGUMENT(s2));
	*/
	return ret;
}

/***
compares the collation values of the strings at ARGUMENT(s1) and ARGUMENT(s2).
***/

/*
LC_COLLATE
*/
/*
STDC(1)
*/
