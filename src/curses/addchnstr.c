#include <curses.h>
#include "_curses.h"

int waddchnstr(WINDOW * win, const chtype * chstr, int n)
{
	(void)win; (void)chstr; (void)n;
	return 0;
}

CURSES_FUNCTION2(int, addchnstr, const chtype *, int)

/*
XOPEN(400)
LINK(curses)
*/
