libc_C.199409: libc.a(iswupper.o)
libc.a(iswupper.o): $(OBJDIR)/iswupper.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswupper.o: src/wctype/iswupper.c
$(OBJDIR)/iswupper.o: src/_safety.h
$(OBJDIR)/iswupper.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswupper.c
