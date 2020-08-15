.POSIX:

AR=ar
ARFLAGS=rU
BASE_CFLAGS=-g -Wall -Wextra -nostdinc -Iinclude -Isrc
OBJDIR=obj
SRCDIR=src

all: libc_C.0

include mk/all.mk
include .config.mk

cleandeps:
	$(RM) -f mk/*.mk
	$(RM) -f mk/*.d

newdeps: cleandeps
	printf '.POSIX:\n\nall:\n\n' > mk/deps.mk
	for i in $$(find src -name \*.c); do sh mk/deps.sh $$i; done

clean:
	$(RM) -rf *.a $(OBJDIR)

tags:
	ctags $$(find src -name \*.c)
