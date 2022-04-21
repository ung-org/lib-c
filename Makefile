.POSIX:

include .config.mk

AR=ar
ARFLAGS=rU
BASE_CFLAGS=-g -Wall -Wextra -Werror -nostdinc -fno-builtin -fno-stack-protector -fPIC -I$(INCDIR) -Isrc
OBJDIR=obj
SRCDIR=src

all:

include mk/all.mk

cleandeps:
	$(RM) -f mk/*.mk
	$(RM) -f mk/*.d

newdeps: cleandeps
	printf '.POSIX:\n\nall:\n\n' > mk/deps.mk
	for i in $$(find src -name \*.c); do sh mk/deps.sh $$i; done

deps:
	$(MAKE) -f mk/deps.mk

clean:
	$(RM) -rf *.a $(OBJDIR)

tags:
	ctags $$(find src -name \*.c)
