#ifndef ___JKMALLOC_H__
#define ___JKMALLOC_H__

#include <inttypes.h>

#define PTR_BITS        (CHAR_BIT * sizeof(uintptr_t))

#define JKMALLOC_EXIT_VALUE     (127 + SIGSEGV)
#define JK_FREE_LIST_SIZE       (8)

#define __jk_pagesize		(4096)

/* magic numbers derived from CRC-32 of jk_foo_block */
#define JK_FREE_MAGIC           (0x551a51dc)
#define JK_UNDER_MAGIC          (0xcb2873ac)
#define JK_OVER_MAGIC           (0x18a12c17)
#define JK_RONLY_MAGIC          (0x902faf31)

#define jk_pages(bytes)         (((bytes + __jk_pagesize - 1) / __jk_pagesize) + 2)
#define jk_pageof(addr)         ((void*)((uintptr_t)addr - ((uintptr_t)addr % __jk_pagesize)))
#define jk_bucketof(addr)       ((void*)((uintptr_t)jk_pageof(addr) - __jk_pagesize))


struct jk_bucket {
        uint32_t magic;
        uintptr_t start;
        size_t size;
        size_t align;
        size_t pages;
        size_t tlen;
        char trace[];
};


struct jk_source {
        const char *file;
        const char *func;
        uintmax_t line;
        struct jk_bucket *bucket;
};


void* __jkmalloc(void *ptr, size_t alignment, size_t size1 , size_t size2, const char *user);

#endif
