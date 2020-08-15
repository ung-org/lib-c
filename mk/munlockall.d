libc_P.199309: libc.a(munlockall.o)
libc.a(munlockall.o): $(OBJDIR)/munlockall.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/munlockall.o: src/sys/mman/munlockall.c
$(OBJDIR)/munlockall.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/munlockall.c
