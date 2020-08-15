librt_P.199309: librt.a(timer_create.o)
librt.a(timer_create.o): $(OBJDIR)/timer_create.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timer_create.o: src/time/timer_create.c
$(OBJDIR)/timer_create.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timer_create.c
