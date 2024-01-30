libc_C_X1.201112: libc.a(wprintf_s.o)
libc.a(wprintf_s.o): $(OBJDIR)/wprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wprintf_s.o: src/wchar/wprintf_s.c
$(OBJDIR)/wprintf_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wprintf_s.c
