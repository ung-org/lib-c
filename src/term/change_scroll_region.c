#include <curses.h>

#define change_scroll_region tigetstr("csr")

/** change to lines #1 through #2 **/

/*
TERMINFO_NAME(csr)
TERMCAP_NAME(cs)
XOPEN(400)
*/
