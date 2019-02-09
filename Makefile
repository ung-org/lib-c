.POSIX:
.DEFAULT: all
.SILENT: all headers include
include config.mk

all: .deps.mk include
	$(MAKE) -f .deps.mk $@

deps: .headers.mk .deps.mk

.deps.mk:
	sh -c '. ./mk.sh; make_deps_mk'

.headers.mk:
	sh -c '. ./mk.sh; make_headers_mk'

headers include: .headers.mk
	$(MAKE) -f .headers.mk headers

ctags:
	ctags $$(find src -name \*.c)

C_1:		.deps.mk		; $(MAKE) -f .deps.mk $@
C_199409:	C_1			; $(MAKE) -f .deps.mk $@
C_199901:	C_199409		; $(MAKE) -f .deps.mk $@
C_201112:	C_199901		; $(MAKE) -f .deps.mk $@
C_201710:	C_201112		; $(MAKE) -f .deps.mk $@

POSIX_1:	C_1			; $(MAKE) -f .deps.mk $@
POSIX_2:	POSIX_1			; $(MAKE) -f .deps.mk $@
POSIX_199309:	POSIX_1			; $(MAKE) -f .deps.mk $@
POSIX_199506:	POSIX_199309		; $(MAKE) -f .deps.mk $@
POSIX_200112:	POSIX_199506 C_199901	; $(MAKE) -f .deps.mk $@
POSIX_200809:	POSIX_200112		; $(MAKE) -f .deps.mk $@

XOPEN_4:	POSIX_2 POSIX_1		; $(MAKE) -f .deps.mk $@
XOPEN_400:	XOPEN_4			; $(MAKE) -f .deps.mk $@
XOPEN_500:	XOPEN_400 POSIX_199506	; $(MAKE) -f .deps.mk $@
XOPEN_600:	XOPEN_500 POSIX_200112	; $(MAKE) -f .deps.mk $@
XOPEN_700:	XOPEN_600 POSIX_200809	; $(MAKE) -f .deps.mk $@

clean:
	rm -rf $(OBJDIR) *.a

extra-clean: clean
	rm -rf .deps .*.mk $(INCDIR)
