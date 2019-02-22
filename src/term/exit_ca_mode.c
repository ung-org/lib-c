#include <curses.h>

#define exit_ca_mode tigetstr("rmcup")

/** string to end programs that use TERMCAP(cup) **/

/*
TERMINFO_NAME(rmcup)
TERMCAP_NAME(te)
XOPEN(400)
*/
