.POSIX:

default: all

include config.mk

INCLUDES=-I$(INCDIR) -I. -Inonstd/stubs
CFLAGS=$(INCLUDES) -g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -fPIC -D_POSIX_SOURCE

all: .deps.mk include
	@$(MAKE) -f .deps.mk $@

.deps.mk:
	$(MAKE) deps

.headers.mk:
	$(MAKE) deps

deps:
	sh mkmf.sh $(STANDARD)
	rm -rf .dep

tags:
	ctags $$(find src -name \*.c)

include:
	$(MAKE) headers

headers: .headers.mk
	@$(MAKE) -f .headers.mk $@

clean:
	rm -rf $(OBJDIR) *.a

extra-clean: clean
	rm -rf .dep .headers.mk .deps.mk include
