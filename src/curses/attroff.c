#include <curses.h>
#include "_curses.h"

int wattroff(WINDOW * win, int attrs)
{
	return ERR;
}

CURSES_WFN1(int, attroff, int)

/*
XOPEN(4)
LINK(curses)
*/
