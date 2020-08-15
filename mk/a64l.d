libc_X.400: libc.a(a64l.o)
libc.a(a64l.o): $(OBJDIR)/a64l.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/a64l.o: src/stdlib/a64l.c
$(OBJDIR)/a64l.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/a64l.c
