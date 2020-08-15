libc_X.4: libc.a(shmctl.o)
libc.a(shmctl.o): $(OBJDIR)/shmctl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/shmctl.o: src/sys/shm/shmctl.c
$(OBJDIR)/shmctl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/shm/shmctl.c
