librt_P.199309: librt.a(mq_send.o)
librt.a(mq_send.o): $(OBJDIR)/mq_send.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_send.o: src/mqueue/mq_send.c
$(OBJDIR)/mq_send.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_send.c
