libc_P.199309: libc.a(msync.o)
libc_X.400: libc.a(msync.o)
libc.a(msync.o): $(OBJDIR)/msync.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/msync.o: src/sys/mman/msync.c
$(OBJDIR)/msync.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/msync.c
