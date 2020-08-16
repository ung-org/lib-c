#include <sys/wait.h>
#define WIFSTOPPED(__stat_val)                              (__stat_val & 0x200)
/*
POSIX(1)
*/
