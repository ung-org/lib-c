libc_X.4: libc.a(tsearch.o)
libc.a(tsearch.o): $(OBJDIR)/tsearch.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tsearch.o: src/search/tsearch.c
$(OBJDIR)/tsearch.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/tsearch.c
