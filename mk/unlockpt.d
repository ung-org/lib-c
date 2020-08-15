libc_X.400: libc.a(unlockpt.o)
libc.a(unlockpt.o): $(OBJDIR)/unlockpt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/unlockpt.o: src/stdlib/unlockpt.c
$(OBJDIR)/unlockpt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/unlockpt.c
