libc_C_X1.201112: libc.a(bsearch_s.o)
libc.a(bsearch_s.o): $(OBJDIR)/bsearch_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bsearch_s.o: src/stdlib/bsearch_s.c
$(OBJDIR)/bsearch_s.o: src/stdlib/_stdlib.h
$(OBJDIR)/bsearch_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/bsearch_s.c
