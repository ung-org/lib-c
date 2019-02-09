#include <stdlib.h>

long a64l(const char *s)
{
  long l = 0;
  int i = 0;
  int n = 0;
  int base = 1;
  while (i < 6) {
    /*n = indexof ((char*)radix64, s[i]); */
    if (n == -1)
      return l;
    l += n * base;
    base *= 64;
  }
  return l;
}

/*
XOPEN(400)
*/
