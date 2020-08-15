libc_X.400: libc.a(pututxline.o)
libc.a(pututxline.o): $(OBJDIR)/pututxline.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pututxline.o: src/utmpx/pututxline.c
$(OBJDIR)/pututxline.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/utmpx/pututxline.c
