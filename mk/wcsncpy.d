libc_C.199409: libc.a(wcsncpy.o)
libc.a(wcsncpy.o): $(OBJDIR)/wcsncpy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsncpy.o: src/wchar/wcsncpy.c
$(OBJDIR)/wcsncpy.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsncpy.c
