#include <curses.h>
#include "_curses.h"

int wattr_on(WINDOW * win, attr_t attrs, void * opts)
{
	return ERR;
}

CURSES_WFN2(int, attr_on, attr_t, void *)

/*
XOPEN(400)
LINK(curses)
*/
