#include <fnmatch.h>
#include "string.h"
#include "_assert.h"

int fnmatch(const char * pattern, const char * string, int flags)
{
	ASSERT_NONNULL(pattern);
	ASSERT_NONNULL(string);
	/* __ASSERT_FLAGS(flags, FNM_PATHNAME | FNM_NOESCAPE | FNM_PERIOD); */
	const int period = flags & FNM_PERIOD;
	const int pathname = flags & FNM_PATHNAME;
	const int noescape = flags & FNM_NOESCAPE;
	char last = '/';

	while (*pattern && *string) {
		if (*pattern == '?') {
			pattern++;
			if (pathname && *string == '/') {
				return FNM_NOMATCH;
			}

			if (period && *string == '.') {
				if (pathname && !(last == '/')) {
					return FNM_NOMATCH;
				}
				/* TODO: period & !pathname */
			}

			last = *string;
			string++;

			continue;
		}

		if (*pattern == '[') {
			char *ket = strchr(pattern, ']');
			if (ket) {
				/* TODO: FNM_PATHNAME */
				/* TODO: FNM_PERIOD */
				/* match all or none */
				pattern = ket + 1;
				if (0) {
					return FNM_NOMATCH;
				}

				last = *string;
				string++;
				continue;
			}
			/* match a literal bracket, handled by main branch */
		}

		if (*pattern == '*') {
			/* multiple * is the same as one * */
			while (*pattern == '*') {
				pattern++;
			}

			/* TODO: period and pathname */
			if (*pattern == '\0') {
				return 0;
			}

			while (*string) {
				/* TODO: period and pathname */
				if (fnmatch(pattern, string, flags) == 0) {
					return 0;
				}
				string++;
			}
			return FNM_NOMATCH;
		}

		if (*pattern == '\\' && !noescape) {
			pattern++;
			if (*string != *pattern) {
				return FNM_NOMATCH;
			}
		}

		if (*pattern != *string) {
			return FNM_NOMATCH;
		}

		last = *string;
		pattern++;
		string++;
	}

	if (*pattern || *string) {
		return FNM_NOMATCH;
	}

	return 0;
}

/*
POSIX(2)
*/
