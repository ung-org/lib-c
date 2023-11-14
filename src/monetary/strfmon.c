#if 0

#include <monetary.h>
#include <ctype.h>
#include <locale.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

ssize_t strfmon(char * restrict s, size_t maxsize, const char * restrict format, ...)
{
	size_t i = 0;
	va_list ap;
	va_start(ap, format);

	struct lconv *lc = localeconv();

	while (*format && i < maxsize) {
		if (*format != '%') {
			s[i++] = *format++;
			continue;
		}

		format++;

		if (*format == '%') {
			s[i++] = '%';
			format++;
			continue;
		}

		char fill = ' ';
		char positive_negative_style = '+';
		char *positive_sign = lc->positive_sign;
		char *negative_sign = lc->negative_sign;
		char *negative_end = "";
		char *symbol = lc->currency_symbol;
		int grouping = 1;

		enum { left, right } align = right;

		while (strchr("=^+(!-", *format)) {
			switch (*format) {
			case '=':
				fill = format[1];
				format++;
				break;

			case '^':
				grouping = 0;
				break;

			case '+':
				/* is default */
				break;

			case '(':
				positive_sign = "";
				negative_sign = "(";
				negative_end = ")";
				break;

			case '!':
				symbol = "";
				break;

			case '-':
				align = left;
				break;
			}
			format++;
		}

		int width = 0;
		if (isdigit(*format)) {
			char *end = NULL;
			width = (int)strtol(format, &end, 10);
			format = end;
		}

		int lprecision = 0;
		if (*format == '#') {
			if (!isdigit(format[1])) {
				va_end(ap);
				return -1;
			}
			char *end = NULL;
			lprecision = (int)strtol(format + 1, &end, 10);
			format = end;
		}

		int rprecision = lc->frac_digits;
		if (*format == '.') {
			if (!isdigit(format[1])) {
				va_end(ap);
				return -1;
			}
			char *end = NULL;
			rprecision = (int)strtol(format + 1, &end, 10);
			format = end;
		}

		if (*format != 'i' && *format != 'n') {
			va_end(ap);
			return -1;
		}

		/* i == international format */
		/* n == national format */

		double value = va_arg(ap, double);
		int negative = 0;
		if (value < 0) {
			negative = 1;
			value = value * -1;
		}

		char *currency = lc->currency_symbol;

		char *sign = negative ? negative_sign : positive_sign;

		i += snprintf(s + i, maxsize - i, "%s", sign);
		i += snprintf(s + i, maxsize - i, "%s", symbol);

		char valuebuf[64];
		snprintf(valuebuf, sizeof(valuebuf), "%'*.2f", width, value);
		for (char *s = valuebuf; *s == ' '; s++) {
			*s = fill;
		}

		i += snprintf(s + i, maxsize - i, "%s", valuebuf);

		if (negative) {
			i += snprintf(s + i, maxsize - i, "%s", negative_end);
		}

		format++;
	}

	va_end(ap);
	return i;
}

/*
XOPEN(4)
POSIX(200809)
*/


#endif
