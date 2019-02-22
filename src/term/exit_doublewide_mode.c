#include <curses.h>

#define exit_doublewide_mode tigetstr("rwidm")

/** disable double wide printing **/

/*
TERMINFO_NAME(rwidm)
TERMCAP_NAME(ZQ)
XOPEN(400)
*/
