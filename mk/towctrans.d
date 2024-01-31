libc_C.199409: libc.a(towctrans.o)
libc.a(towctrans.o): $(OBJDIR)/towctrans.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/towctrans.o: src/wctype/towctrans.c
$(OBJDIR)/towctrans.o: src/wctype/_wctype.h
$(OBJDIR)/towctrans.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/towctrans.c
