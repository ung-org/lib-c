.POSIX:

default: all

include config.mk

INCLUDES=-I$(INCDIR) -I. -Inonstd/stubs
CFLAGS=$(INCLUDES) -g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -fPIC

all: .deps.mk headers
	@$(MAKE) -f .deps.mk $@

.deps.mk: deps

.headers.mk: deps

deps:
	sh mkmf.sh $(STANDARD)
	rm -rf .dep

tags:
	ctags $$(find src -name \*.c)

headers: .headers.mk
	@$(MAKE) -f .headers.mk $@

clean:
	rm -rf $(OBJDIR) *.a

extra-clean: clean
	rm -rf .dep .headers.mk .deps.mk include
