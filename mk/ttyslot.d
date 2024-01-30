libc_X.400: libc.a(ttyslot.o)
libc.a(ttyslot.o): $(OBJDIR)/ttyslot.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ttyslot.o: src/stdlib/ttyslot.c
$(OBJDIR)/ttyslot.o: src/stdlib/_stdlib.h
$(OBJDIR)/ttyslot.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/ttyslot.c
