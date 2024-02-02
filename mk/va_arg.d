libc_C.0: libc.a(va_arg.o)
libc.a(va_arg.o): $(OBJDIR)/va_arg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_arg.o: src/stdarg/va_arg.c
$(OBJDIR)/va_arg.o: src/_safety.h
$(OBJDIR)/va_arg.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdarg/va_arg.c
