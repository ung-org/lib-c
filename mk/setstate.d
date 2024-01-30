libc_X.400: libc.a(setstate.o)
libc.a(setstate.o): $(OBJDIR)/setstate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setstate.o: src/stdlib/setstate.c
$(OBJDIR)/setstate.o: src/stdlib/_stdlib.h
$(OBJDIR)/setstate.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/setstate.c
