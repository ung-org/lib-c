#include <curses.h>
#include "_curses.h"

int winwstr(WINDOW * win, wchar_t * wstr)
{
	return ERR;
}

CURSES_FUNCTION(int, inwstr, wchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
