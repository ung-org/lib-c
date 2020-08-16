libc_C_X1.201112: libc.a(mbstowcs_s.o)
libc.a(mbstowcs_s.o): $(OBJDIR)/mbstowcs_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbstowcs_s.o: src/stdlib/mbstowcs_s.c
$(OBJDIR)/mbstowcs_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/mbstowcs_s.c
