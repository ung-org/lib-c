#ifdef __LLP64__
# if !defined __STDC_VERSION__ || __STDC_VERSION__ < 199909L
typedef unsigned __int64                                                 size_t;
# else
typedef unsigned long long int                                           size_t;
# endif
#else
typedef unsigned long int                                                size_t;
#endif

/** memory size type **/

/***
is an unsigned integer type that is the result of using the 
OPERATOR(sizeof) operator.
***/

/*
TYPEDEF(unsigned integer)
STDC(1)
*/
