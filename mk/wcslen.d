libc_C.199409: libc.a(wcslen.o)
libc.a(wcslen.o): $(OBJDIR)/wcslen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcslen.o: src/wchar/wcslen.c
$(OBJDIR)/wcslen.o: src/_safety.h
$(OBJDIR)/wcslen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcslen.c
