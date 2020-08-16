#include <limits.h>
#define EXPR_NEST_MAX                                      _POSIX2_EXPR_NEST_MAX
/* MIN: _POSIX2_EXPR_NEST_MAX */
/* CHECK: sysconf */
/** maximum number of expressions that can be parenthesis nested by util(expr) **/
/*
POSIX(2)
*/

