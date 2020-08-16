libc_C_X1.201112: libc.a(wcstombs_s.o)
libc.a(wcstombs_s.o): $(OBJDIR)/wcstombs_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstombs_s.o: src/stdlib/wcstombs_s.c
$(OBJDIR)/wcstombs_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/wcstombs_s.c
