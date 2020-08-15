librt_P.199309: librt.a(aio_fsync.o)
librt.a(aio_fsync.o): $(OBJDIR)/aio_fsync.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_fsync.o: src/aio/aio_fsync.c
$(OBJDIR)/aio_fsync.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_fsync.c
