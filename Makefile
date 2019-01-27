.POSIX:

default: all

#STANDARD=POSIX.1-1990
STANDARD=9899-1990
STDDIR=std/$(STANDARD)
CC=c89

CFLAGS=-g -fno-builtin -nostdinc -nostdlib -nodefaultlibs -Werror -Wall -Wextra -Wno-missing-field-initializers -fPIC -Iinclude -I. -Inonstd/stubs

all: include .dep/$(STANDARD).mk
	mkdir -p obj
	$(MAKE) -f .dep/$(STANDARD).mk

include: .dep/$(STANDARD)
	sed -e 's#std/.[^/]*/##' -e 's#/.[^/]*$$##' .dep/$(STANDARD) | grep -v '.c$$' | sort -u > .dep/headers
	for i in $$(cat .dep/headers); do $(MAKE) HEADER=$$i $$i; done
	rm .dep/headers

$(HEADER): include/$(HEADER).h

## special case for assert.h, as it is *not* idempotent
include/assert.h: std/9899-1990/assert/assert.c
	head -n19 std/9899-1990/assert/assert.c | tail +3 > $@

include/$(HEADER).h: .dep/$(STANDARD).defs .dep/$(STANDARD).types .dep/$(STANDARD).structs .dep/$(STANDARD).vars .dep/$(STANDARD).funcs
	mkdir -p $$(dirname $@)
	printf '#ifndef __%s_H__\n#define __%s_H__\n\n' "$$(echo $(HEADER) | tr a-z/ A-Z_)" "$$(echo $(HEADER) | tr a-z/ A-Z_)" > $@
	printf '/* backwards compatibility */\n' >> $@
	printf '#if !defined (__STDC_VERSION__) || (__STDC_VERSION__ < 199009L)\n' >> $@
	printf '#define restrict\n' >> $@
	printf '#endif\n' >> $@
	printf '\n/* macros */\n' >> $@
	for i in $$(grep '^std/.[^/]*/$(HEADER)/' .dep/$(STANDARD).defs); do sh nonstd/addefs $$i $@; done
	printf '\n/* types */\n' >> $@
	for i in $$(grep '^std/.[^/]*/$(HEADER)/' .dep/$(STANDARD).types); do sh nonstd/addefs $$i $@; done
	printf '\n/* structs */\n' >> $@
	for i in $$(grep '^std/.[^/]*/$(HEADER)/' .dep/$(STANDARD).structs); do sh nonstd/addefs $$i $@; done
	printf '\n/* variables */\n' >> $@
	for i in $$(grep '^std/.[^/]*/$(HEADER)/' .dep/$(STANDARD).vars); do sh nonstd/addefs $$i $@; done
	printf '\n/* functions */\n' >> $@
	for i in $$(grep '^std/.[^/]*/$(HEADER)/' .dep/$(STANDARD).funcs); do sh nonstd/addefs $$i $@; done
	printf '\n#endif\n' >> $@

.dep/$(STANDARD).defs: .dep/$(STANDARD)
	grep -El '^#(un|)define' $$(cat .dep/$(STANDARD)) > $@

.dep/$(STANDARD).types: .dep/$(STANDARD) .dep/$(STANDARD).defs
	grep -El '^typedef.*$$' $$(grep -v -f .dep/$(STANDARD).defs .dep/$(STANDARD)) > $@

.dep/$(STANDARD).structs: .dep/$(STANDARD) .dep/$(STANDARD).defs .dep/$(STANDARD).types
	grep -El '^(struct|union).*{' $$(grep -v -f .dep/$(STANDARD).defs -f .dep/$(STANDARD).types .dep/$(STANDARD)) > $@

.dep/$(STANDARD).vars: .dep/$(STANDARD) .dep/$(STANDARD).defs .dep/$(STANDARD).types .dep/$(STANDARD).structs
	grep -El '^[a-zA-Z_].*;$$' $$(grep -v -f .dep/$(STANDARD).defs -f .dep/$(STANDARD).types -f .dep/$(STANDARD).structs .dep/$(STANDARD)) > $@

.dep/$(STANDARD).funcs: .dep/$(STANDARD) .dep/$(STANDARD).defs .dep/$(STANDARD).types .dep/$(STANDARD).structs .dep/$(STANDARD).vars
	grep -El '^[a-zA-Z_].*\)$$' $$(grep -v -f .dep/$(STANDARD).defs -f .dep/$(STANDARD).types -f .dep/$(STANDARD).structs -f .dep/$(STANDARD).vars .dep/$(STANDARD)) > $@


.dep/$(STANDARD):
	-for i in $$(cat $(STDDIR)/INCLUDE); do $(MAKE) STANDARD=$$i .dep/$$i; done
	mkdir -p .dep
	-cat .dep/* > $@
	find $(STDDIR) -name \*.ref >> $@.refs
	for i in $$(cat $@.refs); do ln -sf $$(grep ^REF $$i | m4 -DREFERENCE=$$(pwd)/std/'$$1') $$(dirname $$i)/$$(basename $$i .ref).c; done
	find $(STDDIR) -name \*.c >> $@
	mv $@ $@.tmp
	sort -u $@.tmp > $@
	rm $@.tmp



deps: .dep/$(STANDARD).mk

.dep/$(STANDARD).mk: .dep/$(STANDARD).vars .dep/$(STANDARD).funcs
	mkdir -p $$(dirname $@)
	printf 'CC=$(CC)\n' > $@
	printf 'CFLAGS=$(CFLAGS)\n' >> $@
	printf 'all: \\\n' >> $@
	for i in $$(cat .dep/$(STANDARD).vars .dep/$(STANDARD).funcs); do if [ -f $$i ]; then printf '\tobj/%s.o \\\n' "$$(basename $$i .c)" >> $@; fi; done
	printf '\n' >> $@
	for i in $$(cat .dep/$(STANDARD).vars .dep/$(STANDARD).funcs); do if [ -f $$i ]; then printf 'obj/%s.o: %s\n\t$$(CC) $$(CFLAGS) -c %s -o $$@\n\n' "$$(basename $$i .c)" "$$i" "$$i" >> $@; fi; done

clean:
	rm -rf obj

git-clean:
	rm -rf include .dep
