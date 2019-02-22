#include <curses.h>
#include "_curses.h"

int winsnstr(WINDOW * win, const char * str, int n)
{
	return ERR;
}

CURSES_FUNCTION2(int, insnstr, const char *, int)

/*
XOPEN(400)
LINK(curses)
*/
