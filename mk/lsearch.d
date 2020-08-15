libc_X.4: libc.a(lsearch.o)
libc.a(lsearch.o): $(OBJDIR)/lsearch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lsearch.o: src/search/lsearch.c
$(OBJDIR)/lsearch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/lsearch.c
