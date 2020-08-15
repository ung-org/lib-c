libc_C.1: libc.a(abs.o)
libc.a(abs.o): $(OBJDIR)/abs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/abs.o: src/stdlib/abs.c
$(OBJDIR)/abs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/abs.c
