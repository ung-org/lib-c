.POSIX:

include .config.mk

AR=ar
ARFLAGS=rU
BASE_CFLAGS=-g -O0 -Wall -Wextra -Werror -nostdinc -fno-builtin -fno-stack-protector -fPIC -I$(INCDIR) -Isrc -D__UNG_INTERNAL__
OBJDIR=obj
SRCDIR=src

all: libung.so

include mk/all.mk

cleandeps:
	$(RM) -f mk/*.mk
	$(RM) -f mk/*.d

newdeps: cleandeps
	printf '.POSIX:\n\nall:\n\n' > mk/deps.mk
	for i in $$(find src -name \*.c); do sh mk/deps.sh $$i; done
	for i in $$(find src -name \*.$(ARCHITECTURE)-$(WORDSIZE).s); do sh mk/deps.sh $$i; done

libung.so: libc.a libm.a
	$(CC) -o libung.so -shared obj/*.o

deps:
	$(MAKE) -f mk/deps.mk

clean:
	$(RM) -rf *.a $(OBJDIR)

tags:
	ctags $$(find src -name \*.c)
