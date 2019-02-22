#include <curses.h>

#define exit_micro_mode tigetstr("rmicm")

/** disable micro motion capabilities **/

/*
TERMINFO_NAME(rmicm)
TERMCAP_NAME(ZT)
XOPEN(400)
*/
