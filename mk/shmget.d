libc_X.4: libc.a(shmget.o)
libc.a(shmget.o): $(OBJDIR)/shmget.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/shmget.o: src/sys/shm/shmget.c
$(OBJDIR)/shmget.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/shm/shmget.c
