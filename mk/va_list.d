libc_X.4: libc.a(va_list.o)
libc.a(va_list.o): $(OBJDIR)/va_list.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/va_list.o: src/varargs/va_list.c
$(OBJDIR)/va_list.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/varargs/va_list.c
