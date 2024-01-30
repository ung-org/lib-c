libc_C_X1.201112: libc.a(wcsncpy_s.o)
libc.a(wcsncpy_s.o): $(OBJDIR)/wcsncpy_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsncpy_s.o: src/wchar/wcsncpy_s.c
$(OBJDIR)/wcsncpy_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsncpy_s.c
