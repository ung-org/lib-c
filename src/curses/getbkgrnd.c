#include <curses.h>
#include "_curses.h"

chtype wgetbkgrnd(WINDOW * win, cchar_t * wch)
{
	return ERR;
}

CURSES_WFN1(int, getbkgrnd, cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
