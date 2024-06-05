libc_C.199409: libc.a(wcrtomb.o)
libc.a(wcrtomb.o): $(OBJDIR)/wcrtomb.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcrtomb.o: src/wchar/wcrtomb.c
$(OBJDIR)/wcrtomb.o: src/wchar/_wchar.h
$(OBJDIR)/wcrtomb.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcrtomb.c
