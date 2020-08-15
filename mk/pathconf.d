libc_P.1: libc.a(pathconf.o)
libc.a(pathconf.o): $(OBJDIR)/pathconf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pathconf.o: src/unistd/pathconf.c
$(OBJDIR)/pathconf.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/pathconf.c
