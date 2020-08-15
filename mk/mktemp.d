libc_X.400: libc.a(mktemp.o)
libc.a(mktemp.o): $(OBJDIR)/mktemp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mktemp.o: src/stdlib/mktemp.c
$(OBJDIR)/mktemp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/mktemp.c
