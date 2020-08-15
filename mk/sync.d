libc_X.400: libc.a(sync.o)
libc.a(sync.o): $(OBJDIR)/sync.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sync.o: src/unistd/sync.c
$(OBJDIR)/sync.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/sync.c
