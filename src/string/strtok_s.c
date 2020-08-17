#include <string.h>

char * strtok_s(char * restrict s1, rsize_t * restrict s1max, const char * restrict s2, char **restrict ptr)
{
	__C_EXT(1, 201112L);
  int i = 0;

  if (s == NULL)
    s = *lasts;

  while (i < strlen (s)) {
    if (strchr (sep, s[i]) == NULL) {
      i++;
    } else {
      s[i] = '\0';
      *lasts = &(s[i+1]);
      return s;
    }
  }
  return NULL;
}

/*
CEXT1(201112)
*/
