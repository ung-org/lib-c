librt_P.199309: librt.a(clock_gettime.o)
librt.a(clock_gettime.o): $(OBJDIR)/clock_gettime.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/clock_gettime.o: src/time/clock_gettime.c
$(OBJDIR)/clock_gettime.o: src/_safety.h
$(OBJDIR)/clock_gettime.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/time/clock_gettime.c
