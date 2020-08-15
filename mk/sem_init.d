librt_P.199309: librt.a(sem_init.o)
librt.a(sem_init.o): $(OBJDIR)/sem_init.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_init.o: src/semaphore/sem_init.c
$(OBJDIR)/sem_init.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_init.c
