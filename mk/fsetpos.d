libc_C.1: libc.a(fsetpos.o)
libc.a(fsetpos.o): $(OBJDIR)/fsetpos.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fsetpos.o: src/stdio/fsetpos.c
$(OBJDIR)/fsetpos.o: src/stdio/_stdio.h
$(OBJDIR)/fsetpos.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/fsetpos.c
