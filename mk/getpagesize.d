libc_X.400: libc.a(getpagesize.o)
libc.a(getpagesize.o): $(OBJDIR)/getpagesize.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpagesize.o: src/unistd/getpagesize.c
$(OBJDIR)/getpagesize.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getpagesize.c
