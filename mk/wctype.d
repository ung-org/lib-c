libc_C.199409: libc.a(wctype.o)
libc.a(wctype.o): $(OBJDIR)/wctype.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wctype.o: src/wctype/wctype.c
$(OBJDIR)/wctype.o: src/_safety.h
$(OBJDIR)/wctype.o: src/wctype/_wctype.h
$(OBJDIR)/wctype.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/wctype.c
