#include <curses.h>
#include "_curses.h"

int ins_wstr(WINDOW * win, const wchar_t * wstr)
{
	return ERR;
}

CURSES_FUNCTION(int, ins_wstr, const wchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
