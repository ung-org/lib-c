libc_P.2: libc.a(globfree.o)
libc.a(globfree.o): $(OBJDIR)/globfree.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/globfree.o: src/glob/globfree.c
$(OBJDIR)/globfree.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/glob/globfree.c
