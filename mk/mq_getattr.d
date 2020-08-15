librt_P.199309: librt.a(mq_getattr.o)
librt.a(mq_getattr.o): $(OBJDIR)/mq_getattr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_getattr.o: src/mqueue/mq_getattr.c
$(OBJDIR)/mq_getattr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_getattr.c
