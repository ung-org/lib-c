libc_P.199309: libc.a(shm_open.o)
libc.a(shm_open.o): $(OBJDIR)/shm_open.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/shm_open.o: src/sys/mman/shm_open.c
$(OBJDIR)/shm_open.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/mman/shm_open.c
