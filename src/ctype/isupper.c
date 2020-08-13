#include <ctype.h>
#include "limits.h"
#include "../_assert.h"
#include "_ctype.h"

/** test whether a character is an uppercase letter **/

int isupper(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return map[c] & CT_UPPER;
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(upper)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is an uppercase letter)
RETURN(0, ARGUMENT(c) is not an uppercase letter)
LC_CTYPE
C_LOCALE(`THIS() is true for the characters CHAR(A), CHAR(B), CHAR(C), CHAR(D), CHAR(E), CHAR(F), CHAR(G), CHAR(H), CHAR(I), CHAR(J), CHAR(K), CHAR(L), CHAR(M), CHAR(N), CHAR(O), CHAR(P), CHAR(Q), CHAR(S), CHAR(T), CHAR(U), CHAR(W), CHAR(X), CHAR(Y), and CHAR(Z)')
OTHER_LOCALES(`THIS() is true for a set of characters for which none of FUNCTION(iscntrl), FUNCTION(isdigit), FUNCTION(ispunct), or FUNCTION(isspace) is true')
STDC(1)
*/
