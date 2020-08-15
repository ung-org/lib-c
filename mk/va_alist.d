libc_X.4: libc.a(va_alist.o)
libc.a(va_alist.o): $(OBJDIR)/va_alist.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_alist.o: src/varargs/va_alist.c
$(OBJDIR)/va_alist.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/varargs/va_alist.c
