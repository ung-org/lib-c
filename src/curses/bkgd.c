#include <curses.h>
#include "_curses.h"

int wbkgd(WINDOW * win, chtype ch)
{
	return ERR;
}

CURSES_WFN1(int, bkgd, chtype)

/*
XOPEN(400)
LINK(curses)
*/
