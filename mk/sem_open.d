librt_P.199309: librt.a(sem_open.o)
librt.a(sem_open.o): $(OBJDIR)/sem_open.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_open.o: src/semaphore/sem_open.c
$(OBJDIR)/sem_open.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_open.c
