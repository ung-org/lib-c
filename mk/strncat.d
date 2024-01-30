libc_C.1: libc.a(strncat.o)
libc.a(strncat.o): $(OBJDIR)/strncat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncat.o: src/string/strncat.c
$(OBJDIR)/strncat.o: src/_safety.h
$(OBJDIR)/strncat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/string/strncat.c
