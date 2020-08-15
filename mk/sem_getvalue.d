librt_P.199309: librt.a(sem_getvalue.o)
librt.a(sem_getvalue.o): $(OBJDIR)/sem_getvalue.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_getvalue.o: src/semaphore/sem_getvalue.c
$(OBJDIR)/sem_getvalue.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_getvalue.c
