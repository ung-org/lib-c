#!/bin/sh

. $(dirname $0)/mk.sh

export LC_ALL=POSIX
export LANG=POSIX
HEADER=$1
GUARD=__$(echo $HEADER | tr a-z/. A-Z__)__
mkdir -p $(dirname $HEADER)
shift
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

rm -f $HEADER.*
for i in $@; do
	# TODO: refs
	type=$(classify_source $i)
	version=1
	mkdir -p $HEADER.$type
	echo $i >> $HEADER.$type/$version
done

#if [ POSIX ]; then
cat <<-EOF > /dev/null
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
#fi

if [ -d $HEADER.MACRO ]; then
	# FIXME: line continuation
	for i in $(sort $HEADER.MACRO/*); do
		grep -E '^#(if|def|undef|el|end)' $i
	done
	printf '\n'
	# not deleted so externs can be placed later
fi

if [ -d $HEADER.TYPE ]; then
	for i in $(sort $HEADER.TYPE/*); do
		if grep -q '^#ifdef' $i; then
			sed -ne '/#ifdef/,/#endif/p' $i
		elif grep -q '^typedef.*;$' $i; then
			grep '^typedef' $i
		else
			sed -ne '/^typedef/,/\}.*;$/p' $i
		fi
	done
	printf '\n'
	#rm -rf $HEADER.TYPE
fi

if [ -d $HEADER.TYPE_LONG ]; then
	for i in $(sort $HEADER.TYPE_LONG/*); do
		if grep -q '^#ifdef' $i; then
			sed -ne '/#ifdef/,/#endif/p' $i
		elif grep -q '^typedef.*;$' $i; then
			grep '^typedef' $i
		else
			sed -ne '/^typedef/,/\}.*;$/p' $i
		fi
	done
	printf '\n'
	#rm -rf $HEADER.TYPE_LONG
fi

if [ -d $HEADER.STRUCT -o -d $HEADER.UNION ]; then
	mkdir -p $HEADER.STRUCT $HEADER.UNION
	for i in $(sort $HEADER.STRUCT/* $HEADER.UNION/* 2>/dev/null); do
		if grep -q '^struct' $i; then
			sed -ne '/^struct/,/\};/p' $i
		else
			sed -ne '/^union/,/\};/p' $i
		fi
	done
	printf '\n'
	#rm -rf $HEADER.STRUCT $HEADER.UNION
fi

if [ -d $HEADER.EXTERN ]; then
	for i in $(sort $HEADER.EXTERN/*); do
		printf 'extern %s' "$(grep '^[a-zA-Z_].*;$' $i)"
	done
	printf '\n'
	#rm -rf $HEADER.EXTERN
fi

if [ -d $HEADER.TGFN ]; then
	for i in $(sort $HEADER.TGFN/*); do
		printf '%s;\n' "$(sed -e "/{/q" $i | tail -n2 | head -n1 | m4 '-DTGFN=$1' -DTYPE=double)"
	done
	printf '\n'
	#rm -rf $HEADER.TGFN
fi

if [ -d $HEADER.FUNCTION ]; then
	if grep -q restrict $(cat $HEADER.FUNCTION/*); then
		printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 199909L)\n'
		printf '#define restrict\n'
		printf '#endif\n\n'
	fi

	if grep -q _Noreturn $(cat $HEADER.FUNCTION/*); then
		printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 200112L)\n'
		printf '#define _Noreturn\n'
		printf '#endif\n\n'
	fi

	for i in $(sort $HEADER.FUNCTION/*); do
		printf '%s;\n' "$(sed -e "/{/q" $i | tail -n2 | head -n1 | sed -e 's/\([a-zA-Z_][a-zA-Z_0-9]*\)\([,)]\)/__\1\2/g;s/(__\([a-zA-Z_][a-zA-Z_0-9]*\))/(\1)/g')"
	done
	printf '\n'
	#rm -rf $HEADER.FUNCTION
fi

if [ -d $HEADER.MACRO ]; then
	for i in $(sort $HEADER.MACRO/*); do
		grep ' *extern.*;$' $i
	done
	printf '\n'
	#rm -rf $HEADER.MACRO
fi

#rm -rf $HEADER.REFERENCE

if [ $(basename $HEADER) != assert.h ]; then
	printf '\n#endif\n'
fi
