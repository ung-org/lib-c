#include <curses.h>

int box(WINDOW * win, chtype verch, chtype horch)
{
	return wborder(win, verch, verch, horch, horch, 0, 0, 0, 0);
}

/*
XOPEN(4)
LINK(curses)
*/
