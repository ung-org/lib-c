libc_C.199409: libc.a(iswctype.o)
libc.a(iswctype.o): $(OBJDIR)/iswctype.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswctype.o: src/wctype/iswctype.c
$(OBJDIR)/iswctype.o: src/_safety.h
$(OBJDIR)/iswctype.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswctype.c
