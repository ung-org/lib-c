#include <curses.h>

#define initialize_pair tigetstr("initp")

/** set color pair #1 to fg #2, bg #3 **/

/*
TERMINFO_NAME(initp)
TERMCAP_NAME(Ip)
XOPEN(400)
*/
