libc_C.0: libc.a(va_copy.o)
libc.a(va_copy.o): $(OBJDIR)/va_copy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_copy.o: src/stdarg/va_copy.c
$(OBJDIR)/va_copy.o: src/_safety.h
$(OBJDIR)/va_copy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdarg/va_copy.c
