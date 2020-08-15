librt_P.199309: librt.a(mq_close.o)
librt.a(mq_close.o): $(OBJDIR)/mq_close.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_close.o: src/mqueue/mq_close.c
$(OBJDIR)/mq_close.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_close.c
