libc_C.1: libc.a(atol.o)
libc.a(atol.o): $(OBJDIR)/atol.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atol.o: src/stdlib/atol.c
$(OBJDIR)/atol.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/atol.c
