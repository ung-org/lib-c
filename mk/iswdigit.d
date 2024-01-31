libc_C.199409: libc.a(iswdigit.o)
libc.a(iswdigit.o): $(OBJDIR)/iswdigit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswdigit.o: src/wctype/iswdigit.c
$(OBJDIR)/iswdigit.o: src/wctype/_wctype.h
$(OBJDIR)/iswdigit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswdigit.c
