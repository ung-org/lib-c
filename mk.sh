#!/bin/sh

TOPDIR=$(dirname $0)
DEPS=${TOPDIR}/.deps
SRCDIR=${TOPDIR}/src

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

stdc_base() {
	(grep 'STDC(' $1 | m4 -DSTDC='$1') || echo 0
}

posix_base() {
	(grep 'POSIX(' $1 | m4 -DPOSIX='$1') || echo 0
}

xopen_base() {
	(grep 'XOPEN(' $1 | m4 -DXOPEN='$1') || echo 0
}

find_all() {
	rm -rf "${DEPS}"
	mkdir -p "${DEPS}"
	find "${SRCDIR}" -name \*.c > "${DEPS}/all.c"
	find "${SRCDIR}" -name \*.ref > "${DEPS}/all.ref"
	grep '#include <.*>' $(cat "${DEPS}/all.c" "${DEPS}/all.ref") |
		sed 's/^.*<\(.*\.h\)>.*/\1/' | sort -u > "${DEPS}/all.h"
}

version_sources() {
	for file in $(cat "${DEPS}/all.c" "${DEPS}/all.ref"); do
		printf '%s\n' "$file"
		c_version=$(stdc_base "${file}")
		p_version=$(posix_base "${file}")
		x_version=$(xopen_base "${file}")
	
		if [ -n "${c_version}" ]; then
			mkdir -p "${DEPS}/c.${c_version}"
			echo "$file" >> "${DEPS}/c.${c_version}/sources"
		fi
	
		if [ -n "${p_version}" ]; then
			mkdir -p "${DEPS}/p.${p_version}"
			echo "$file" >> "${DEPS}/p.${p_version}/sources"
		fi
	
		if [ -n "${x_version}" ]; then
			mkdir -p "${DEPS}/x.${x_version}"
			echo "$file" >> "${DEPS}/x.${x_version}/sources"
		fi
	done
}

make_headers_mk() {
	if ! [ -f "${DEPS}/all.h" ]; then
		find_all
	fi

	rm -f "${TOPDIR}/.headers.mk"
	printf '.POSIX:\n.DEFAULT: headers\ninclude config.mk\n\n' > "${TOPDIR}/.headers.mk"

	for header in $(cat "${DEPS}/all.h"); do
		printf 'Building dependencies for <%s>\n' "$header"
		printf '$(INCDIR)/%s: mkh.sh ' "$header" >> "${TOPDIR}/.headers.mk"
		grep -l "#include <${header}>" $(cat "${DEPS}/all.c" "${DEPS}/all.ref") | sed -e "s#${SRCDIR}#\$(SRCDIR)#" | tr '\n' ' ' >> "${TOPDIR}/.headers.mk"
		printf '\n\tINCDIR=$(INCDIR) sh mkh.sh $@\n\n' >> "${TOPDIR}/.headers.mk"
	done

	printf 'headers: ' >> "${TOPDIR}/.headers.mk"
	for header in $(cat "${DEPS}/all.h"); do
		printf ' \\\n\t$(INCDIR)/%s' "$header" >> "${TOPDIR}/.headers.mk"
	done

	printf '\n' >> "${TOPDIR}/.headers.mk"
}

make_deps_mk() {
	rm -f "${TOPDIR}/.deps.mk"
	printf '.POSIX:\n.DEFAULT: all\ninclude config.mk\n\n' > "${TOPDIR}/.deps.mk"

	for file in $(cat "${DEPS}/all.c"); do
		printf 'Building dependencies from %s\n' "$file"
		type=$(classify_source "${file}")

		if [ ${type} = EXTERN -o ${type} = TGFN -o ${type} = FUNCTION ]; then
			printf '$(OBJDIR)/%s.o: $(SRCDIR)/%s' "$(basename $file .c)" "$file" >> "${TOPDIR}/.deps.mk"
			for header in $(grep '#include' "${file}"); do
				printf ' \\\n\t$(INCDIR)/%s' "$header" >> "${TOPDIR}/.deps.mk"
			done
			printf '\n\t$(CC) $(CFLAGS) -c $(SRCDIR)/%s -o $@\n\n' "$file" >> "${TOPDIR}/.deps.mk"
		fi
	done
}
