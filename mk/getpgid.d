libc_P.200809: libc.a(getpgid.o)
libc_X.400: libc.a(getpgid.o)
libc.a(getpgid.o): $(OBJDIR)/getpgid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpgid.o: src/unistd/getpgid.c
$(OBJDIR)/getpgid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getpgid.c
