libc_X.4: libc.a(va_arg.o)
libc.a(va_arg.o): $(OBJDIR)/va_arg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_arg.o: src/varargs/va_arg.c
$(OBJDIR)/va_arg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/varargs/va_arg.c
