#ifndef ___JKMALLOC_H__
#define ___JKMALLOC_H__

#include <inttypes.h>

void* __jkmalloc(const char *file, const char *func, uintmax_t line, void *ptr, size_t alignment, size_t size1 , size_t size2, const char *user);

#endif
