.POSIX:

#include .config.mk

AR=ar
ARFLAGS=rU
BASE_CFLAGS=-g -O0 -Wall -Wextra -Werror -nostdinc -fno-builtin -fno-stack-protector -fPIC -I$(INCDIR) -Isrc -D__UNG_INTERNAL__
OBJDIR=obj
SRCDIR=src

## Previously in .configure.mk
ARCHITECTURE=x86
WORDSIZE=64
TOPDIR=.
SRCDIR=$(TOPDIR)/src
INCDIR=/lib/include
OBJDIR=./obj

include mk/configured.mk

all: libung.so

include mk/all.mk

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

c89 c90:
	printf '.POSIX:\n\n' > mk/configured.mk
	printf 'CC=c89\n' >> mk/configured.mk
	printf 'CFLAGS=$$(BASE_CFLAGS) $(CFLAGS)\n' >> mk/configured.mk
	printf 'all: libc_C.0\n' >> mk/configured.mk
	printf 'all: libc_C.1\n' >> mk/configured.mk
	printf 'all: libm_C.0\n' >> mk/configured.mk
	printf 'all: libm_C.1\n' >> mk/configured.mk
	$(MAKE)

# 199409
c94 c95 amd1:
	printf '.POSIX:\n\n' > mk/configured.mk
	printf 'CC=c89\n' >> mk/configured.mk
	printf 'CFLAGS=-std=c94 $$(BASE_CFLAGS) $(CFLAGS)\n' >> mk/configured.mk
	printf 'all: libc_C.0\n' >> mk/configured.mk
	printf 'all: libc_C.1\n' >> mk/configured.mk
	printf 'all: libc_C.199409\n' >> mk/configured.mk
	printf 'all: libm_C.0\n' >> mk/configured.mk
	printf 'all: libm_C.1\n' >> mk/configured.mk
	$(MAKE)


# 199901
c99:
	printf '.POSIX:\n\n' > mk/configured.mk
	printf 'CC=c99\n' >> mk/configured.mk
	printf 'CFLAGS=$$(BASE_CFLAGS) $(CFLAGS)\n' >> mk/configured.mk
	printf 'all: libc_C.0\n' >> mk/configured.mk
	printf 'all: libc_C.1\n' >> mk/configured.mk
	printf 'all: libc_C.199409\n' >> mk/configured.mk
	printf 'all: libc_C.199901\n' >> mk/configured.mk
	printf 'all: libm_C.0\n' >> mk/configured.mk
	printf 'all: libm_C.1\n' >> mk/configured.mk
	printf 'all: libm_C.199901\n' >> mk/configured.mk
	$(MAKE)

# 201112
c11:
c11+ext1: c11

# 201710
c17 c18:
c17+ext1 c18+ext1: c18

# _POSIX_SOURCE
posix-1: c89

posix-1+amd1 posix-1+c94 posix-1+c95: c94

# _POSIX_C_SOURCE 2
posix-2: c89
posix-1+amd1 posix-1+c94 posix-1+c95: c94

# _POSIX_C_SOURCE 199309
posix-1993: c89
posix-1+amd1 posix-1+c94 posix-1+c95: c94

# _POSIX_C_SOURCE 199506
posix-1995: c94

# _POSIX_C_SOURCE 200112
posix-2001: c99

# _POSIX_C_SOURCE 200809
posix-2008: c99

# _XOPEN_SOURCE < 500 # TODO: +amd1
xopen-4 xpg-4: posix-1993

# _XOPEN_EXTENDED_UNIX # TODO: +amd1
susv1 xopen-4-extended xpg-4-extended: xopen-4	

# _XOPEN_SOURCE 500
susv2 xopen-500 xpg-5: posix-1995

# _XOPEN_SOURCE 600
susv3 xopen-600 xpg-6: posix-2001

# _XOPEN_SOURCE 700 # TODO: +c11/c18(+ext1)
susv4 xopen-700 xpg-7: posix-2008

deps:
	$(MAKE) -f mk/deps.mk

clean:
	$(RM) -rf *.a $(OBJDIR)

tags:
	ctags $$(find src -name \*.c)
