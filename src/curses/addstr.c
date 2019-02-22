#include <curses.h>
#include "_curses.h"

int waddstr(WINDOW *win, const char * str)
{
	return waddnstr(win, str, -1);
}

CURSES_FUNCTION(int, addstr, const char *)

/*
XOPEN(400)
LINK(curses)
*/
