#include <term.h>

#define keypad_xmit tigetstr("smkx")

/** put terminal in "keypad-transmit" mode **/

/*
TERMINFO_NAME(smkx)
TERMCAP_NAME(ks)
XOPEN(400)
*/
