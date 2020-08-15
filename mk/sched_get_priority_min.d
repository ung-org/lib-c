librt_P.199309: librt.a(sched_get_priority_min.o)
librt.a(sched_get_priority_min.o): $(OBJDIR)/sched_get_priority_min.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_get_priority_min.o: src/sched/sched_get_priority_min.c
$(OBJDIR)/sched_get_priority_min.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_get_priority_min.c
