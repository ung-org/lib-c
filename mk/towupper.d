libc_C.199409: libc.a(towupper.o)
libc.a(towupper.o): $(OBJDIR)/towupper.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/towupper.o: src/wctype/towupper.c
$(OBJDIR)/towupper.o: src/_safety.h
$(OBJDIR)/towupper.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/towupper.c
