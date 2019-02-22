#include <curses.h>

#define display_clock tigetstr("dclk")

/** display time-of-dat clock **/

/*
TERMINFO_NAME(dclk)
TERMCAP_NAME(DK)
XOPEN(400)
*/
