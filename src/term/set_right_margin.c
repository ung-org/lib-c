#include <curses.h>

#define set_right_margin tigetstr("smgr")

/** set right margin at current column **/

/*
TERMINFO_NAME(smgr)
TERMCAP_NAME(MR)
XOPEN(400)
*/
