libc_X.4: libc.a(erand48.o)
libc.a(erand48.o): $(OBJDIR)/erand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/erand48.o: src/stdlib/erand48.c
$(OBJDIR)/erand48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/erand48.c
