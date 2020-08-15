libc_P.199309: libc.a(munmap.o)
libc_X.400: libc.a(munmap.o)
libc.a(munmap.o): $(OBJDIR)/munmap.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/munmap.o: src/sys/mman/munmap.c
$(OBJDIR)/munmap.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/munmap.c
