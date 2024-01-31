.POSIX:

#include .config.mk

AR=ar
ARFLAGS=rU
CFLAGS=-g -O0 -Wall -Wextra -Werror -nostdinc -fno-builtin -fno-stack-protector -fPIC -I$(INCDIR) -Isrc -D__UNG_INTERNAL__
OBJDIR=obj
SRCDIR=src

## Previously in .configure.mk
ARCHITECTURE=x86
WORDSIZE=64
TOPDIR=.
SRCDIR=$(TOPDIR)/src
INCDIR=/lib/include
OBJDIR=./obj

include mk/current

all: libung.so

include mk/all.mk
include mk/$(TARGET).vars
include mk/$(TARGET).libs

cleandeps:
	$(RM) -f mk/*.mk
	$(RM) -f mk/*.d

newdeps: cleandeps
	printf '.POSIX:\n\nall:\n\n' > mk/deps.mk
	for i in $$(find src -name \*.c); do sh mk/deps.sh $$i; done
	for i in $$(find src -name \*.$(ARCHITECTURE)-$(WORDSIZE).s); do sh mk/deps.sh $$i; done
	touch mk/configured.mk

libung.so: libc.a libm.a
	$(CC) -o libung.so -shared obj/*.o

c89 c94 c99 c11 c11-ext1 c18 c18-ext1 posix-1 posix-2 posix-1993 posix-1995 posix-2001 posix-2008 xopen-4 xopen-400 xopen-500 xopen-600 xopen-700: clean
	printf '.POSIX:\n\nTARGET=$@\n' > mk/current
	$(MAKE)

# aliases
c90: c89
c95 amd1: c94
c17: c18
c17-ext1: c18-ext1

# TODO: allow AMD1 with POSIX.1, POSIX.2, SUSv1
posix-1+amd1 posix-1+c94 posix-1+c95: c94
posix-1+amd1 posix-1+c94 posix-1+c95: c94
posix-1+amd1 posix-1+c94 posix-1+c95: c94

# TODO: SUSv4 + C18, SUSv4 + C18 + EXT1

# aliases
xpg-4: xopen-4
susv1 xopen-4-extended xpg-4-extended: xopen-400
susv2 xpg-5: xopen-500
susv3 xpg-6: xopen-600
susv4 xpg-7: xopen-700

deps:
	$(MAKE) -f mk/deps.mk

clean:
	$(RM) -rf *.a $(OBJDIR)

tags:
	ctags $$(find src -name \*.c)
