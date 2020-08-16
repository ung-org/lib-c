libc_C_X1.201112: libc.a(snwprintf_s.o)
libc.a(snwprintf_s.o): $(OBJDIR)/snwprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/snwprintf_s.o: src/wchar/snwprintf_s.c
$(OBJDIR)/snwprintf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/snwprintf_s.c
