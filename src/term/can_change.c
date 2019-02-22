#include <curses.h>

#define can_change tigetflag("ccc")

/** terminal can re-define exising color **/

/*
TERMINFO_NAME(ccc)
TERMCAP_NAME(cc)
XOPEN(400)
*/
