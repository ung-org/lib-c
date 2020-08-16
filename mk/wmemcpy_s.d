libc_C_X1.201112: libc.a(wmemcpy_s.o)
libc.a(wmemcpy_s.o): $(OBJDIR)/wmemcpy_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wmemcpy_s.o: src/wchar/wmemcpy_s.c
$(OBJDIR)/wmemcpy_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wmemcpy_s.c
