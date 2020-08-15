librt_P.199309: librt.a(sched_setscheduler.o)
librt.a(sched_setscheduler.o): $(OBJDIR)/sched_setscheduler.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_setscheduler.o: src/sched/sched_setscheduler.c
$(OBJDIR)/sched_setscheduler.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_setscheduler.c
