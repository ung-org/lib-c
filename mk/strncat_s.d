libc_C_X1.201112: libc.a(strncat_s.o)
libc.a(strncat_s.o): $(OBJDIR)/strncat_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncat_s.o: src/string/strncat_s.c
$(OBJDIR)/strncat_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strncat_s.c
