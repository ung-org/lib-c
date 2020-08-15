librt_P.199309: librt.a(sched_rr_get_interval.o)
librt.a(sched_rr_get_interval.o): $(OBJDIR)/sched_rr_get_interval.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_rr_get_interval.o: src/sched/sched_rr_get_interval.c
$(OBJDIR)/sched_rr_get_interval.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_rr_get_interval.c
