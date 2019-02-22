#include <curses.h>

#define non_dest_scroll_region tigetflag("ndscr")

/** scrolling region is nondestructive **/

/*
TERMINFO_NAME(ndscr)
TERMCAP_NAME(ND)
XOPEN(400)
*/
