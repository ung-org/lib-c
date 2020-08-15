libc_P.199309: libc.a(munlock.o)
libc.a(munlock.o): $(OBJDIR)/munlock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/munlock.o: src/sys/mman/munlock.c
$(OBJDIR)/munlock.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/munlock.c
