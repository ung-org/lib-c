#include <curses.h>

#define buffer_capacity tigetnum("bufsz")

/** number of bytes buffered before printing **/

/*
TERMINFO_NAME(bufsz)
TERMCAP_NAME(Ya)
XOPEN(400)
*/
