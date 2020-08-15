libc_P.1: libc.a(sigaddset.o)
libc.a(sigaddset.o): $(OBJDIR)/sigaddset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigaddset.o: src/signal/sigaddset.c
$(OBJDIR)/sigaddset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigaddset.c
