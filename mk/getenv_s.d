libc_C_X1.201112: libc.a(getenv_s.o)
libc.a(getenv_s.o): $(OBJDIR)/getenv_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getenv_s.o: src/stdlib/getenv_s.c
$(OBJDIR)/getenv_s.o: src/stdlib/_stdlib.h
$(OBJDIR)/getenv_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/getenv_s.c
