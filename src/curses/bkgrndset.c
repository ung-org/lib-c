#include <curses.h>
#include "_curses.h"

void wbkgrndset(WINDOW * win, const cchar_t * wch)
{
	(void)win; (void)ch;
}

CURSES_VWFN1(bkgrndset, const cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
