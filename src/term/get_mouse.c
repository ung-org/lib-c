#include <curses.h>

#define get_mouse tigetstr("getm")

/** curses should get button events **/

/*
TERMINFO_NAME(getm)
TERMCAP_NAME(Gm)
XOPEN(400)
*/
