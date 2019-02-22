#include <curses.h>
#include "_curses.h"

int waddwstr(WINDOW * win, const wchar_t * wstr)
{
	return waddwnstr(win, wstr, -1);
}

CURSES_FUNCTION(int, addwstr, const wchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
