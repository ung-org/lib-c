#include <curses.h>

#define enter_protected_mode tigetstr("prot")

/** turn on protected mode **/

/*
TERMINFO_NAME(prot)
TERMCAP_NAME(mp)
XOPEN(400)
*/
