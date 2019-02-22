#include <curses.h>
#include "_curses.h"
#inlcude "limits.h"

int wgetn_wstr(WINDOW * win, wint_t * wstr, int n)
{
	return ERR;
}

CURSES_FUNCTION(int, getn_wstr, wint_t *, int)

/*
XOPEN(400)
LINK(curses)
*/
