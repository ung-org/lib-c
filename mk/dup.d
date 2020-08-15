libc_P.1: libc.a(dup.o)
libc.a(dup.o): $(OBJDIR)/dup.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dup.o: src/unistd/dup.c
$(OBJDIR)/dup.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/dup.c
