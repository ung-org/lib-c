#include <curses.h>
#include "_curses.h"

int wadd_wch(WINDOW * win, const cchar_t * wch)
{
	(void)win; (void)wch;
	return 0;
}

CURSES_FUNCTION(int, add_wch, const cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
