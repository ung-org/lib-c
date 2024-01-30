libc_C.1: libc.a(putc.o)
libc.a(putc.o): $(OBJDIR)/putc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/putc.o: src/stdio/putc.c
$(OBJDIR)/putc.o: src/stdio/_stdio.h
$(OBJDIR)/putc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/putc.c
