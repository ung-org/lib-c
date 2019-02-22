#include <unctrl.h>
#include "curses.h"
#include "ctype.h"
#include "stddef.h"

char * unctrl(chtype c)
{
	static char buf[3];
	char * ret = NULL;
	int ch = c & A_CHARTEXT;

	if (iscntrl(ch)) {
		buf[0] = '^';
		buf[1] = ch + 'A';
		buf[2] = '\0';
		ret = buf;
	} else if (isprint(ch)) {
		buf[0] = ch;
		buf[1] = '\0';
		ret = buf;
	}

	return ret;
}

/*
XOPEN(4)
LINK(curses)
*/
