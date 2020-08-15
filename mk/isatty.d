libc_P.1: libc.a(isatty.o)
libc.a(isatty.o): $(OBJDIR)/isatty.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/isatty.o: src/unistd/isatty.c
$(OBJDIR)/isatty.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/isatty.c
