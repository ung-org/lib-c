#include <curses.h>
#include "_curses.h"

int waddnwstr(WINDOW * win, const wchar_t * wstr, int n)
{
	(void)win; (void)wstr; (void)n;
	return 0;
}

CURSES_FUNCTION2(int, addnwstr, const wchar_t *, int)

/*
XOPEN(400)
LINK(curses)
*/
