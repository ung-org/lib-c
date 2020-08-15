libc_P.199309: libc.a(struct_sched_param.o)
libc.a(struct_sched_param.o): $(OBJDIR)/struct_sched_param.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_sched_param.o: src/sched/struct_sched_param.c
$(OBJDIR)/struct_sched_param.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sched/struct_sched_param.c
