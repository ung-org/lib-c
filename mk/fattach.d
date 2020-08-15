libc_X.400: libc.a(fattach.o)
libc.a(fattach.o): $(OBJDIR)/fattach.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fattach.o: src/stropts/fattach.c
$(OBJDIR)/fattach.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stropts/fattach.c
