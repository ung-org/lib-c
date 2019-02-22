#include <curses.h>
#include "_curses.h"

void wbkgdset(WINDOW * win, chtype ch)
{
	(void)win; (void)ch;
}

CURSES_VWFN1(bkgdset, chtype)

/*
XOPEN(400)
LINK(curses)
*/
