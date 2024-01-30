libc_C.199409: libc.a(wcstok.o)
libc.a(wcstok.o): $(OBJDIR)/wcstok.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstok.o: src/wchar/wcstok.c
$(OBJDIR)/wcstok.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstok.c
