libc_X.4: libc.a(shmdt.o)
libc.a(shmdt.o): $(OBJDIR)/shmdt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/shmdt.o: src/sys/shm/shmdt.c
$(OBJDIR)/shmdt.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/shm/shmdt.c
