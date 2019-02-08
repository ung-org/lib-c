#include <stddef.h>
#define offsetof(type, member)        ((size_t)((void*)&(((type*)0)->##member)))

/** get offset of a structure member **/

/***
determines the offset, in bytes, of a specified field in a TYPE(struct).
***/

/*
PROTOTYPE(size_t offsetof(<var>type</var>, <var>member</var>);)
RETURN_SUCCESS(the offset of ARGUMENT(member) in ARGUMENT(type))
UNDEFINED(ARGUMENT(member) is a bit-field)
*/
/*
STDC(1)
*/
