libc_P.199506: libc.a(putc_unlocked.o)
libc.a(putc_unlocked.o): $(OBJDIR)/putc_unlocked.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putc_unlocked.o: src/stdio/putc_unlocked.c
$(OBJDIR)/putc_unlocked.o: src/stdio/_stdio.h
$(OBJDIR)/putc_unlocked.o: src/_syscall.h
$(OBJDIR)/putc_unlocked.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/putc_unlocked.c
