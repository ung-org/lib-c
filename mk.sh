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

get_declaration () {
	case ${2:-$(classify_source $1)} in

	REFERENCE)
		ref="$(grep -F 'REFERENCE(' $1 | m4 -DREFERENCE='$1')"
		if (echo "$ref" | grep -q '<.*>'); then
			echo "$ref"
		else
			get_declaration "src/${ref}"
		fi
		;;

	MACRO)	
		grep -E '^(#(if|def|undef|el|end)|	)' $1
		;;

	TYPE|TYPE_LONG|RECORD|FNTYPE)
		if grep -q '^#if' $1; then
			sed -ne '/^#if/,/#endif/p' $1
		elif grep -qE '^(typedef|struct|union) .*{' $1; then
			sed -ne '/{$/,/^}/p' $1
		else
			grep -E '^(typedef|struct|union) ' $1
		fi
		;;

	EXTERN)
		echo "extern $(grep '^[a-zA-Z_].*;$' $1)"
		;;

	FUNCTION)
		echo "$(grep '^[a-zA-Z_].*)' $1 | head -n1);"
		;;

	TGFN)
		echo "$(grep 'TGFN.*)$' $1 | m4 -DTGFN='$1' -DTYPE='double');"
		echo "$(grep 'TGFN.*)$' $1 | m4 -DTGFN='$1f' -DTYPE='float');"
		echo "$(grep 'TGFN.*)$' $1 | m4 -DTGFN='$1l' -DTYPE='long double');"
		;;

	*)
		# unknown type, so try guessing
		get_declaration $1
		;;

	esac
}
