libc_C_X1.201112: libc.a(wcscat_s.o)
libc.a(wcscat_s.o): $(OBJDIR)/wcscat_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcscat_s.o: src/wchar/wcscat_s.c
$(OBJDIR)/wcscat_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcscat_s.c
