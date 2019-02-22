#include <curses.h>

#define cursor_right tigetstr("cufl")

/** non-destructive space (cursor or carriage right) **/

/*
TERMINFO_NAME(cufl)
TERMCAP_NAME(nd)
XOPEN(400)
*/
