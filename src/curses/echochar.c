#include <curses.h>
#include "_curses.h"

int wechochar(WINDOW * win, const chtype wch)
{
	return ERR;
}

CURSES_WFN1(int, echochar, const chtype wch)

/*
XOPEN(400)
LINK(curses)
*/
