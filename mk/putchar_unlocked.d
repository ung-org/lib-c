libc_P.199506: libc.a(putchar_unlocked.o)
libc.a(putchar_unlocked.o): $(OBJDIR)/putchar_unlocked.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putchar_unlocked.o: src/stdio/putchar_unlocked.c
$(OBJDIR)/putchar_unlocked.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/putchar_unlocked.c
