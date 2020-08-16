libc_C_X1.201112: libc.a(ignore_handler_s.o)
libc.a(ignore_handler_s.o): $(OBJDIR)/ignore_handler_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ignore_handler_s.o: src/stdlib/ignore_handler_s.c
$(OBJDIR)/ignore_handler_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/ignore_handler_s.c
