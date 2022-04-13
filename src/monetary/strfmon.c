#include <monetary.h>
#include <ctype.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

ssize_t strfmon(char * restrict s, size_t maxsize, const char * restrict format, ...)
{
	size_t i = 0;
	va_list ap;
	va_start(ap, format);

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
		char style = '+';
		int grouping = 1;
		int symbol = 1;
		enum { left, right } align = right;

		switch (*format) {
		case '=':
			fill = format[1];
			format += 2;
			break;
		case '^':
			grouping = 0;
			format++;
			break;
		case '+':
		case '(':
			style = *format;
			format++;
			break;
		case '!':
			symbol = 0;
			format++;
			break;
		case '-':
			align = left;
			format++;
			break;
		}

		unsigned long width = 0;
		if (isdigit(*format)) {
			char *end = NULL;
			width = strtoul(format, &end, 10);
			format = end + 1;
		}

		if (*format == '#') {
			/* TODO: left precision */
		}

		if (*format == '.') {
			/* TODO: right precision */
		}

		if (*format == 'i') {
			/* international format */
			double value = va_arg(ap, double);
			i += snprintf(s + i, maxsize - i, "USD %.2g", value);
			format++;
			continue;
		}

		if (*format == 'n') {
			/* national format */
			double value = va_arg(ap, double);
			i += snprintf(s + i, maxsize - i, "$%.2g", value);
			format++;
			continue;
		}

		va_end(ap);
		return -1;
	}

	va_end(ap);
	return i;
}

/*
XOPEN(4)
POSIX(200809)
*/
