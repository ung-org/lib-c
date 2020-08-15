librt_P.199309: librt.a(timer_delete.o)
librt.a(timer_delete.o): $(OBJDIR)/timer_delete.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/timer_delete.o: src/time/timer_delete.c
$(OBJDIR)/timer_delete.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/timer_delete.c
