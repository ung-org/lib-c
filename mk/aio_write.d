librt_P.199309: librt.a(aio_write.o)
librt.a(aio_write.o): $(OBJDIR)/aio_write.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_write.o: src/aio/aio_write.c
$(OBJDIR)/aio_write.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_write.c
