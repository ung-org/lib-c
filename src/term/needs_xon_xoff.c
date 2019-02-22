#include <curses.h>

#define needs_xon_xoff tigetflag("nxon")

/** padding won't work, xon/xoff required **/

/*
TERMINFO_NAME(nxon)
TERMCAP_NAME(nx)
XOPEN(400)
*/
