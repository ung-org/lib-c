#!/bin/sh
SOURCE=$1
BASE=$(basename $SOURCE .c)
LIB=$(grep LINK $SOURCE | tr -d 'LINK()')
test -z "$LIB" && LIB="c"

if ! grep -q "^mk/$BASE.d:" mk/deps.mk 2>&1; then
	printf 'all: mk/%s.d\n' $BASE >> mk/deps.mk
	printf 'mk/%s.d: %s\n' $BASE $SOURCE >> mk/deps.mk
	printf '\tsh mk/deps.sh %s\n\n' $SOURCE >> mk/deps.mk
fi

if ! grep -q "include mk/$BASE.d" mk/all.mk 2>&1; then
	printf 'include mk/%s.d\n' $BASE >> mk/all.mk
fi

exec > mk/$BASE.d

C=$(grep -F 'STDC(' $SOURCE | sed -e 's/STDC(//;s/,.*//;s/)$//g')
test -n "$C" && printf 'lib%s_C.%s: lib%s.a(%s.o)\n' $LIB $C $LIB $BASE

P=$(grep -F 'POSIX(' $SOURCE | sed -e 's/POSIX(//;s/,.*//;s/)$//g')
test -n "$P" && printf 'lib%s_P.%s: lib%s.a(%s.o)\n' $LIB $P $LIB $BASE

X=$(grep -F 'XOPEN(' $SOURCE | sed -e 's/XOPEN(//;s/,.*//;s/)$//g')
test -n "$X" && printf 'lib%s_X.%s: lib%s.a(%s.o)\n' $LIB $X $LIB $BASE

printf 'lib%s.a(%s.o): $(OBJDIR)/%s.o\n' $LIB $BASE $BASE
printf '$(OBJDIR)/%s.o: %s\n' $BASE $SOURCE

# includes

printf '$(OBJDIR)/%s.o:\n' $BASE
printf '\t@echo [CC] $@\n'
printf '\t@mkdir -p $(@D)\n'
printf '\t@$(CC) -c -o $@ $(CFLAGS) %s\n' $SOURCE
