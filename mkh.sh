#!/bin/sh

. ./mk.sh

export LC_ALL=POSIX
export LANG=POSIX
HEADER=$1
GUARD=__$(echo $HEADER | tr a-z/. A-Z__)__
mkdir -p $(dirname $HEADER)
shift
exec > $HEADER

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

#ifndef ${GUARD}
#define ${GUARD}

EOF

rm -f $HEADER.*
for i in $@; do
	# TODO: refs
	echo $i >> $HEADER.$(classify_source $i)
done

#if [ POSIX ]; then
cat <<-EOF > /dev/null
	#if (!defined _POSIX_C_SOURCE) && (defined _XOPEN_SOURCE)
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

	#ifdef _POSIX_C_SOURCE
	#	define _POSIX_SOURCE
	#endif
EOF
#fi

if [ -f $HEADER.MACRO ]; then
	for i in $(sort $HEADER.MACRO); do
		grep ' *extern.*;$' $i
		grep -E '^#(if|def|undef|el|end)' $i
	done
	printf '\n'
	rm $HEADER.MACRO
fi

if [ -f $HEADER.TYPE ]; then
	for i in $(sort $HEADER.TYPE); do
		if grep -q '^#ifdef' $i; then
			sed -ne '/#ifdef/,/#endif/p' $i
		elif grep -q '^typedef.*;$' $i; then
			grep '^typedef' $i
		else
			sed -ne '/^typedef/,/\}.*;$/p' $i
		fi
	done
	printf '\n'
	rm $HEADER.TYPE
fi

if [ -f $HEADER.TYPE_LONG ]; then
	for i in $(sort $HEADER.TYPE_LONG); do
		if grep -q '^#ifdef' $i; then
			sed -ne '/#ifdef/,/#endif/p' $i
		elif grep -q '^typedef.*;$' $i; then
			grep '^typedef' $i
		else
			sed -ne '/^typedef/,/\}.*;$/p' $i
		fi
	done
	printf '\n'
	rm $HEADER.TYPE_LONG
fi

if [ -f $HEADER.STRUCT -o -f $HEADER.UNION ]; then
	touch $HEADER.STRUCT $HEADER.UNION
	for i in $(sort $HEADER.STRUCT $HEADER.UNION 2>/dev/null); do
		if grep -q '^struct' $i; then
			sed -ne '/^struct/,/\};/p' $i
		else
			sed -ne '/^union/,/\};/p' $i
		fi
	done
	printf '\n'
	rm -f $HEADER.STRUCT $HEADER.UNION
fi

if [ -f $HEADER.EXTERN ]; then
	for i in $(sort $HEADER.EXTERN); do
		printf 'extern %s' "$(grep '^[a-zA-Z_].*;$' $i)"
	done
	printf '\n'
	rm -f $HEADER.EXTERN
fi

if [ -f $HEADER.TGFN ]; then
	for i in $(sort $HEADER.TGFN); do
		printf '%s;\n' "$(sed -e "/{/q" $i | tail -n2 | head -n1 | m4 '-DTGFN=$1' -DTYPE=double)"
	done
	printf '\n'
	rm -f $HEADER.TGFN
fi

if [ -f $HEADER.FUNCTION ]; then
	if grep -q restrict $(cat $HEADER.FUNCTION); then
		printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 199909L)\n'
		printf '#define restrict\n'
		printf '#endif\n\n'
	fi

	if grep -q _Noreturn $(cat $HEADER.FUNCTION); then
		printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 200112L)\n'
		printf '#define _Noreturn\n'
		printf '#endif\n\n'
	fi

	for i in $(sort $HEADER.FUNCTION); do
		printf '%s;\n' "$(sed -e "/{/q" $i | tail -n2 | head -n1)"
	done
	printf '\n'
	rm -f $HEADER.FUNCTION
fi

rm -f $HEADER.REFERENCE

printf '\n#endif\n'
