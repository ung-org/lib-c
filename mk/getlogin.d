libc_P.1: libc.a(getlogin.o)
libc.a(getlogin.o): $(OBJDIR)/getlogin.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getlogin.o: src/unistd/getlogin.c
$(OBJDIR)/getlogin.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getlogin.c
