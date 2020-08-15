libc_C.199409: libc.a(towlower.o)
libc.a(towlower.o): $(OBJDIR)/towlower.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/towlower.o: src/wctype/towlower.c
$(OBJDIR)/towlower.o: src/_assert.h
$(OBJDIR)/towlower.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/towlower.c
