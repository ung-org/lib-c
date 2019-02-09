#include <strings.h>

int strncasecmp(const char *s1, const char *s2, size_t n)
{
  return strncasecmp_l (s1, s2, n, (locale_t)0);
}

/*
XOPEN(400)
POSIX(200809)
*/
