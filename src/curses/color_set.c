#include <curses.h>
#include "_curses.h"

int wcolor_set(WINDOW * win, short color_pair_number, void * opts)
{
	return ERR;
}

CURSES_WFN2(int, color_set, short, void *)

/*
XOPEN(400)
LINK(curses)
*/
