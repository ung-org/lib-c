#include <curses.h>

#define newline tigetstr("nel")

/** newline (behaves like TERMCAP(cr) followed by TERMCAP(lf)) **/

/*
TERMINFO_NAME(nel)
TERMCAP_NAME(nw)
XOPEN(400)
*/
