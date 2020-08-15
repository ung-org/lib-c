libc_C.1: libc.a(gets.o)
libc.a(gets.o): $(OBJDIR)/gets.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gets.o: src/stdio/gets.c
$(OBJDIR)/gets.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/gets.c
