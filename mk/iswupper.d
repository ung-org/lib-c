libc_C.199409: libc.a(iswupper.o)
libc.a(iswupper.o): $(OBJDIR)/iswupper.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswupper.o: src/wctype/iswupper.c
$(OBJDIR)/iswupper.o: src/_assert.h
$(OBJDIR)/iswupper.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/iswupper.c
