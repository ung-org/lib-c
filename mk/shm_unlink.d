libc_P.199309: libc.a(shm_unlink.o)
libc.a(shm_unlink.o): $(OBJDIR)/shm_unlink.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/shm_unlink.o: src/sys/mman/shm_unlink.c
$(OBJDIR)/shm_unlink.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/mman/shm_unlink.c
