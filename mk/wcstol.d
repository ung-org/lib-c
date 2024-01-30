libc_C.199409: libc.a(wcstol.o)
libc.a(wcstol.o): $(OBJDIR)/wcstol.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstol.o: src/wchar/wcstol.c
$(OBJDIR)/wcstol.o: src/stdlib/_strtoi.h
$(OBJDIR)/wcstol.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstol.c
