libc_C.199409: libc.a(towctrans.o)
libc.a(towctrans.o): $(OBJDIR)/towctrans.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/towctrans.o: src/wctype/towctrans.c
$(OBJDIR)/towctrans.o: src/_safety.h
$(OBJDIR)/towctrans.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wctype/towctrans.c
