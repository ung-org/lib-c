libc_X.4: libc.a(getpass.o)
libc.a(getpass.o): $(OBJDIR)/getpass.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpass.o: src/unistd/getpass.c
$(OBJDIR)/getpass.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/getpass.c
