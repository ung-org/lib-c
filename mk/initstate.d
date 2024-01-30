libc_X.400: libc.a(initstate.o)
libc.a(initstate.o): $(OBJDIR)/initstate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/initstate.o: src/stdlib/initstate.c
$(OBJDIR)/initstate.o: src/stdlib/_stdlib.h
$(OBJDIR)/initstate.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/initstate.c
