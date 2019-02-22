#include <curses.h>
#include "_curses.h"

int ins_wch(WINDOW * win, const cchar_t * wch)
{
	return ERR;
}

CURSES_FUNCTION(int, ins_wch, const cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
