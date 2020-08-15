librt_P.199309: librt.a(sched_getparam.o)
librt.a(sched_getparam.o): $(OBJDIR)/sched_getparam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_getparam.o: src/sched/sched_getparam.c
$(OBJDIR)/sched_getparam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_getparam.c
