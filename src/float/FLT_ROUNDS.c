#include <float.h>
                                                    extern int fegetround(void);
#define FLT_ROUNDS                                                  fegetround()

/** rounding direction **/

/***
describes the rounding mode of floating-point addition used by the
implementation. It is not necessarily constant.
***/

/*
VALUE_SELECT(-1, indeterminable)
VALUE_SELECT(0, toward zero)
VALUE_SELECT(1, to nearest)
VALUE_SELECT(2, toward positive infinity)
VALUE_SELECT(3, toward negative infinity)
SEE_ALSO(FUNCTION(fegetround))
*/
/*
STDC(1)
*/
