libc_C.1: libc.a(remove.o)
libc.a(remove.o): $(OBJDIR)/remove.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/remove.o: src/stdio/remove.c
$(OBJDIR)/remove.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/remove.c
