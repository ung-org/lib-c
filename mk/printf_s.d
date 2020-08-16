libc_C_X1.201112: libc.a(printf_s.o)
libc.a(printf_s.o): $(OBJDIR)/printf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/printf_s.o: src/stdio/printf_s.c
$(OBJDIR)/printf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/printf_s.c
