libc_C.199409: libc.a(fwprintf.o)
libc.a(fwprintf.o): $(OBJDIR)/fwprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwprintf.o: src/wchar/fwprintf.c
$(OBJDIR)/fwprintf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/fwprintf.c
