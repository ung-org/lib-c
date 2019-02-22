#include <curses.h>

#define clr_bol tigetstr("el1")

/** clear to beginning of line, inclusive **/

/*
TERMINFO_NAME(el1)
TERMCAP_NAME(cb)
XOPEN(400)
*/
