libc_C.199901: libc.a(iswblank.o)
libc.a(iswblank.o): $(OBJDIR)/iswblank.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswblank.o: src/wctype/iswblank.c
$(OBJDIR)/iswblank.o: src/_safety.h
$(OBJDIR)/iswblank.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wctype/iswblank.c
