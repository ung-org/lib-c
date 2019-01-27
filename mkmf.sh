#!/bin/sh

classify_source () {
	NAME=$(basename $1 .c)

	if grep -q "define ${NAME}[ (]" $1; then
		echo MACRO
	elif grep -q "typedef.* ${NAME};" $1; then
		echo TYPE
	elif grep -q "typedef.*{$" $1; then
		echo TYPE_LONG
	elif grep -q "struct.*${NAME} {" $1; then
		echo STRUCT
	elif grep -q "union.* ${NAME} {" $1; then
		echo UNION
	elif grep -q "^[A-Za-z_].* ${NAME};" $1; then
		echo EXTERN
	else
		echo FUNCTION
	fi
}

STANDARD=${1-9899-1990}
#STANDARD=${1-POSIX.1-1990}

if [ ! -f .dep/to-build ]; then
	rm -rf .dep Makefile header.mk
	mkdir -p .dep
	echo ${STANDARD} > .dep/to-build
fi

if [ ! -d std/${STANDARD} ]; then
	printf "Standard %s not found.\n" "${STANDARD}"
	exit 1
fi

if [ -f std/${STANDARD}/INCLUDE ]; then
	for i in $(cat std/${STANDARD}/INCLUDE); do
		$0 $i
	done
fi

rm -f .dep/${STANDARD}.*

for i in $(find std/${STANDARD} -name \*.c); do
	NAME=$(basename $i .c)
	TYPE=$(classify_source $i)
	HEADER=$(sed -ne 's/.*<\(.*\.h\)>.*/\1/p' $i)
	LIB=$(grep '^LINK(' $i | m4 -DLINK='lib$1')
	LIB=${LIB:-libc}

	if [ ! -f .dep/${HEADER}.mk ]; then
		mkdir -p $(dirname .dep/${HEADER}.mk)
		printf '$(INCDIR)/%s:' "${HEADER}" > .dep/${HEADER}.mk
	fi
	printf ' \\\n\t%s' "$i" >> .dep/${HEADER}.mk

	if [ ${TYPE} = EXTERN -o ${TYPE} = FUNCTION ]; then
		printf '$(OBJDIR)/%s.o: %s $(INCDIR)/%s' ${NAME} $i ${HEADER}> .dep/${NAME}.o.mk
		for j in $(grep include $i); do
			: # TODO: add each header to depends file here
		done
		printf '\n\t-@mkdir -p $(OBJDIR)\n\t$(CC) $(CFLAGS) -c %s -o $@\n\n' $i >> .dep/${NAME}.o.mk

		if [ ! -f .dep/${LIB}.a.mk ]; then
			printf '%s_OBJS =' ${LIB} > .dep/${LIB}.a.mk
			if [ ${LIB} = libc ]; then
				printf ' $(OBJDIR)/libc.o $(OBJDIR)/x86-64.o' >> .dep/${LIB}.a.mk
			fi
		fi
		printf ' \\\n\t$(OBJDIR)/%s.o' ${NAME} >> .dep/${LIB}.a.mk
	fi

done

if [ $(cat .dep/to-build) = ${STANDARD} ]; then
	printf '.POSIX:\n\n' > Makefile
	printf 'default: all\n\n' >> Makefile
	printf 'include config.mk\n\n' >> Makefile
	printf 'INCLUDES=-I$(INCDIR) -I. -Inonstd/stubs\n' >> Makefile
	printf 'CFLAGS=$(INCLUDES) -g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -fPIC\n\n' >> Makefile

	for i in .dep/lib*.a.mk; do
		LIB=$(basename $i .a.mk)
		cat $i >> Makefile
		printf '\n\n%s.a: $(%s_OBJS)\n\t$(AR) r $@ $?\n\n' $LIB $LIB >> Makefile
	done

	printf '.POSIX:\n\ninclude config.mk\n\n' > headers.mk
	for i in $(find .dep -name \*.h.mk); do
		cat $i >> headers.mk
		printf '\n\t./gen-header $@\n\n' >> headers.mk
	done

	cat .dep/*.o.mk >> Makefile

	printf '$(OBJDIR)/libc.o: nonstd/libc.c\n\t$(CC) $(CFLAGS) -c $? -o $@\n\n' >> Makefile
	printf '$(OBJDIR)/x86-64.o: nonstd/x86-64.s\n\t$(CC) $(CFLAGS) -c $? -o $@\n\n' >> Makefile

	printf 'all:' >> Makefile
	for i in  .dep/lib*.a.mk; do
		printf ' %s' $(basename $i .mk) >> Makefile
	done
	printf '\n\n' >> Makefile

	printf 'clean:\n\trm -rf $(OBJDIR) *.a\n\n' >> Makefile
	printf 'git-clean: clean\n\trm -rf .dep header.mk Makefile\n\n' >> Makefile
	
fi
