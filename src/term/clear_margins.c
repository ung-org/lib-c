#include <curses.h>

#define clear_margins tigetstr("mgc")

/** clear all margins (top, bottom, and sides) **/

/*
TERMINFO_NAME(mgc)
TERMCAP_NAME(MC)
XOPEN(400)
*/
