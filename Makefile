.POSIX:
.DEFAULT:;$(MAKE) all

include .config.mk

all: $(TOPDIR)/.deps.mk $(INCDIR)
	@mkdir -p $(OBJDIR)
	$(MAKE) -f .build.mk

deps: $(TOPDIR)/.headers.mk $(TOPDIR)/.deps.mk

$(TOPDIR)/.deps.mk: $(TOPDIR)/mk.sh
	sh -c '. $(TOPDIR)/mk.sh; cd $(TOPDIR); make_deps_mk'

$(TOPDIR)/.headers.mk: $(TOPDIR)/mk.sh
	sh -c '. $(TOPDIR)/mk.sh; cd $(TOPDIR); make_headers_mk'

headers $(INCDIR): $(TOPDIR)/.headers.mk $(TOPDIR)/mkh.sh
	$(MAKE) -f $(TOPDIR)/.headers.mk headers

ctags:
	ctags $$(find src -name \*.c)

clean:
	rm -rf $(OBJDIR) *.a

extra-clean: clean
	rm -rf .deps .deps.mk .headers.mk $(INCDIR)
