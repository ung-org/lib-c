#include <sys/wait.h>
#define WTERMSIG(__stat_val)                                 (__stat_val & 0xff)
/*
POSIX(1)
*/
