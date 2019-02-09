#include <string.h>

char * strdup(const char *s)
{
  return strndup (s, strlen (s));
}

/*
XOPEN(400)
POSIX(200809)
*/
