Building
--------
First, determine what level of library support you want. If you only need
ISO C support, you'll want one of the following targets:

* c89 - ISO/IEC 9899:1990, AKA ANSI X3.159-1989, ANSI C, ISO C, C89, C90
* c94 - ISO/IEC 9899:1990/AMD1:1995, AKA C94, C95
* c99 - ISO/IEC 9899:1999, AKA C99
* c11 - ISO/IEC 9899:2011, AKA C11
* c11-ext1 - ISO/IEC 9899:2011, AKA C11, with Extension 1
* c18 - ISO/IEC 9899:2018, AKA C18
* c18-ext1 - ISO/IEC 9899:2018, AKA C18, with Extension 1

For basic POSIX support:

* posix-1    - POSIX.1-1990 (includes POSIX.1-1988, implies C89)
* posix-2    - POSIX.1-1990 plus POSIX.2-1992
* posix-1993 - POSIX.1b-1993 (includes POSIX.1-1990)
* posix-1995 - POSIX.1-1996
* posix-2001 - POSIX.1-2001 (implies C99)
* posix-2008 - POSIX.1-2008 (implies C99)

For complete Single UNIX Specification (X/Open) support:

* susv1 - Single Unix Specification, version 1 (includes POSIX.1-1990 and POSIX.2-1992)
* susv2 - Single Unix Specification, version 2 (includes POSIX.1-1995)
* susv3 - Single Unix Specification, version 3 (includes POSIX.1-2001)
* susv4 - Single Unix Specification, version 4 (includes POSIX.1-2008)

Then run `make` followed by your preferred target. For example, to get a full
SUSv4 library, run:

    make susv4

If you run `make` without any targets, it will default to the most recently
selected target. The default target straight from git is `c18-ext1`.

Code Organization
-----------------
Every identifier is placed in its own .c file. Every single one. Every function
(with two types of exceptions), every extern variable, every #define, every
typedef, every struct and union definition. This facilitates generating man
pages, 1 per, as well has header generation.

The two exceptions are math functions (in `<math.h>`, `<complex.h>`, and
`<tgmath.h>`) that are defined identically for all three floating point types,
and Curses functions (in `<curses.h>`) that include `w` and possible `mv` and
`mvw` prefixed versions. Those use macros inside those files to define the
alternate versions, and the man page and header file generation scripts treat
them specially.

As for paths, files are in `src/<primary header name without.h>/<identifier>.c`.
For example, `printf()` is at `src/stdio/printf.c`. The tags file should also
be generally up-to-date, so `vi -t printf` should work, too.

Compiler Requirements
---------------------
The compiler must define exactly one of `__LP32__`, `__ILP32__`, `__ILP64__`,
`__LLP64__`, or `__LP64__`, describing the relative sizes of `int`, `long`,
`long long`, and pointer types as described in this table (underscores remove
for clarity):

|		| LP32	| ILP32	| ILP64	| LLP64	| LP64	|
| -------------	| -----	| -----	| -----	| -----	| -----	|
| char		| 8	| 8	| 8	| 8	| 8	|
| short		| 16	| 16	| 16	| 16	| 16 	|
| int		| 16	| 32	| 64	| 32	| 32	|
| long		| 32	| 32	| 64	| 32	| 64	|
| long long	| 64	| 64	| 64	| 64	| 64	|
| pointer	| 32	| 32	| 64	| 64	| 64	|

The aformentioned symbol is used, among other places, for the proper definition
of `size_t`, `ssize_t`, and `intptr_t`.

Coding Style
------------
Start with K&R. Indents are tabs. Tabs are 8 spaces.
