#!/bin/sh

. $(dirname $0)/mk.sh

version_guard () {
	m4in=/tmp/$(basename $HEADER).m4
	grep -F -e 'STDC(' -e 'POSIX(' -e 'XOPEN(' $1 | sort > $m4in
	lines=$(wc -l $m4in | cut -f1 -d' ')
	printf '#if'
	loop=1
	while [ $loop -lt $lines ]; do
		printf '\t(%s) || \\\n' "$(sed -ne "${loop}p;q" $m4in | m4 $(dirname $0)/ftm.m4 - | grep .)"
		loop=$((loop + 1))
	done
	sed -ne "${loop}p;q" $m4in > /tmp/sed.out.${loop}
	printf '\t(%s)\n' "$(sed -ne "${loop}p;q" $m4in | m4 $(dirname $0)/ftm.m4 - | grep .)"
}

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

rm -rf $HEADER.*
for i in $@; do
	# TODO: refs
	type=$(classify_source $i)
	version=$(grep -F -e 'STDC(' -e 'POSIX(' -e 'XOPEN(' $1 | sort | tr -d '() ,')
	mkdir -p $HEADER.$type
	echo $i >> $HEADER.$type/$version
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

		for i in $(sort $v); do
			grep -E '^#(if|def|undef|el|end)' $i
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done

	if ! grep -q extern $(cat $HEADER.MACRO/*); then
		rm -rf $HEADER.MACRO
	fi
fi

if [ -d $HEADER.TYPE ]; then
	for v in $HEADER.TYPE/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort $v); do
			if grep -q '^#ifdef' $i; then
				sed -ne '/#ifdef/,/#endif/p' $i
			elif grep -q '^typedef.*;$' $i; then
				grep '^typedef' $i
			else
				sed -ne '/^typedef/,/\}.*;$/p' $i
			fi
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

		for i in $(sort $v); do
			if grep -q '^#ifdef' $i; then
				sed -ne '/#ifdef/,/#endif/p' $i
			elif grep -q '^typedef.*;$' $i; then
				grep '^typedef' $i
			else
				sed -ne '/^typedef/,/\}.*;$/p' $i
			fi
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.TYPE_LONG
fi

if [ -d $HEADER.STRUCT -o -d $HEADER.UNION ]; then
	mkdir -p $HEADER.STRUCT $HEADER.UNION
	for v in $HEADER.STRUCT/* $HEADER.UNION/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort $v 2>/dev/null); do
			if grep -q '^struct' $i; then
				sed -ne '/^struct/,/\};/p' $i
			else
				sed -ne '/^union/,/\};/p' $i
			fi
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.STRUCT $HEADER.UNION
fi

if [ -d $HEADER.EXTERN ]; then
	for v in $HEADER.EXTERN/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort $v); do
			printf 'extern %s' "$(grep '^[a-zA-Z_].*;$' $i)"
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

		for i in $(sort $v); do
			printf '%s;\n' "$(sed -e "/{/q" $i | tail -n2 | head -n1 | m4 '-DTGFN=$1' -DTYPE=double)"
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.TGFN
fi

if [ -d $HEADER.FUNCTION ]; then
	### TODO: only if header includes C89/AMD1 stuff
	if grep -q restrict $(cat $HEADER.FUNCTION/*); then
		printf '#if (!defined __STDC_VERSION__) || (__STDC_VERSION__ < 199909L)\n'
		printf '#define restrict\n'
		printf '#endif\n\n'
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

		for i in $(sort $v); do
			printf '%s;\n' "$(sed -e "/{/q" $i | tail -n2 | head -n1 | sed -e 's/\([a-zA-Z_][a-zA-Z_0-9]*\)\([,)]\)/__\1\2/g;s/(__\([a-zA-Z_][a-zA-Z_0-9]*\))/(\1)/g')"
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.FUNCTION
fi

if [ -d $HEADER.MACRO ]; then
	for v in $HEADER.MACRO/*; do
		version=$(version_guard $(head -n1 $v))
		if [ -n "$version" ]; then
			printf '%s\n' "$version"
		fi

		for i in $(sort $v); do
			grep ' *extern.*;$' $i
		done

		if [ -n "$version" ]; then
			printf '#endif\n'
		fi

		printf '\n'
	done
	rm -rf $HEADER.MACRO
fi

#rm -rf $HEADER.REFERENCE

if [ $(basename $HEADER) != assert.h ]; then
	printf '\n#endif\n'
fi
