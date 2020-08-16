#include <limits.h>
#define NGROUPS_MAX                                           _POSIX_NGROUPS_MAX
/* MIN: _POSIX_NGROUPS_MAX */
/* CHECK: sysconf */
/** the maximum number of group IDs per process **/
/*
POSIX(1)
*/
