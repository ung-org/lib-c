libc_C.199901: libc.a(wcstoll.o)
libc.a(wcstoll.o): $(OBJDIR)/wcstoll.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstoll.o: src/wchar/wcstoll.c
$(OBJDIR)/wcstoll.o: src/stdlib/_strtoi.h
$(OBJDIR)/wcstoll.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstoll.c
