librt_P.199309: librt.a(lio_listio.o)
librt.a(lio_listio.o): $(OBJDIR)/lio_listio.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lio_listio.o: src/aio/lio_listio.c
$(OBJDIR)/lio_listio.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/aio/lio_listio.c
