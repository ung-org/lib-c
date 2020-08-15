libc_P.2: libc.a(opterr.o)
libc.a(opterr.o): $(OBJDIR)/opterr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/opterr.o: src/unistd/opterr.c
$(OBJDIR)/opterr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/opterr.c
