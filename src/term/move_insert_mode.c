#include <term.h>

#define move_insert_mode tigetflag("mir")

/** safe to move while in insert mode **/

/*
TERMINFO_NAME(mir)
TERMCAP_NAME(mi)
XOPEN(400)
*/
