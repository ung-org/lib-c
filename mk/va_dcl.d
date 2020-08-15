libc_X.4: libc.a(va_dcl.o)
libc.a(va_dcl.o): $(OBJDIR)/va_dcl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_dcl.o: src/varargs/va_dcl.c
$(OBJDIR)/va_dcl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/varargs/va_dcl.c
