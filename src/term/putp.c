#include <term.h>
#include <curses.h>

int putp(const char * str)
{
	return tputs(str, 1, putchar);
}

/*
XOPEN(400)
LINK(curses)
*/
