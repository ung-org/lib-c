#include <curses.h>

#define set_a_foreground tigetstr("setaf")

/** set foreground color to #1 using ANSI escape **/

/*
TERMINFO_NAME(setaf)
TERMCAP_NAME(AF)
XOPEN(400)
*/
