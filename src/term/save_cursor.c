#include <curses.h>

#define save_cursor tigetstr("sc")

/** save cursor position **/

/*
TERMINFO_NAME(sc)
TERMCAP_NAME(sc)
XOPEN(400)
*/
