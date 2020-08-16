libc_C_X1.201112: libc.a(vswprintf_s.o)
libc.a(vswprintf_s.o): $(OBJDIR)/vswprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vswprintf_s.o: src/wchar/vswprintf_s.c
$(OBJDIR)/vswprintf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vswprintf_s.c
