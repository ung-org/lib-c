libc_X.4: libc.a(getw.o)
libc.a(getw.o): $(OBJDIR)/getw.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getw.o: src/stdio/getw.c
$(OBJDIR)/getw.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/getw.c
