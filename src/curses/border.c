#include <curses.h>
#include "_curses.h"

int wborder(WINDOW * win, chtype ls, chtype rs, chtype ts, chtype bs, chtype tl, chtype tr, chtype bl, chtype br)
{
	return ERR;
}

CURSES_WFN8(int, border, chtype, chtype, chtype, chtype, chtype, chtype, chtype, chtype)

/*
XOPEN(400)
LINK(curses)
*/
