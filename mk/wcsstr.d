libc_C.199409: libc.a(wcsstr.o)
libc.a(wcsstr.o): $(OBJDIR)/wcsstr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsstr.o: src/wchar/wcsstr.c
$(OBJDIR)/wcsstr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsstr.c
