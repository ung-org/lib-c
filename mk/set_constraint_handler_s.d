libc_C_X1.201112: libc.a(set_constraint_handler_s.o)
libc.a(set_constraint_handler_s.o): $(OBJDIR)/set_constraint_handler_s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/set_constraint_handler_s.o: src/stdlib/set_constraint_handler_s.c
$(OBJDIR)/set_constraint_handler_s.o: src/stdlib/_stdlib.h
$(OBJDIR)/set_constraint_handler_s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/set_constraint_handler_s.c
