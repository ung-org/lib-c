libc_C.199409: libc.a(wcsftime.o)
libc.a(wcsftime.o): $(OBJDIR)/wcsftime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsftime.o: src/wchar/wcsftime.c
$(OBJDIR)/wcsftime.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsftime.c
