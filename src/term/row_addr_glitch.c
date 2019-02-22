#include <curses.h>

#define row_addr_glitch tigetflag("xvpa")

/** only positive motion for TERMCAP(vpa)/TERMCAP(mvpa) **/

/*
TERMINFO_NAME(xvpa)
TERMCAP_NAME(YD)
XOPEN(400)
*/
