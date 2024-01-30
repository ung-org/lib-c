libc_C.1: libc.a(fputc.o)
libc.a(fputc.o): $(OBJDIR)/fputc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fputc.o: src/stdio/fputc.c
$(OBJDIR)/fputc.o: src/stdio/_stdio.h
$(OBJDIR)/fputc.o: src/stdio/putc_unlocked.c
$(OBJDIR)/fputc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fputc.c
