#include <curses.h>
#include "_curses.h"

int win_wch(WINDOW * win, cchar_t * wcval)
{
	return ERR;
}

CURSES_FUNCTION(int, in_wch, cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
