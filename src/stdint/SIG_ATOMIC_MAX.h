#include <stdint.h>
#define SIG_ATOMIC_MAX                                                     (127)

/*If sig_atomic_t (see 7.14) is defined as a signed integer type, the value of SIG_ATOMIC_MIN shall be no greater than −127 and the value of SIG_ATOMIC_MAX shall be no less than 127; otherwise, sig_atomic_t is defined as an unsigned integer type, and the value of SIG_ATOMIC_MIN shall be 0 and the value of SIG_ATOMIC_MAX shall be no less than 255.*/


/*
STDC(199901)
*/
