#include <sys/wait.h>
#define WEXITSTATUS(__stat_val)                              (__stat_val & 0xff)
/*
POSIX(1)
*/
