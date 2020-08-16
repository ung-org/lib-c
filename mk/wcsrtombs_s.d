libc_C_X1.201112: libc.a(wcsrtombs_s.o)
libc.a(wcsrtombs_s.o): $(OBJDIR)/wcsrtombs_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsrtombs_s.o: src/wchar/wcsrtombs_s.c
$(OBJDIR)/wcsrtombs_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsrtombs_s.c
