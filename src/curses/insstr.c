#include <curses.h>
#include "_curses.h"

int winsstr(WINDOW * win, const char * str)
{
	return ERR;
}

CURSES_FUNCTION(int, insstr, const char *)

/*
XOPEN(400)
LINK(curses)
*/
