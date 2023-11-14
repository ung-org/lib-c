#if 0

#include <string.h>

size_t strnlen_s(const char *s, size_t maxsize)
{
	__C_EXT(1, 201112L);
  size_t i = 0;
  while (i < maxlen) {
    if (s[i] == '\0')
      return i;
    i++;
  }
  return i;
}

/*
CEXT1(201112)
*/


#endif
