#include <curses.h>
#include "_curses.h"

int waddnstr(WINDOW * win, const char * str, int n)
{
	(void)win; (void)str; (void)n;
	return 0;
}

CURSES_FUNCTION2(int, addnstr, const char *, int)

/*
XOPEN(400)
LINK(curses)
*/
