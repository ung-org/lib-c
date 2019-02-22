#include <curses.h>

#define enter_xon_mode tigetstr("smxon")

/** turn on xon/xoff handshaking **/

/*
TERMINFO_NAME(smxon)
TERMCAP_NAME(SX)
XOPEN(400)
*/
