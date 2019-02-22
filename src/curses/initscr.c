#include <curses.h>
#include "stdio.h"
#include "stdlib.h"

WINDOW * initscr(void)
{
	(void)newterm(getenv("TERM"), stdout, stdin);
	return stdscr;
}

/*
XOPEN(4)
LINK(curses)
*/
