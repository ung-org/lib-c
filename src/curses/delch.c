#include <curses.h>
#include "_curses.h"

int wdelch(WINDOW * win)
{
	(void)win;
	return ERR;
}

CURSES_FUNCTION0(int, delch)

/*
XOPEN(4)
LINK(curses)
*/
