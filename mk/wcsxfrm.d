libc_C.199409: libc.a(wcsxfrm.o)
libc.a(wcsxfrm.o): $(OBJDIR)/wcsxfrm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsxfrm.o: src/wchar/wcsxfrm.c
$(OBJDIR)/wcsxfrm.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsxfrm.c
