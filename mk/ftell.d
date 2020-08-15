libc_C.1: libc.a(ftell.o)
libc.a(ftell.o): $(OBJDIR)/ftell.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ftell.o: src/stdio/ftell.c
$(OBJDIR)/ftell.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/ftell.c
