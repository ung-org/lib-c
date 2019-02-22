#include <curses.h>

#define exit_xon_mode tigetstr("rmxon")

/** turn off xon/xoff handshaking **/

/*
TERMINFO_NAME(rmxon)
TERMCAP_NAME(RX)
XOPEN(400)
*/
