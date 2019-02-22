#include <curses.h>

#define cursor_visible tigetstr("cvvis")

/** make cursor very visible **/

/*
TERMINFO_NAME(cvvis)
TERMCAP_NAME(vs)
XOPEN(400)
*/
