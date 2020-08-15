libc_C.199409: libc.a(iswspace.o)
libc.a(iswspace.o): $(OBJDIR)/iswspace.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/iswspace.o: src/wctype/iswspace.c
$(OBJDIR)/iswspace.o: src/_assert.h
$(OBJDIR)/iswspace.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/iswspace.c
