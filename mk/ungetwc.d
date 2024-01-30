libc_C.199409: libc.a(ungetwc.o)
libc.a(ungetwc.o): $(OBJDIR)/ungetwc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ungetwc.o: src/wchar/ungetwc.c
$(OBJDIR)/ungetwc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/ungetwc.c
