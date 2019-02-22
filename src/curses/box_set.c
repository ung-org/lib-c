#include <curses.h>
#include "stddef.h"

int box_set(WINDOW * win, const cchar_t * verch, const cchar_t * horch)
{
	return wborder(win, verch, verch, horch, horch, NULL, NULL, NULL, NULL);
}

/*
XOPEN(400)
LINK(curses)
*/
