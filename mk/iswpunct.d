libc_C.199409: libc.a(iswpunct.o)
libc.a(iswpunct.o): $(OBJDIR)/iswpunct.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswpunct.o: src/wctype/iswpunct.c
$(OBJDIR)/iswpunct.o: src/_safety.h
$(OBJDIR)/iswpunct.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswpunct.c
