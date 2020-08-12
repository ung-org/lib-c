#include <errno.h>
#include "../_nonstd.h"

int *__errno(void)
{
        return __libc(ERRNO);
}

