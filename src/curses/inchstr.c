#include <curses.h>
#include "_curses.h"

int winchstr(WINDOW * win, chtype * chstr)
{
	return ERR;
}

CURSES_FUNCTION(int, inchstr, chtype *)

/*
XOPEN(400)
LINK(curses)
*/
