libc_C.1: libc.a(puts.o)
libc.a(puts.o): $(OBJDIR)/puts.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/puts.o: src/stdio/puts.c
$(OBJDIR)/puts.o: src/stdio/_stdio.h
$(OBJDIR)/puts.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdio/puts.c
