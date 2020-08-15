libc_X.400: libc.a(dirname.o)
libc.a(dirname.o): $(OBJDIR)/dirname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dirname.o: src/libgen/dirname.c
$(OBJDIR)/dirname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/libgen/dirname.c
