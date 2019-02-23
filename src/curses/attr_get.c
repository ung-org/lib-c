#include <curses.h>
#include "_curses.h"

int wattr_get(WINDOW * win, attr_t * attrs, short * color_pair_number, void * opts)
{
	return ERR;
}

CURSES_WFN2(int, attr_get, attr_t *, short *, void *)

/*
XOPEN(400)
LINK(curses)
*/
