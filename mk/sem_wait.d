librt_P.199309: librt.a(sem_wait.o)
librt.a(sem_wait.o): $(OBJDIR)/sem_wait.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_wait.o: src/semaphore/sem_wait.c
$(OBJDIR)/sem_wait.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_wait.c
