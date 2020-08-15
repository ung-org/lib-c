libc_P.199309: libc.a(mmap.o)
libc_X.400: libc.a(mmap.o)
libc.a(mmap.o): $(OBJDIR)/mmap.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mmap.o: src/sys/mman/mmap.c
$(OBJDIR)/mmap.o: src/_syscall.h
$(OBJDIR)/mmap.o: src/sys/mman/MAP_FAILED.c
$(OBJDIR)/mmap.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/mmap.c
