libc_P.1: libc.a(sysconf.o)
libc.a(sysconf.o): $(OBJDIR)/sysconf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sysconf.o: src/unistd/sysconf.c
$(OBJDIR)/sysconf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/sysconf.c
