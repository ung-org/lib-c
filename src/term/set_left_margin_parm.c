#include <curses.h>

#define set_left_margin_parm tigetstr("smglp")

/** set left (right) margin at column #1 (#2) **/

/*
TERMINFO_NAME(smglp)
TERMCAP_NAME(Zm)
XOPEN(400)
*/
