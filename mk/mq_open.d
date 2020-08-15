librt_P.199309: librt.a(mq_open.o)
librt.a(mq_open.o): $(OBJDIR)/mq_open.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_open.o: src/mqueue/mq_open.c
$(OBJDIR)/mq_open.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_open.c
