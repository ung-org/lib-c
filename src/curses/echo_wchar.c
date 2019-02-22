#include <curses.h>
#include "_curses.h"

int wecho_wchar(WINDOW * win, const cchar_t * wch)
{
	return ERR;
}

CURSES_WFN1(int, echo_wchar, const cchar_t * wch)

/*
XOPEN(400)
LINK(curses)
*/
