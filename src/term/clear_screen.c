#include <curses.h>

#define clear_screen tigetstr("clear")

/** clear screen and home cursor **/

/*
TERMINFO_NAME(clear)
TERMCAP_NAME(cl)
XOPEN(400)
*/
