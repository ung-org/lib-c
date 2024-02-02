libc_C.0: libc.a(va_start.o)
libc.a(va_start.o): $(OBJDIR)/va_start.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_start.o: src/stdarg/va_start.c
$(OBJDIR)/va_start.o: src/_safety.h
$(OBJDIR)/va_start.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdarg/va_start.c
