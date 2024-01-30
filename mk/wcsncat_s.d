libc_C_X1.201112: libc.a(wcsncat_s.o)
libc.a(wcsncat_s.o): $(OBJDIR)/wcsncat_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsncat_s.o: src/wchar/wcsncat_s.c
$(OBJDIR)/wcsncat_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsncat_s.c
