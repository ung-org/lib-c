librt_P.199309: librt.a(aio_cancel.o)
librt.a(aio_cancel.o): $(OBJDIR)/aio_cancel.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_cancel.o: src/aio/aio_cancel.c
$(OBJDIR)/aio_cancel.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_cancel.c
