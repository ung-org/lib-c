#include <curses.h>
#include "_curses.h"

int wborder_set(WINDOW * win, const cchar_t * ls, const cchar_t * rs, const cchar_t * ts, const cchar_t * bs, const cchar_t * tl, const cchar_t * tr, const cchar_t * bl, const cchar_t * br)
{
	return ERR;
}

CURSES_WFN8(int, border_set, const cchar_t *, const cchar_t *, const cchar_t *, const cchar_t *, const cchar_t *, const cchar_t *, const cchar_t *, const cchar_t *)

/*
XOPEN(400)
LINK(curses)
*/
