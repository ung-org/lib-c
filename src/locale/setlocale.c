#if 0

#include <locale.h>
#include <string.h>
#include <stdlib.h>
#include "_locale.h"

/** get or set program locale **/

char * setlocale(int category, const char *locale)
{
	struct __locale_t *l = __get_locale();
	int mask = 0;

	if (locale == NULL) {
		switch (category) {
		case LC_ALL:		return l->all;
		case LC_COLLATE:	return l->collate;
		case LC_CTYPE:		return l->ctype;
		case LC_MONETARY:	return l->monetary;
		case LC_NUMERIC:	return l->numeric;
		case LC_TIME:		return l->time;
		#ifdef LC_MESSAGES
		case LC_MESSAGES:	return l->messages;
		#endif
		default:		return NULL;
		}
	}

	switch (category) {
	case LC_ALL:		mask = LC_ALL_MASK; break;
	case LC_COLLATE:	mask = LC_COLLATE_MASK; break;
	case LC_CTYPE:		mask = LC_CTYPE_MASK; break;
	case LC_MONETARY:	mask = LC_MONETARY_MASK; break;
	case LC_NUMERIC:	mask = LC_NUMERIC_MASK; break;
	case LC_TIME:		mask = LC_TIME_MASK; break;
	#ifdef LC_MESSAGES
	case LC_MESSAGES:	mask = LC_MESSAGES_MASK; break;
	#endif
	default:		return NULL;
	}

	return __load_locale(l, mask, locale);
}

/***
sets or retrieves the current global locale of the
program. The program locale has global effects of various operations, based
on ARGUMENT(category):

FLAG(CONSTANT(LC_COLLATE),
	`Affects regular expression, and string collation.')
FLAG(CONSTANT(LC_CTYPE),
	`Affects regular expressions, character classification, and character conversion.')
FLAG(CONSTANT(LC_MESSAGES),
	`On POSIX systems, affects how message catalogs are found and the format
	of affirmative and negative responses. The format of strings written
	or returned by library functions may also be affected.')
FLAG(CONSTANT(LC_MONETARY),
	`Affects functions that convert monetary values.')
FLAG(CONSTANT(LC_NUMERIC),
	`Affects functions that convert non-monetary numeric valus.')
FLAG(CONSTANT(LC_TIME),
	`Affects functions that convert time.')

Specifying CONSTANT(LC_ALL) for ARGUMENT(category) will change the current global locale
for all of the above categories.

Specifying CONSTANT(NULL) for ARGUMENT(locale) will not change anything, and will simply
return the current globale locale for ARGUMENT(category).

Specifying empty() for ARGUMENT(locale) will set ARGUMENT(category) to an
implementation-defined native environment.

All conformant systems support the locale(C), which is a minimal locale required
to support std(C).

All POSIX systems support the locale(POSIX), which is a minimal locale required
to support std(POSIX).
***/

/*
RETURN(CONSTANT(NULL), the request could not be honored)
RETURN(NONNULL, the current locale name for ARGUMENT(category))
IMPLEMENTATION(The native environment)
STDC(1)
*/


#endif
