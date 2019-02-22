#include <curses.h>

#define insert_null_glitch tigetflag("in")

/** insert mode distinguishes nulls **/

/*
TERMINFO_NAME(in)
TERMCAP_NAME(in)
XOPEN(400)
*/
