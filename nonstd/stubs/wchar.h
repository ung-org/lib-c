#include <stddef.h>
#define WEOF (-1L)
typedef int mbstate_t;
typedef int wint_t;
size_t mbrlen(const char * restrict, size_t, mbstate_t * restrict);
size_t mbsrtowcs(wchar_t * restrict, const char * restrict, size_t, mbstate_t * restrict);
size_t mbrtowc(wchar_t * restrict, const char * restrict, size_t, mbstate_t * restrict);
size_t wcrtomb(char * restrict, wchar_t, mbstate_t * restrict);
wint_t btowc(int);
