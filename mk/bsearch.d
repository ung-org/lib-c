libc_C.1: libc.a(bsearch.o)
libc.a(bsearch.o): $(OBJDIR)/bsearch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bsearch.o: src/stdlib/bsearch.c
$(OBJDIR)/bsearch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/bsearch.c
