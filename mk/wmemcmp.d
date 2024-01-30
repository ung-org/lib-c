libc_C.199409: libc.a(wmemcmp.o)
libc.a(wmemcmp.o): $(OBJDIR)/wmemcmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemcmp.o: src/wchar/wmemcmp.c
$(OBJDIR)/wmemcmp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemcmp.c
