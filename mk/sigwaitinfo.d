libc_P.199309: libc.a(sigwaitinfo.o)
libc.a(sigwaitinfo.o): $(OBJDIR)/sigwaitinfo.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigwaitinfo.o: src/signal/sigwaitinfo.c
$(OBJDIR)/sigwaitinfo.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigwaitinfo.c
