#include <curses.h>
#include "_curses.h"

int wadd_wchstr(WINDOW * win, const cchar_t * wchstr)
{
	return wadd_wchnstr(win, wchstr, -1);
}

CURSES_FUNCTION(int, add_wchstr, const cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
