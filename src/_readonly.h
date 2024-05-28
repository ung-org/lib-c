#ifndef ___READONLY_H__

typedef enum {
	RO_ALLOC,
	RO_FREE,
	RO_LOCK,
	RO_UNLOCK,
} ro_action_t;

void *__readonly(ro_action_t, void *);

#endif
