librt_P.199309: librt.a(timer_getoverrun.o)
librt.a(timer_getoverrun.o): $(OBJDIR)/timer_getoverrun.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timer_getoverrun.o: src/time/timer_getoverrun.c
$(OBJDIR)/timer_getoverrun.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timer_getoverrun.c
