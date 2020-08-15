librt_P.199309: librt.a(aio_suspend.o)
librt.a(aio_suspend.o): $(OBJDIR)/aio_suspend.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_suspend.o: src/aio/aio_suspend.c
$(OBJDIR)/aio_suspend.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_suspend.c
