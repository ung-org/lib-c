#!/bin/sh

TOPDIR=$(dirname $0)
. ${TOPDIR}/mk.sh
DEPS=${TOPDIR}/.deps
SRCDIR=${TOPDIR}/src

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
	rm -f "${TOPDIR}/.headers.mk"
	printf '.POSIX:\n.DEFAULT: headers\ninclude config.mk\n\n' > "${TOPDIR}/.headers.mk"

	for header in $(cat "${DEPS}/all.h"); do
		printf 'Building dependencies for <%s>\n' "$header"
		printf '$(INCDIR)/%s: ' "$header" >> "${TOPDIR}/.headers.mk"
		#printf '$(INCDIR)/%s: $$(grep -l "#include <%s>" $$(cat %s/all.c %s/all.ref)\n' "$header" "$header" "${DEPS}" "${DEPS}" >> "${TOPDIR}/.headers.mk"
		grep -l "#include <${header}>" $(cat "${DEPS}/all.c" "${DEPS}/all.ref") | sed -e "s#${SRCDIR}#\$(SRCDIR)#" | tr '\n' ' ' >> "${TOPDIR}/.headers.mk"
		printf '\n\tsh mkh.sh $@\n\n' >> "${TOPDIR}/.headers.mk"
	done

	printf 'headers: ' >> "${TOPDIR}/.headers.mk"
	for header in $(cat "${DEPS}/all.h"); do
		printf ' \\\n\t$(INCDIR)/%s' "$header" >> "${TOPDIR}/.headers.mk"
	done

	printf '\n' >> "${TOPDIR}/.headers.mk"
}

make_deps_mk() {
	rm -f "${TOPDIR}/.deps.mk"
	echo 'all:;@echo ok\n' > "${TOPDIR}/.deps.mk"
}

make_deps_mk
