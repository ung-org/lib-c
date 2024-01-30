libc_C.199409: libc.a(iswprint.o)
libc.a(iswprint.o): $(OBJDIR)/iswprint.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswprint.o: src/wctype/iswprint.c
$(OBJDIR)/iswprint.o: src/_safety.h
$(OBJDIR)/iswprint.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswprint.c
