libc_C.199409: libc.a(wprintf.o)
libc.a(wprintf.o): $(OBJDIR)/wprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wprintf.o: src/wchar/wprintf.c
$(OBJDIR)/wprintf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wprintf.c
