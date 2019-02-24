.POSIX:
.DEFAULT:;$(MAKE) all

ARCHITECTURE=x86
WORDSIZE=
SRCDIR=./src
INCDIR=./include
OBJDIR=/home/jkk/c/obj

CC=c99
CFLAGS=-D_XOPEN_SOURCE=700

all: .deps.mk include
	@mkdir -p $(OBJDIR)
	$(MAKE) -f .deps.mk 

deps: .headers.mk .deps.mk

.deps.mk: mk.sh
	sh -c '. ./mk.sh; make_deps_mk'

.headers.mk: mk.sh
	sh -c '. ./mk.sh; make_headers_mk'

headers include: .headers.mk mkh.sh
	$(MAKE) -f .headers.mk headers

ctags:
	ctags $$(find src -name \*.c)

clean:
	rm -rf $(OBJDIR) *.a

extra-clean: clean
	rm -rf .deps .*.mk $(INCDIR)
