libc_C.199409: libc.a(wcrtomb.o)
libc.a(wcrtomb.o): $(OBJDIR)/wcrtomb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcrtomb.o: src/wchar/wcrtomb.c
$(OBJDIR)/wcrtomb.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcrtomb.c
