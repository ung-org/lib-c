#include <curses.h>

#define parm_left_cursor tigetstr("cub")

/** move cursor left #1 spaces **/

/*
TERMINFO_NAME(cub)
TERMCAP_NAME(LE)
XOPEN(400)
*/
