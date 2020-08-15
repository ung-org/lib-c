libc_C.199409: libc.a(vswprintf.o)
libc.a(vswprintf.o): $(OBJDIR)/vswprintf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vswprintf.o: src/wchar/vswprintf.c
$(OBJDIR)/vswprintf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vswprintf.c
