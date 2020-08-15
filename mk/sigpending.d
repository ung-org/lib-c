libc_P.1: libc.a(sigpending.o)
libc.a(sigpending.o): $(OBJDIR)/sigpending.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigpending.o: src/signal/sigpending.c
$(OBJDIR)/sigpending.o: src/_syscall.h
$(OBJDIR)/sigpending.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigpending.c
