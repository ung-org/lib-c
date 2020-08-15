librt_P.199309: librt.a(mq_unlink.o)
librt.a(mq_unlink.o): $(OBJDIR)/mq_unlink.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_unlink.o: src/mqueue/mq_unlink.c
$(OBJDIR)/mq_unlink.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_unlink.c
