librt_P.199309: librt.a(sem_unlink.o)
librt.a(sem_unlink.o): $(OBJDIR)/sem_unlink.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_unlink.o: src/semaphore/sem_unlink.c
$(OBJDIR)/sem_unlink.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_unlink.c
