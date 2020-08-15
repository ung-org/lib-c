libc_P.2: libc.a(regerror.o)
libc.a(regerror.o): $(OBJDIR)/regerror.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/regerror.o: src/regex/regerror.c
$(OBJDIR)/regerror.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regex/regerror.c
