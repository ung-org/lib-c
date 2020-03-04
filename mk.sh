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
	elif grep -q "^typedef " $1; then
		echo TYPE
	elif grep -q "^struct .*;$" $1; then
		echo TYPE
	elif grep -q "^typedef .*{$" $1; then
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

		printf '\t(%s)\n' "$(sed -ne "${loop}p" $parsed)"
	fi

	rm -f $parsed
}

get_declaration () {
	case ${2:-$(classify_source $1)} in

	REFERENCE)
		ref="$(grep -F 'REFERENCE(' $1 | m4 -DREFERENCE='$1')"
		if (echo "$ref" | grep -q '<.*>'); then
			echo "#include $ref"
		else
			get_declaration "src/${ref}"
		fi
		;;

	MACRO)
		if ! (grep -q '#undef' $1 && grep -q 'MAY-BE-UNDEF' $1); then
			grep -E '^(#(if|def|undef|el|end)|	)' $1
		fi
		;;

	TYPE|TYPE_LONG|RECORD|FNTYPE)
		base=$(basename $1 .c)
		printf '#ifndef __TYPE_%s_DEFINED__\n#define __TYPE_%s_DEFINED__\n' "$base" "$base"

		if grep -q '^#if' $1; then
			sed -ne '/^#if/,/#endif/p' $1
		elif grep -qE '^(typedef|struct|union) .*\{' $1; then
			sed -ne '/{$/,/^}/p' $1
		elif grep -qE '^(typedef|struct|union) .*[^;]$' $1; then
			grep -E '^(typedef|struct|union|	)' $1
		else
			grep -E '^(typedef|struct|union) ' $1
		fi

		printf '#endif\n\n'
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
	printf '.POSIX:\n.DEFAULT: headers\n\n' > "${TOPDIR}/.headers.mk"
	printf 'include .config.mk\n\n' > "${TOPDIR}/.headers.mk"

	for header in $(cat "${DEPS}/all.h"); do
		printf 'Building dependencies for <%s>\n' "$header"
		printf '$(INCDIR)/%s: mkh.sh ' "$header" >> "${TOPDIR}/.headers.mk"
		mkdir -p $(dirname "${TOPDIR}/.deps/h/${header}.deps")
		grep -l "#include <${header}>" $(cat "${DEPS}/all.c" "${DEPS}/all.ref") > "${TOPDIR}/.deps/h/${header}.deps"
		sed -e "s#${SRCDIR}#\$(SRCDIR)#" < "${TOPDIR}/.deps/h/${header}.deps" | tr '\n' ' ' >> "${TOPDIR}/.headers.mk"
		printf '\n\tINCDIR=$(INCDIR) sh mkh.sh $(INCDIR)/%s\n\n' "${header}" >> "${TOPDIR}/.headers.mk"
	done

	printf 'headers: ' >> "${TOPDIR}/.headers.mk"
	for header in $(cat "${DEPS}/all.h"); do
		printf ' \\\n\t$(INCDIR)/%s' "$header" >> "${TOPDIR}/.headers.mk"
	done

	printf '\n' >> "${TOPDIR}/.headers.mk"
}

make_deps_mk() {
	if ! [ -f "${DEPS}/all.c" ]; then
		find_all
	fi

	rm -f "${TOPDIR}/.deps.mk"
	rm -f "${DEPS}"/lib*

	printf '.POSIX:\ndefault: all\n\n' > "${TOPDIR}/.deps.mk"
	printf 'include .config.mk\n\n' > "${TOPDIR}/.deps.mk"
	printf 'BASE_CFLAGS=-I$(INCDIR) -fno-builtin -nostdinc\n' >> "${TOPDIR}/.deps.mk"
	printf '\n' >> "${TOPDIR}/.deps.mk"

	printf 'libc.a($(ARCHITECTURE)-$(WORDSIZE).o): $(OBJDIR)/$(ARCHITECTURE)-$(WORDSIZE).o\n' >> "${TOPDIR}/.deps.mk"
	printf '$(OBJDIR)/$(ARCHITECTURE)-$(WORDSIZE).o: $(SRCDIR)/nonstd/$(ARCHITECTURE)-$(WORDSIZE).s\n' >> "${TOPDIR}/.deps.mk"
	printf '\t$(CC) $(BASE_CFLAGS) $(CFLAGS) -c $(SRCDIR)/nonstd/$(ARCHITECTURE)-$(WORDSIZE).s -o $@\n\n' >> "${TOPDIR}/.deps.mk"

	# Make sure the architecture dependent stuff gets in
	printf '.POSIX:\nlibc_C_0_OBJS= \\\n' > "${DEPS}/libc.C_0"
	printf '\tlibc.a($(OBJDIR)/$(ARCHITECTURE)-$(WORDSIZE).o)' >> "${DEPS}/libc.C_0"

	for file in $(cat "${DEPS}/all.c"); do
		printf 'Building dependencies from %s\n' "$file"
		type=$(classify_source "${file}")

		if [ ${type} = EXTERN -o ${type} = TGFN -o ${type} = FUNCTION ]; then
			LINK=$(grep -F 'LINK(' $file | m4 -DLINK='$1')
			LIB=lib${LINK:-c}
			OBJ=$(basename $file .c).o

			printf '%s.a(%s): $(OBJDIR)/%s\n' $LIB $OBJ $OBJ >> "${TOPDIR}/.deps.mk"
			printf '$(OBJDIR)/%s: %s' "$OBJ" "$file" >> "${TOPDIR}/.deps.mk"
			#for header in $(grep '#include' "${file}"); do
				#printf ' \\\n\t$(INCDIR)/%s' "$header" >> "${TOPDIR}/.deps.mk"
			#done
			printf '\n\t$(CC) $(BASE_CFLAGS) $(CFLAGS) -c %s -o $@\n\n' "$file" >> "${TOPDIR}/.deps.mk"

			cver=$(stdc_base $file)
			pver=$(posix_base $file)
			xver=$(xopen_base $file)

			if [ -n "$cver" ]; then
				if ! [ -f "${DEPS}/${LIB}.C_${cver}" ]; then
					printf '.POSIX:\n%s_C_%s_OBJS=' "${LIB}" "${cver}" > "${DEPS}/${LIB}.C_${cver}"
				fi
				printf ' \\\n\t%s.a($(OBJDIR)/%s)' $LIB $OBJ >> "${DEPS}/${LIB}.C_${cver}"
			fi

			if [ -n "$pver" ]; then
				if ! [ -f "${DEPS}/${LIB}.POSIX_${pver}" ]; then
					printf '.POSIX:\n%s_POSIX_%s_OBJS=' "${LIB}" "${pver}" > "${DEPS}/${LIB}.POSIX_${pver}"
				fi
				printf ' \\\n\t%s.a($(OBJDIR)/%s)' $LIB $OBJ >> "${DEPS}/${LIB}.POSIX_${pver}"
			fi

			if [ -n "$xver" ]; then
				if ! [ -f "${DEPS}/${LIB}.XOPEN_${xver}" ]; then
					printf '.POSIX:\n%s_XOPEN_%s_OBJS=' "${LIB}" "${xver}" > "${DEPS}/${LIB}.XOPEN_${xver}"
				fi
				printf ' \\\n\t%s.a($(OBJDIR)/%s)' $LIB $OBJ >> "${DEPS}/${LIB}.XOPEN_${xver}"
			fi

			if [ -z "$cver" ] && [ -z "$pver" ] && [ -z "$xver" ]; then
				if ! [ -f "${DEPS}/${LIB}.C_0" ]; then
					printf '.POSIX:\n%s_C_0_OBJS=' "${LIB}" > "${DEPS}/${LIB}.C_0"
				fi
				printf ' \\\n\t%s.a($(OBJDIR)/%s)' $LIB $OBJ >> "${DEPS}/${LIB}.C_0"
			fi
		fi
	done

	printf '\n' >> "${TOPDIR}/.deps.mk"

	for libdep in ${DEPS}/lib*; do
		LIB=$(basename $libdep | sed -e 's/\..*$//')
		VER=$(basename $libdep | sed -e 's/^.*\.//')
		echo adding dependencies for $LIB v $VER
		printf 'include $(TOPDIR)/.deps/%s\n' $(basename $libdep) >> "${TOPDIR}/.deps.mk"
	done

	printf '\n' >> "${TOPDIR}/.deps.mk"
}
