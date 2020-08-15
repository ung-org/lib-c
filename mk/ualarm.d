libc_X.400: libc.a(ualarm.o)
libc.a(ualarm.o): $(OBJDIR)/ualarm.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ualarm.o: src/unistd/ualarm.c
$(OBJDIR)/ualarm.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/ualarm.c
