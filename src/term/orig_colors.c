#include <curses.h>

#define orig_colors tigetstr("oc")

/** set all colors and color pairs to original **/

/*
TERMINFO_NAME(oc)
TERMCAP_NAME(oc)
XOPEN(400)
*/
