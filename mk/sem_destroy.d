librt_P.199309: librt.a(sem_destroy.o)
librt.a(sem_destroy.o): $(OBJDIR)/sem_destroy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_destroy.o: src/semaphore/sem_destroy.c
$(OBJDIR)/sem_destroy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_destroy.c
