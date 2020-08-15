librt_P.199309: librt.a(sem_post.o)
librt.a(sem_post.o): $(OBJDIR)/sem_post.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sem_post.o: src/semaphore/sem_post.c
$(OBJDIR)/sem_post.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/semaphore/sem_post.c
