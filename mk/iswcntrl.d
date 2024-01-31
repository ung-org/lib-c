libc_C.199409: libc.a(iswcntrl.o)
libc.a(iswcntrl.o): $(OBJDIR)/iswcntrl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswcntrl.o: src/wctype/iswcntrl.c
$(OBJDIR)/iswcntrl.o: src/wctype/_wctype.h
$(OBJDIR)/iswcntrl.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswcntrl.c
