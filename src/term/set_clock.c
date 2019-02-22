#include <curses.h>

#define set_clock tigetstr("sclk")

/** set clock to #1 hours, #2 minutes, #3 seconds **/

/*
TERMINFO_NAME(sclk)
TERMCAP_NAME(SC)
XOPEN(400)
*/
