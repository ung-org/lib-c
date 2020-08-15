librt_P.199309: librt.a(mq_notify.o)
librt.a(mq_notify.o): $(OBJDIR)/mq_notify.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_notify.o: src/mqueue/mq_notify.c
$(OBJDIR)/mq_notify.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_notify.c
