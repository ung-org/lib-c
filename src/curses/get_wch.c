#include <curses.h>
#include "_curses.h"

int wget_wch(WINDOW * win, wint_t * ch)
{
	return ERR;
}

CURSES_FUNCTION(int, get_wch, wint_t *)

/*
XOPEN(400)
LINK(curses)
*/
