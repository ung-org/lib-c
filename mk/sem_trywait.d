librt_P.199309: librt.a(sem_trywait.o)
librt.a(sem_trywait.o): $(OBJDIR)/sem_trywait.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_trywait.o: src/semaphore/sem_trywait.c
$(OBJDIR)/sem_trywait.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_trywait.c
