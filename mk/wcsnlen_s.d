libc_C_X1.201112: libc.a(wcsnlen_s.o)
libc.a(wcsnlen_s.o): $(OBJDIR)/wcsnlen_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcsnlen_s.o: src/wchar/wcsnlen_s.c
$(OBJDIR)/wcsnlen_s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/wchar/wcsnlen_s.c
