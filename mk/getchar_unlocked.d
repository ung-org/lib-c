libc_P.199506: libc.a(getchar_unlocked.o)
libc.a(getchar_unlocked.o): $(OBJDIR)/getchar_unlocked.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getchar_unlocked.o: src/stdio/getchar_unlocked.c
$(OBJDIR)/getchar_unlocked.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/getchar_unlocked.c
