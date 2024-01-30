libc_C_X1.201112: libc.a(vwprintf_s.o)
libc.a(vwprintf_s.o): $(OBJDIR)/vwprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vwprintf_s.o: src/wchar/vwprintf_s.c
$(OBJDIR)/vwprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/vwprintf_s.c
