libc_P.199309: libc.a(sigqueue.o)
libc.a(sigqueue.o): $(OBJDIR)/sigqueue.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigqueue.o: src/signal/sigqueue.c
$(OBJDIR)/sigqueue.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigqueue.c
