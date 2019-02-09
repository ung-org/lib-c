#!/bin/sh

TOPDIR=$(dirname $0)
if [ -z "${INCDIR}" ]; then
	INCDIR="${TOPDIR}/include"
fi
. "${TOPDIR}/mk.sh"

export LC_ALL=POSIX
export LANG=POSIX
HEADER=$1
HEADERNAME=$(echo $HEADER | sed -e "s#^${INCDIR}/*##")
GUARD=__$(echo $HEADERNAME | tr a-z/. A-Z__)__
mkdir -p $(dirname $HEADER)
exec > $HEADER

if [ $(basename $HEADER) != assert.h ]; then
	printf '#ifndef %s\n#define %s\n\n' ${GUARD} ${GUARD}
fi

cat <<EOF
/*
UNG's Not GNU

Copyright (c) 2011-2019, Jakob Kaivo <jkk@ung.org>

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/

EOF

rm -rf $HEADER.*
for i in $(grep -l "#include <$HEADERNAME>" $(cat "${TOPDIR}/.deps/all.c" "${TOPDIR}/.deps/all.ref") | sort -u); do
	# TODO: refs
	type=$(classify_source $i)
	version=v$(grep -F -e 'STDC(' -e 'POSIX(' -e 'XOPEN(' $i | sed -e 's/STDC/C/' | sort | tr , - | tr -d '() \n')
	mkdir -p $HEADER.$type
	echo $i >> $HEADER.$type/$version
	printf '%s <%s> (%s)\n' "$i" "$HEADER" "$version" >&2
done

if grep -Fq 'POSIX(' $(cat $HEADER.*/*); then
cat <<-EOF
	#if defined _XOPEN_SOURCE && !defined _POSIX_C_SOURCE
	#	if (_XOPEN_SOURCE >= 700)
	#		define _POSIX_C_SOURCE 200809L
	#	elif (_XOPEN_SOURCE >= 600)
	#		define _POSIX_C_SOURCE 200112L
	#	elif (_XOPEN_SOURCE >= 500)
	#		define _POSIX_C_SOURCE 199506L
	#	else
	#		define _POSIX_C_SOURCE 2
	#	endif
	#endif

	#if defined _POSIX_C_SOURCE && !defined _POSIX_SOURCE
	#	define _POSIX_SOURCE
	#endif

EOF
fi

if [ -d $HEADER.MACRO ]; then
	# FIXME: line continuation
	for v in $HEADER.MACRO/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v); do
			get_declaration $i MACRO
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done

	rm -rf $HEADER.MACRO
fi

if [ -d $HEADER.TYPE ]; then
	for v in $HEADER.TYPE/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v); do
			get_declaration $i TYPE
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.TYPE
fi

if [ -d $HEADER.TYPE_LONG ]; then
	for v in $HEADER.TYPE_LONG/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v); do
			get_declaration $i TYPE_LONG
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.TYPE_LONG
fi

if [ -d $HEADER.RECORD ]; then
	for v in $HEADER.RECORD/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v 2>/dev/null); do
			get_declaration $i RECORD
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.RECORD
fi

if [ -d $HEADER.FNTYPE ]; then
	for v in $HEADER.FNTYPE/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v 2>/dev/null); do
			get_declaration $1 FNTYPE
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.FNTYPE
fi

if [ -d $HEADER.EXTERN ]; then
	for v in $HEADER.EXTERN/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v); do
			get_declaration $i EXTERN
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.EXTERN
fi

if [ -d $HEADER.TGFN ]; then
	for v in $HEADER.TGFN/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v); do
			get_declaration $i TGFN
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.TGFN
fi

if [ -d $HEADER.FUNCTION ]; then
	if grep -q restrict $(cat $HEADER.FUNCTION/*); then
		if grep -Fq -e 'STDC(1)' -e 'STDC(1,' -e 'STDC(199409' $(grep -l restrict $(cat $HEADER.FUNCTION/*)); then
			printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 199901L)\n'
			printf '#define restrict\n'
			printf '#endif\n\n'
		fi
	fi

	### TODO: only if header works with C<11
	if grep -q _Noreturn $(cat $HEADER.FUNCTION/*); then
		printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 200112L)\n'
		printf '#define _Noreturn\n'
		printf '#endif\n\n'
	fi

	for v in $HEADER.FUNCTION/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort -u $v); do
			get_declaration $i FUNCTION | sed -e 's/\([a-zA-Z_][a-zA-Z_0-9]*\)\([,)]\)/__\1\2/g;s/(__\([a-zA-Z_][a-zA-Z_0-9]*\))/(\1)/g'
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.FUNCTION
fi

rm -rf $HEADER.REFERENCE

if [ $(basename $HEADER) != assert.h ]; then
	printf '\n#endif\n'
fi
