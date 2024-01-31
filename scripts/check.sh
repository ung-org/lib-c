#!/bin/sh

check_standard() {
	if ! (grep -q -F -e 'STDC(' -e 'CEXT1(' -e 'POSIX(' -e 'XOPEN(' "$1"); then
		printf '%s has no standard declaration\n' "$1"
	fi
}

check_signal_safety() {
	if ! (grep -q -F 'SIGNAL_SAFE(' "$1"); then
		printf '%s has no signal safety information\n' "$1"
	fi
}

check_file() {
	check_standard $1
	if (echo $1 | grep -q '\.c$'); then
		check_signal_safety $1
	fi
}

if [ $# -eq 0 ]; then
	DIR=$(dirname $0)/../src
	find "${DIR}" -name \*.[ch] -exec sh $0 {} + | sed -e "s#^${DIR}#src#g"
else
	while [ $# -gt 0 ]; do
		if [ -d $1 ]; then
			find "$1" -name \*.[ch] -exec sh $0 {} +
		else
			check_file $1
		fi
		shift
	done
fi
