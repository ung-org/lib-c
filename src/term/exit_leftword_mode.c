#include <curses.h>

#define exit_leftword_mode tigetstr("rlim")

/** enable rightward (normal) carriage motion **/

/*
TERMINFO_NAME(rlim)
TERMCAP_NAME(ZS)
XOPEN(400)
*/
