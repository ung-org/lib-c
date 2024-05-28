/* TODO: appropriate #ifdefs */

#define SA_RESTART    0x10000000
#define SA_RESTORER   0x04000000

typedef unsigned long pid_t;
typedef unsigned long uid_t;
typedef unsigned long clock_t;
#include "signal/sigset_t.h"
#include "signal/union_sigval.h"
#include "signal/siginfo_t.h"

#define _POSIX_C_SOURCE 199506L
#include "signal/struct_sigaction.h"

static int sigaction(int, const struct sigaction * restrict, struct sigaction * restrict);

#include "signal/sigaction.c"
