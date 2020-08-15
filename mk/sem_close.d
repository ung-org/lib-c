librt_P.199309: librt.a(sem_close.o)
librt.a(sem_close.o): $(OBJDIR)/sem_close.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_close.o: src/semaphore/sem_close.c
$(OBJDIR)/sem_close.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_close.c
