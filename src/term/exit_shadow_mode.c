#include <curses.h>

#define exit_shadow_mode tigetstr("rshm")

/** disable shadow printing **/

/*
TERMINFO_NAME(rshm)
TERMCAP_NAME(ZU)
XOPEN(400)
*/
