libc_C.199409: libc.a(iswlower.o)
libc.a(iswlower.o): $(OBJDIR)/iswlower.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswlower.o: src/wctype/iswlower.c
$(OBJDIR)/iswlower.o: src/_safety.h
$(OBJDIR)/iswlower.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswlower.c
