libc_C.1: libc.a(malloc.o)
libc.a(malloc.o): $(OBJDIR)/malloc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/malloc.o: src/stdlib/malloc.c
$(OBJDIR)/malloc.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/malloc.c
