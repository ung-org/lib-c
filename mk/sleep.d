libc_P.1: libc.a(sleep.o)
libc.a(sleep.o): $(OBJDIR)/sleep.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sleep.o: src/unistd/sleep.c
$(OBJDIR)/sleep.o: 
$(OBJDIR)/sleep.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/sleep.c
