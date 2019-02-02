#!/bin/sh

classify_source () {
	NAME=$(basename $1 .c)

	if grep -q "^REFERENCE(" $1; then
		echo REFERENCE
	elif grep -q "^#define ${NAME}[ (]" $1; then
		echo MACRO
	elif grep -q "#undef ${NAME}" $1; then
		echo MACRO
	elif grep -q '^typedef .*(\*' $1; then
		echo FNTYPE
	elif grep -q "^typedef .*${NAME}.*;" $1; then
		echo TYPE
	elif grep -q "^struct .*;$" $1; then
		echo TYPE
	elif grep -q "^typedef.*{$" $1; then
		echo TYPE_LONG
	elif grep -q "^struct.*{" $1; then
		echo RECORD
	elif grep -q "^union.*{" $1; then
		echo RECORD
	elif grep -q "^[A-Za-z_].*[ \*]${NAME}[[;]" $1; then
		echo EXTERN
	elif grep -q 'TGFN' $1; then
		echo TGFN
	else
		echo FUNCTION
	fi
}

version_guard () {
	parsed=/tmp/$(basename $1).v
	grep -F -e 'STDC(' -e 'POSIX(' -e 'XOPEN(' $1 | sort | m4 $(dirname $0)/ftm.m4 - | grep . > $parsed
	lines=$(wc -l $parsed | cut -f1 -d' ')

	if [ $lines -ne 0 ]; then
		printf '#if'
		loop=1
		while [ $loop -lt $lines ]; do
			printf '\t(%s) || \\\n' "$(sed -ne "${loop}p;q" $parsed)"
			loop=$((loop + 1))
		done

		sed -ne "${loop}p;q" $parsed > /tmp/sed.out.${loop}
		printf '\t(%s)\n' "$(sed -ne "${loop}p;q" $parsed)"
	fi

	rm -f $parsed
}
