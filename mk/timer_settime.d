librt_P.199309: librt.a(timer_settime.o)
librt.a(timer_settime.o): $(OBJDIR)/timer_settime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timer_settime.o: src/time/timer_settime.c
$(OBJDIR)/timer_settime.o: src/_safety.h
$(OBJDIR)/timer_settime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timer_settime.c
