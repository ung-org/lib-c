librt_P.199309: librt.a(aio_read.o)
librt.a(aio_read.o): $(OBJDIR)/aio_read.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_read.o: src/aio/aio_read.c
$(OBJDIR)/aio_read.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_read.c
