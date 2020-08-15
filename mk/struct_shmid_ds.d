libc_X.4: libc.a(struct_shmid_ds.o)
libc.a(struct_shmid_ds.o): $(OBJDIR)/struct_shmid_ds.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_shmid_ds.o: src/sys/shm/struct_shmid_ds.c
$(OBJDIR)/struct_shmid_ds.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/shm/struct_shmid_ds.c
