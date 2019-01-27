#define SIZE_MAX 0xffffffff
typedef long long int intmax_t;
typedef unsigned long long int uintmax_t;
typedef unsigned long int intptr_t;
intmax_t strtoimax(const char *, char **, int);
uintmax_t strtoumax(const char *, char **, int);
