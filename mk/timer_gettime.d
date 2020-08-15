librt_P.199309: librt.a(timer_gettime.o)
librt.a(timer_gettime.o): $(OBJDIR)/timer_gettime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timer_gettime.o: src/time/timer_gettime.c
$(OBJDIR)/timer_gettime.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timer_gettime.c
