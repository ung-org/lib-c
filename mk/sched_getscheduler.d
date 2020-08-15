librt_P.199309: librt.a(sched_getscheduler.o)
librt.a(sched_getscheduler.o): $(OBJDIR)/sched_getscheduler.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_getscheduler.o: src/sched/sched_getscheduler.c
$(OBJDIR)/sched_getscheduler.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_getscheduler.c
