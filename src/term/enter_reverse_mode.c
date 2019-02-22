#include <curses.h>

#define enter_reverse_mode tigetstr("rev")

/** turn on reverse video mode **/

/*
TERMINFO_NAME(rev)
TERMCAP_NAME(mr)
XOPEN(400)
*/
