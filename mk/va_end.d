libc_X.4: libc.a(va_end.o)
libc.a(va_end.o): $(OBJDIR)/va_end.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_end.o: src/varargs/va_end.c
$(OBJDIR)/va_end.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/varargs/va_end.c
