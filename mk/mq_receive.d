librt_P.199309: librt.a(mq_receive.o)
librt.a(mq_receive.o): $(OBJDIR)/mq_receive.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_receive.o: src/mqueue/mq_receive.c
$(OBJDIR)/mq_receive.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_receive.c
