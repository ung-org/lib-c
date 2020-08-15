libc_X.4: libc.a(wcswidth.o)
libc.a(wcswidth.o): $(OBJDIR)/wcswidth.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcswidth.o: src/wchar/wcswidth.c
$(OBJDIR)/wcswidth.o: src/wctype/wint_t.c
$(OBJDIR)/wcswidth.o: src/wctype/wctrans_t.c
$(OBJDIR)/wcswidth.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/wcswidth.c
