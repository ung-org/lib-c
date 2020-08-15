libc_P.199309: libc.a(struct_mq_attr.o)
libc.a(struct_mq_attr.o): $(OBJDIR)/struct_mq_attr.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/struct_mq_attr.o: src/mqueue/struct_mq_attr.c
$(OBJDIR)/struct_mq_attr.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/mqueue/struct_mq_attr.c
