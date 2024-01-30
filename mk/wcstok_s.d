libc_C_X1.201112: libc.a(wcstok_s.o)
libc.a(wcstok_s.o): $(OBJDIR)/wcstok_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstok_s.o: src/wchar/wcstok_s.c
$(OBJDIR)/wcstok_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcstok_s.c
