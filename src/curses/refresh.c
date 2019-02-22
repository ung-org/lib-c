#include <curses.h>
#include "_curses.h"

int wrefresh(WINDOW * win)
{
	return ERR;
}

CURSES_WFN0(int, refresh)

/*
XOPEN(4)
LINK(curses)
*/
