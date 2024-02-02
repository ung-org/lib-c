libc_C.0: libc.a(va_end.o)
libc.a(va_end.o): $(OBJDIR)/va_end.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_end.o: src/stdarg/va_end.c
$(OBJDIR)/va_end.o: src/_safety.h
$(OBJDIR)/va_end.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdarg/va_end.c
