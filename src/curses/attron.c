#include <curses.h>
#include "_curses.h"

int wattron(WINDOW * win, int attrs)
{
	return ERR;
}

CURSES_WFN1(int, attron, int)

/*
XOPEN(4)
LINK(curses)
*/
