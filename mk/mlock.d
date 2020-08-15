libc_P.199309: libc.a(mlock.o)
libc.a(mlock.o): $(OBJDIR)/mlock.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mlock.o: src/sys/mman/mlock.c
$(OBJDIR)/mlock.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/mlock.c
