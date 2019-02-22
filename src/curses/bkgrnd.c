#include <curses.h>
#include "_curses.h"

int wbkgrnd(WINDOW * win, const cchar_t * wch)
{
	return ERR;
}

CURSES_WFN1(int, bkgrnd, const cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
