libc_P.2: libc.a(regfree.o)
libc.a(regfree.o): $(OBJDIR)/regfree.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/regfree.o: src/regex/regfree.c
$(OBJDIR)/regfree.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regex/regfree.c
