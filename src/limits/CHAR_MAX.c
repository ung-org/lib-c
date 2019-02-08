#include <limits.h>
#ifdef __CHAR_IS_SIGNED
#define CHAR_MAX                                                           (127)
#else
#define CHAR_MAX                                                           (255)
#endif

/** char maximum **/

/***
is the maximum value representable as a TYPE(char).
***/

/*
VALUE_SELECT(CONSTANT(UCHAR_MAX), on systems where TYPE(char) is default TYPE(unsigned))
VALUE_SELECT(CONSTANT(SCHAR_MAX), on systems where TYPE(char) is default TYPE(signed))
SEE_ALSO(CONSTANT(CHAR_MIN))
*/
/*
STDC(1)
*/
