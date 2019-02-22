#include <curses.h>

#define set_foreground tigetstr("setf")

/** set foreground color to #1 **/

/*
TERMINFO_NAME(setf)
TERMCAP_NAME(Sf)
XOPEN(400)
*/
