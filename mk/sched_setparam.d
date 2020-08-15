librt_P.199309: librt.a(sched_setparam.o)
librt.a(sched_setparam.o): $(OBJDIR)/sched_setparam.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sched_setparam.o: src/sched/sched_setparam.c
$(OBJDIR)/sched_setparam.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/sched_setparam.c
