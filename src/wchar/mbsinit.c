#include <wchar.h>
#include "_wchar.h"

int mbsinit(const mbstate_t * ps)
{
	SIGNAL_SAFE(0);

	if (ps == NULL || ps->__impl == NULL) {
		return 1;
	}

	struct __mbstate_t *m = ps->__impl;
	if (m->ctype_epoch == 0 && m->dir == NONE && m->mbs == NULL && m->wcs == NULL) {
		return 1;
	}

	return 0;
}

/*
STDC(199409)
*/
