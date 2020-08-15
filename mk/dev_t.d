libc_P.1: libc.a(dev_t.o)
libc.a(dev_t.o): $(OBJDIR)/dev_t.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dev_t.o: src/sys/types/dev_t.c
$(OBJDIR)/dev_t.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/types/dev_t.c
