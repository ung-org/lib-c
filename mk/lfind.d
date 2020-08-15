libc_X.4: libc.a(lfind.o)
libc.a(lfind.o): $(OBJDIR)/lfind.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lfind.o: src/search/lfind.c
$(OBJDIR)/lfind.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/lfind.c
