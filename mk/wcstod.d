libc_C.199409: libc.a(wcstod.o)
libc.a(wcstod.o): $(OBJDIR)/wcstod.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstod.o: src/wchar/wcstod.c
$(OBJDIR)/wcstod.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstod.c
