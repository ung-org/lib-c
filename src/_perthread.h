#ifndef ___PERTHREAD_H__
#define ___PERTHREAD_H__

#if defined __STDC_VERSION__ && 201112L <= __STDC_VERSION__ && !defined __STDC_NO_THREADS__
#define THREAD_LOCAL static _Thread_local
#else
#define THREAD_LOCAL static
#endif

#endif
