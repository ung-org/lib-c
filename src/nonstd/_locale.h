#include <locale.h>
#include <limits.h>
#include <stdio.h>
#include <string.h>

#include "nonstd/locale.h"
#include "nonstd/ctype.h"

/*
#define LC_COLLATE_MASK (1<<0)
#define LC_CTYPE_MASK (1<<1)
#define LC_MONETARY_MASK (1<<2)
#define LC_NUMERIC_MASK (1<<3)
#define LC_TIME_MASK (1<<4)
#define LC_MESSAGES_MASK (1<<5)
*/

#define stringreplace(_old, _new) do { \
	_old = realloc(_old, strlen(_new) + 1); \
	if (_old == NULL) { \
		return NULL; \
	} \
	strcpy(_old, _new); \
} while (0)

static char * (__load_locale)(struct __locale_t *loc, int mask, const char *name)
{
	char localepath[FILENAME_MAX] = "/lib/locale/";
	strcat(localepath, name);

	FILE *localefile = fopen(localepath, "rb");
	if (localefile == NULL && strcmp(name, "C") && strcmp(name, "POSIX")) {
		return NULL;
	}

	if (mask & LC_COLLATE_MASK) {
		stringreplace(loc->collate, name);

		/* read from file */
		loc->collation = NULL;
	}

	if (mask & LC_CTYPE_MASK) {
		stringreplace(loc->ctype, name);

		if (localefile == NULL) {
			int i;
			loc->ctattr = realloc(loc->ctattr, CHAR_MAX);

			for (i = 0; i < 32; i++) {
				loc->ctattr[i] = CT_CNTRL;
			}
			for (i = 'a'; i < 'z'; i++) {
				loc->ctattr[i] = CT_LOWER;
			}
			for (i = 'A'; i < 'Z'; i++) {
				loc->ctattr[i] = CT_UPPER;
			}
			for (i = '0'; i < '9'; i++) {
				loc->ctattr[i] = CT_DIGIT | CT_XDIGIT;
			}
			/* others */

			loc->ctoupper = realloc(loc->ctoupper, CHAR_MAX);
			for (i = 0; i < CHAR_MAX; i++) {
				loc->ctoupper[i] = ('a' <= i && i <= 'z') ? i + 32 : i;
			}

			loc->ctolower = realloc(loc->ctolower, CHAR_MAX);
			for (i = 0; i < CHAR_MAX; i++) {
				loc->ctolower[i] = ('A' <= i && i <= 'Z') ? i - 32 : i;
			}
		} else {
			/* read from file */
			loc->ctattr = NULL;
			loc->ctoupper = NULL;
			loc->ctolower = NULL;
		}
	}

	if (mask & LC_MONETARY_MASK) {
		stringreplace(loc->monetary, name);

		/*
		loc->mn.monetary fields;
		*/
	}

	if (mask & LC_NUMERIC_MASK) {
		stringreplace(loc->numeric, name);

		/*
		loc->mn.numeric fields
		*/
	}

	if (mask & LC_TIME_MASK) {
		stringreplace(loc->time, name);

		/* read from file */
		/* loc->lc_time */
	}

	if (mask & LC_MESSAGES_MASK) {
		stringreplace(loc->messages, name);

		/* read */
		loc->lc_messages.yesexpr = NULL;
		loc->lc_messages.noexpr = NULL;
	}

	return name;
}
