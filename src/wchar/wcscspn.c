#if 0

#include <wchar.h>
#include "_assert.h"

size_t wcscspn(const wchar_t * s1, const wchar_t * s2)
{
	size_t i;

	ASSERT_NONNULL(s1);
	ASSERT_NONNULL(s2);

	for (i = 0; s1[i] != L'\0'; i++) {
		if (s1[i] == L'\0' || wcschr(s2, s1[i]) == NULL) {
			return i;
		}
	}
	return 0;
}

/*
STDC(199409)
*/


#endif
