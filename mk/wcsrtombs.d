libc_C.199409: libc.a(wcsrtombs.o)
libc.a(wcsrtombs.o): $(OBJDIR)/wcsrtombs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsrtombs.o: src/wchar/wcsrtombs.c
$(OBJDIR)/wcsrtombs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsrtombs.c
