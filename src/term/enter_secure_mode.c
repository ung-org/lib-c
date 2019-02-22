#include <curses.h>

#define enter_secure_mode tigetstr("invis")

/** turn on blank mode (characters invisible) **/

/*
TERMINFO_NAME(invis)
TERMCAP_NAME(mk)
XOPEN(400)
*/
