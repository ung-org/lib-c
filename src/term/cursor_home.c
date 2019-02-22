#include <curses.h>

#define cursor_home tigetstr("home")

/** home cursor (if no TERMCAP(cup)) **/

/*
TERMINFO_NAME(home)
TERMCAP_NAME(ho)
XOPEN(400)
*/
