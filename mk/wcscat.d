libc_C.199409: libc.a(wcscat.o)
libc.a(wcscat.o): $(OBJDIR)/wcscat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscat.o: src/wchar/wcscat.c
$(OBJDIR)/wcscat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscat.c
