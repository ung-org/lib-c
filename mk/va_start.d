libc_X.4: libc.a(va_start.o)
libc.a(va_start.o): $(OBJDIR)/va_start.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_start.o: src/varargs/va_start.c
$(OBJDIR)/va_start.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/varargs/va_start.c
