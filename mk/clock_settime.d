librt_P.199309: librt.a(clock_settime.o)
librt.a(clock_settime.o): $(OBJDIR)/clock_settime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clock_settime.o: src/time/clock_settime.c
$(OBJDIR)/clock_settime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/clock_settime.c
