libc_C_X1.201112: libc.a(fwprintf_s.o)
libc.a(fwprintf_s.o): $(OBJDIR)/fwprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fwprintf_s.o: src/wchar/fwprintf_s.c
$(OBJDIR)/fwprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/fwprintf_s.c
