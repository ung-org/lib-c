#include <curses.h>
#include "_curses.h"

int winnwstr(WINDOW * win, wchar_t * wstr, int n)
{
	return ERR;
}

CURSES_FUNCTION2(int, innwstr, wchar_t *, int)

/*
XOPEN(400)
LINK(curses)
*/
