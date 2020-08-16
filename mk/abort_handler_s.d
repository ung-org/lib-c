libc_C_X1.201112: libc.a(abort_handler_s.o)
libc.a(abort_handler_s.o): $(OBJDIR)/abort_handler_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/abort_handler_s.o: src/stdlib/abort_handler_s.c
$(OBJDIR)/abort_handler_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/abort_handler_s.c
