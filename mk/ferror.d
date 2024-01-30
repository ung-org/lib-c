libc_C.1: libc.a(ferror.o)
libc.a(ferror.o): $(OBJDIR)/ferror.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ferror.o: src/stdio/ferror.c
$(OBJDIR)/ferror.o: src/stdio/_stdio.h
$(OBJDIR)/ferror.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/ferror.c
