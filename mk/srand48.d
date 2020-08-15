libc_X.4: libc.a(srand48.o)
libc.a(srand48.o): $(OBJDIR)/srand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/srand48.o: src/stdlib/srand48.c
$(OBJDIR)/srand48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/srand48.c
