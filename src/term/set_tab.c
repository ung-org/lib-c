#include <curses.h>

#define set_tab tigetstr("hts")

/** set a tab in all rows at the current column **/

/*
TERMINFO_NAME(hts)
TERMCAP_NAME(st)
XOPEN(400)
*/
