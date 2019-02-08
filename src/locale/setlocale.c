#include <locale.h>
#include "string.h"
#include "stdlib.h"

char * setlocale(int category, const char *locale)
{
	static struct {
		char *lc_collate;
		char *lc_ctype;
		char *lc_messages;
		char *lc_monetary;
		char *lc_numeric;
		char *lc_time;
	} current = { 0 };

	char *desired = NULL;

	switch (category) {
	case LC_COLLATE:	desired = current.lc_collate; break;
	case LC_CTYPE:		desired = current.lc_ctype; break;
	case LC_MONETARY:	desired = current.lc_monetary; break;
	case LC_NUMERIC:	desired = current.lc_numeric; break;
	case LC_TIME:		desired = current.lc_time; break;
	#ifdef LC_MESSAGES
	case LC_MESSAGES:	desired = current.lc_messages; break;
	#endif
	default:		break;
	}

	if (locale == NULL) {
		if (category == LC_ALL) {
			/* build a string if locale is not heterogenous */
		}
		return desired;
	}

	if (category == LC_ALL) {
		/* TODO: make sure all these can be honored */
		#ifdef LC_MESSAGES
		setlocale(LC_MESSAGES, locale);
		#endif
		setlocale(LC_COLLATE, locale);
		setlocale(LC_CTYPE, locale);
		setlocale(LC_MONETARY, locale);
		setlocale(LC_NUMERIC, locale);
		return setlocale(LC_TIME, locale);
	}

	if (desired) {
		free(desired);
	}

	if (!strcmp(locale, "")) {
		desired = getenv("");
	} else {
		desired = (char*)locale;
	}
	
	return desired;
}

/** get or set program locale **/

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
*/
/*
STDC(1)
*/
