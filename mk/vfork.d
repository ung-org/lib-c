libc_X.400: libc.a(vfork.o)
libc.a(vfork.o): $(OBJDIR)/vfork.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/vfork.o: src/unistd/vfork.c
$(OBJDIR)/vfork.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/vfork.c
