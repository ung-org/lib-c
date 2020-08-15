librt_P.199309: librt.a(sched_yield.o)
librt.a(sched_yield.o): $(OBJDIR)/sched_yield.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_yield.o: src/sched/sched_yield.c
$(OBJDIR)/sched_yield.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_yield.c
