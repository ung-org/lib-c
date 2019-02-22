#include <curses.h>

#define move_standout_mode tigetflag("msgr")

/** safe to move in standout modes **/

/*
TERMINFO_NAME(msgr)
TERMCAP_NAME(ms)
XOPEN(400)
*/
