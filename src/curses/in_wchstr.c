#include <curses.h>
#include "_curses.h"

int win_wchstr(WINDOW * win, cchar_t * wcstr)
{
	return ERR;
}

CURSES_FUNCTION(int, in_wchstr, cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
