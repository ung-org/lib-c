libc_C_X1.201112: libc.a(wcrtomb_s.o)
libc.a(wcrtomb_s.o): $(OBJDIR)/wcrtomb_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcrtomb_s.o: src/wchar/wcrtomb_s.c
$(OBJDIR)/wcrtomb_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcrtomb_s.c
