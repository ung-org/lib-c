#include <sys/wait.h>
#define WIFSIGNALED(__stat_val)                             (__stat_val & 0x100)
/*
POSIX(1)
*/
