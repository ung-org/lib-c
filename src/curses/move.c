#include <curses.h>
#include "_curses.h"

int wmove(WINDOW * win, int y, int x)
{
	return ERR;
}

CURSES_WFN2(int, move, int, int)

/*
XOPEN(4)
LINK(curses)
*/
