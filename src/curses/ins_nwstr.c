#include <curses.h>
#include "_curses.h"

int ins_nwstr(WINDOW * win, const wchar_t * wstr, int n)
{
	return ERR;
}

CURSES_FUNCTION2(int, ins_nwstr, const wchar_t *, int)

/*
XOPEN(400)
LINK(curses)
*/
