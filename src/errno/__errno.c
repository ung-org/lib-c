#include <errno.h>
#include "nonstd/internal.h"

int *__errno(void)
{
        return __libc(ERRNO);
}

