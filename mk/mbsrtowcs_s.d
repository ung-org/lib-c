libc_C_X1.201112: libc.a(mbsrtowcs_s.o)
libc.a(mbsrtowcs_s.o): $(OBJDIR)/mbsrtowcs_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mbsrtowcs_s.o: src/wchar/mbsrtowcs_s.c
$(OBJDIR)/mbsrtowcs_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/wchar/mbsrtowcs_s.c
