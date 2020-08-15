librt_P.199309: librt.a(sched_get_priority_max.o)
librt.a(sched_get_priority_max.o): $(OBJDIR)/sched_get_priority_max.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_get_priority_max.o: src/sched/sched_get_priority_max.c
$(OBJDIR)/sched_get_priority_max.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_get_priority_max.c
