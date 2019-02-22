#include <curses.h>
#include "_curses.h"

int winchnstr(WINDOW * win, chtype * chstr, int n)
{
	return ERR;
}

CURSES_FUNCTION2(int, inchnstr, chtype *, int)

/*
XOPEN(400)
LINK(curses)
*/
