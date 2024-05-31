#ifndef ___MEMPERM_H__
#define ___MEMPERM_H__

/* for PROT_READ, PROT_WRITE, and PROT_EXEC */
#include "_forced/mmap.h"

int __memperm(void *);

#endif
