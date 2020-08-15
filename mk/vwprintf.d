libc_C.199409: libc.a(vwprintf.o)
libc.a(vwprintf.o): $(OBJDIR)/vwprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vwprintf.o: src/wchar/vwprintf.c
$(OBJDIR)/vwprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vwprintf.c
