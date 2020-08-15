libc_C.199901: libc.a(iswblank.o)
libc.a(iswblank.o): $(OBJDIR)/iswblank.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswblank.o: src/wctype/iswblank.c
$(OBJDIR)/iswblank.o: src/_assert.h
$(OBJDIR)/iswblank.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/iswblank.c
