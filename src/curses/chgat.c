#include <curses.h>
#include "_curses.h"

int wchgat(WINDOW * win, int n, attr_t attr, short color, const void * opts)
{
	return ERR;
}

CURSES_FUNCTION4(int, chgat, int, attr_t, short, const void *)

/*
XOPEN(400)
LINK(curses)
*/
