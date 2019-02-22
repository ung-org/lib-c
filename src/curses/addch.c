#include <curses.h>
#include "_curses.h"

int waddch(WINDOW * win, const chtype ch)
{
	(void)win; (void)ch;
	return 0;
}

CURSES_FUNCTION(int, addch, const chtype)

/*
XOPEN(4)
LINK(curses)
*/
