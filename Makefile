.POSIX:
.DEFAULT: all
.SILENT: all headers include
include config.mk

all: .deps.mk include
	$(MAKE) -f .deps.mk $@

deps .headers.mk .deps.mk:
	sh mkmf.sh $(STANDARD)

headers include: .headers.mk
	$(MAKE) -f .headers.mk include

ctags:
	ctags $$(find src -name \*.c)

clean:
	rm -rf $(OBJDIR) *.a

extra-clean: clean
	rm -rf .dep .*.mk include
