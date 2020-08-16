libc_C_X1.201112: libc.a(vfwprintf_s.o)
libc.a(vfwprintf_s.o): $(OBJDIR)/vfwprintf_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfwprintf_s.o: src/wchar/vfwprintf_s.c
$(OBJDIR)/vfwprintf_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/vfwprintf_s.c
