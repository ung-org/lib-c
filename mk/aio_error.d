librt_P.199309: librt.a(aio_error.o)
librt.a(aio_error.o): $(OBJDIR)/aio_error.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/aio_error.o: src/aio/aio_error.c
$(OBJDIR)/aio_error.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/aio_error.c
