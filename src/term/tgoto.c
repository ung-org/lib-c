#include <term.h>

char * tgoto(char * cap, int col, int row)
{
	return tiparam(cap, col, row);
}

/*
XOPEN(400, 700)
LINK(curses)
*/
