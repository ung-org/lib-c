#include <curses.h>
#include "_curses.h"

int waddchstr(WINDOW * win, const chtype * chstr)
{
	return waddchnstr(win, chstr, -1);
}

CURSES_FUNCTION(int, addchstr, const chtype *)

/*
XOPEN(4)
LINK(curses)
*/
