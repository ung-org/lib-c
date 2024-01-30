libc_P.200809: libc.a(mkstemp.o)
libc_X.400: libc.a(mkstemp.o)
libc.a(mkstemp.o): $(OBJDIR)/mkstemp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mkstemp.o: src/stdlib/mkstemp.c
$(OBJDIR)/mkstemp.o: src/stdlib/_stdlib.h
$(OBJDIR)/mkstemp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/mkstemp.c
