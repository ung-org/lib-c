libc_X.4: libc.a(nrand48.o)
libc.a(nrand48.o): $(OBJDIR)/nrand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/nrand48.o: src/stdlib/nrand48.c
$(OBJDIR)/nrand48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/nrand48.c
