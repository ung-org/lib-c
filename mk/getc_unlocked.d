libc_P.199506: libc.a(getc_unlocked.o)
libc.a(getc_unlocked.o): $(OBJDIR)/getc_unlocked.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getc_unlocked.o: src/stdio/getc_unlocked.c
$(OBJDIR)/getc_unlocked.o: src/stdio/_stdio.h
$(OBJDIR)/getc_unlocked.o: src/_syscall.h
$(OBJDIR)/getc_unlocked.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/getc_unlocked.c
