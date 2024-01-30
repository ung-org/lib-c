libc_C.199409: libc.a(iswcntrl.o)
libc.a(iswcntrl.o): $(OBJDIR)/iswcntrl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswcntrl.o: src/wctype/iswcntrl.c
$(OBJDIR)/iswcntrl.o: src/_safety.h
$(OBJDIR)/iswcntrl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/iswcntrl.c
