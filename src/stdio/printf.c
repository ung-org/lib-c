#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"

/** write formatted output **/

int printf(const char *format, ...)
{
	int ret = 0;
	va_list ap;
	struct io_options opt = {0};
	opt.fnname = "printf";
	opt.stream = stdout;
	va_start(ap, format);
	ret = __printf(&opt, format, ap);
	va_end(ap);

	/*
	RETURN_SUCCESS(the number of characters written);
	RETURN_FAILURE(NEGATIVE);
	*/
	return ret;
}

/***
writes a formatted string to IDENTIFIER(stdout).

The argument ARGUMENT(format) controls the output. It points to a
NUL-terminated multibyte character string. Characters other than CHAR(%)
are output unmodified. The CHAR(%) begins a conversion specifier, which is
made up of the following:

__(Zero or more CONCEPT(flags, flags))
__(An optional CONCEPT(fieldwidth, field width) <!-- TODO: describe -->)
__(An optional CONCEPT(precision, precision) <!-- TODO: describe -->)
__(An optional CONCEPT(typewidth, type width) <!-- TODO: describe -->)
__(The CONCEPT(typespec, type specifier) <!-- TODO: describe -->)

CONCEPT_DEFINITION(flags, Flags)
The following flags modify output as indicated:

FLAG(CHAR(-), Left-justify this field (the default is right-justification))
FLAG(CHAR(+), Always include a plus or minus sign for signed values (the default is only to display a sign for negative values))
FLAG(SPACE, TODO: I am not entirely clear on this myself)
FLAG(CHAR(#), TODO: Or this one)
FLAG(CHAR(0), Include leading zeros unless TODO)

CONCEPT_DEFINITION(fieldwidth, Field Width)
If the provided value has fewer characters than specified here, it will be
padded with spaces or zeroes to fill the desired width. The width is specified
as a decimal integer or a CHAR(*). If CHAR(*) is specified, the width will
be taken from the next argument as an TYPE(int).

CONCEPT_DEFINITION(precision, Precision)
The maximum number of digits in CHAR(d), CHAR(i), CHAR(o), CHAR(u),
CHAR(x), and CHAR(X) conversions; or, the number of digits after the
decimal for CHAR(e), CHAR(E), and CHAR(f) converions; or, the maximum
number of significant digits for CHAR(g) and CHAR(G) conversions; or, the
maximum number of characters from a string in CHAR(s) conversions. The
precision is specified by a CHAR(.) followed by a decimal integer, a
CHAR(*), or nothing. If CHAR(*) is specified, the precision will be taken
from the next argument as an TYPE(int). If nothing is specified, it is
the same as specifying CHAR(0).

CONCEPT_DEFINITION(typewidth, Type Width)
The following type widths can be applied to ensure accurate type conversions
following normal argument type promotions:
FLAG(CHAR(h), `Converts the next argument to TYPE(short int) or
	TYPE(unsigned short int) for CHAR(d), CHAR(i), CHAR(o),
	CHAR(u), CHAR(x), and CHAR(X) conversions.')
FLAG(CHAR(h), `Specifies that pointer at an CHAR(n) conversion is a
	TYPE(short int).')
FLAG(CHAR(l), `Converts the next argument to TYPE(long int) or
	TYPE(unsigned long int) for CHAR(d), CHAR(i), CHAR(o),
	CHAR(u), CHAR(x), and CHAR(X) conversions.')
FLAG(CHAR(l), `Specifies that pointer at an CHAR(n) conversion is a
	TYPE(long int).')
FLAG(CHAR(L), `Converts the next argument to TYPE(long double) for
	CHAR(e), CHAR(E), CHAR(f), CHAR(g), and CHAR(G) conversions.')

CONCEPT_DEFINITION(typespec, Type Specifier)
The final character of the conversion specifier indicates the type of value
to be output:

FLAG(CHAR(d), `Converts an TYPE(int) to a signed decimal number.')
FLAG(CHAR(i), `Same as CHAR(d).')
FLAG(CHAR(o), `Converts an TYPE(unsigned int) to octal notation.')
FLAG(CHAR(u), `Converts an TYPE(unsigned int) to decimal notation.')
FLAG(CHAR(x), `Converts an TYPE(unsigned int) to hexadecimal notation using lowercase letters.')
FLAG(CHAR(X), `Converts an TYPE(unsigned int) to hexadecimal notation using uppercase letters.')
FLAG(CHAR(f), `Converts a TYPE(double) to decimal notation.')
FLAG(CHAR(e), `Converts a TYPE(double) to scientific notation with a lowercase CHAR(e).')
FLAG(CHAR(E), `Converts a TYPE(double) to scientific notation with an uppercase CHAR(E).')
FLAG(CHAR(g), `FIXME: Same as CHAR(f) or CHAR(e) depending on precision.')
FLAG(CHAR(G), `FIXME: Same as CHAR(f) or CHAR(E) depending on precision.')
FLAG(CHAR(c), `Converts a TYPE(unsigned char) to a character.')
FLAG(CHAR(s), `Converts a pointer to an array of TYPE(char) to a NUL-terminated string.')
FLAG(CHAR(p), `Converts a TYPE(void *) to an implementation-defined format.')
FLAG(CHAR(n), `Causes the function to write the total number of characters output so far to an TYPE(int) pointed at by the next argument.')
FLAG(CHAR(%), `Outputs a literal CHAR(%).')
***/

/*
IMPLEMENTATION(`The format of CHAR(p) conversions', `STRING(0x%0ARGUMENT(n)x), where ARGUMENT(n) is the number of hexadecimal digits in a canonical address on the platform of execution.')
UNDEFINED(`Precision with a conversion specifier other than CHAR(d), CHAR(i), CHAR(o), CHAR(u), CHAR(x), CHAR(X), CHAR(e), CHAR(E), CHAR(f), CHAR(g), CHAR(G), or CHAR(s)')
UNDEFINED(TODO: Using h or l for !(diouxXn) or L for !(eEfgG))
STDC(1)
*/
