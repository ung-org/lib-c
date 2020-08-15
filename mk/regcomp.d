libc_P.2: libc.a(regcomp.o)
libc.a(regcomp.o): $(OBJDIR)/regcomp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/regcomp.o: src/regex/regcomp.c
$(OBJDIR)/regcomp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regex/regcomp.c
