#include <curses.h>
#include "_curses.h"

int wadd_wchnstr(WINDOW * win, const cchar_t * wchstr, int n)
{
	(void)win; (void)wchstr; (void)n;
	return 0;
}

CURSES_FUNCTION2(int, add_wchnstr, const cchar_t *, int)

/*
XOPEN(4)
LINK(curses)
*/
