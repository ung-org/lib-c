.POSIX:

default: all

include config.mk

INCLUDES=-I$(INCDIR) -I. -Inonstd/stubs
CFLAGS=$(INCLUDES) -g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -fPIC

all: .deps.mk
	@$(MAKE) -f .deps.mk $@

.deps.mk:
	sh mkmf.sh $(STANDARD)
	rm -rf .dep

.headers.mk:
	sh mkmf.sh $(STANDARD)
	rm -rf .dep

headers: .headers.mk
	@$(MAKE) -f .headers.mk $@

clean:
	rm -rf $(OBJDIR) *.a

git-clean: clean
	rm -rf .dep .headers.mk .deps.mk include
