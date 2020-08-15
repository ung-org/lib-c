libc_P.200112: libc.a(symlink.o)
libc_X.400: libc.a(symlink.o)
libc.a(symlink.o): $(OBJDIR)/symlink.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/symlink.o: src/unistd/symlink.c
$(OBJDIR)/symlink.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/symlink.c
