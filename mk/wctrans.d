libc_C.199409: libc.a(wctrans.o)
libc.a(wctrans.o): $(OBJDIR)/wctrans.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wctrans.o: src/wctype/wctrans.c
$(OBJDIR)/wctrans.o: src/wctype/_wctype.h
$(OBJDIR)/wctrans.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/wctrans.c
