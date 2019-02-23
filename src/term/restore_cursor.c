#include <term.h>

#define restore_cursor tigetstr("rc")

/** restore cursor to position of last sc **/

/*
TERMINFO_NAME(rc)
TERMCAP_NAME(rc)
XOPEN(400)
*/
