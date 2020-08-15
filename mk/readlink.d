libc_P.200112: libc.a(readlink.o)
libc_X.400: libc.a(readlink.o)
libc.a(readlink.o): $(OBJDIR)/readlink.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/readlink.o: src/unistd/readlink.c
$(OBJDIR)/readlink.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/readlink.c
