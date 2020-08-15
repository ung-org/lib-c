librt_P.199309: librt.a(clock_getres.o)
librt.a(clock_getres.o): $(OBJDIR)/clock_getres.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clock_getres.o: src/time/clock_getres.c
$(OBJDIR)/clock_getres.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/clock_getres.c
