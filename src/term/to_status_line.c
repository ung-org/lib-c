#include <curses.h>

#define to_status_line tigetstr("tsl")

/** go to status line, col #1 **/

/*
TERMINFO_NAME(tsl)
TERMCAP_NAME(ts)
XOPEN(400)
*/
