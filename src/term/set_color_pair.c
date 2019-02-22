#include <curses.h>

#define set_color_pair tigetstr("scp")

/** set current color pair to #1 **/

/*
TERMINFO_NAME(scp)
TERMCAP_NAME(sp)
XOPEN(400)
*/
