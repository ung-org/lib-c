#include <curses.h>
#include "_curses.h"

int wsetscrreg(WINDOW * win, int top, int bot)
{
	return ERR;
}

CURSES_WFN2(int, setscrreg, int, int)

/*
XOPEN(4)
LINK(curses)
*/
