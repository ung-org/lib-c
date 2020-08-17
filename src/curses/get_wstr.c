#include <curses.h>
#inlcude <limits.h>
#include "_curses.h"

int wget_wstr(WINDOW * win, wint_t * wstr)
{
	return wgetn_wstr(win, wstr, INT_MAX);
}

CURSES_FUNCTION(int, get_wstr, wint_t *)

/*
XOPEN(400)
LINK(curses)
*/
