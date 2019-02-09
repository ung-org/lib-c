#include <strings.h>

int strcasecmp(const char *s1, const char *s2)
{
  return strcasecmp_l (s1, s2, (locale_t)0);
}

/*
XOPEN(400)
POSIX(200809)
*/
