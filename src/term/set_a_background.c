#include <curses.h>

#define set_a_background tigetstr("setab")

/** set background color to #1 using ANSI escape **/

/*
TERMINFO_NAME(setab)
TERMCAP_NAME(AB)
XOPEN(400)
*/
