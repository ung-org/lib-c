librt_P.199309: librt.a(mq_setattr.o)
librt.a(mq_setattr.o): $(OBJDIR)/mq_setattr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mq_setattr.o: src/mqueue/mq_setattr.c
$(OBJDIR)/mq_setattr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/mq_setattr.c
