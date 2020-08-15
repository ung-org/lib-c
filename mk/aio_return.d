librt_P.199309: librt.a(aio_return.o)
librt.a(aio_return.o): $(OBJDIR)/aio_return.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_return.o: src/aio/aio_return.c
$(OBJDIR)/aio_return.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_return.c
