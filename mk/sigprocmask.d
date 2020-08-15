libc_P.1: libc.a(sigprocmask.o)
libc.a(sigprocmask.o): $(OBJDIR)/sigprocmask.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigprocmask.o: src/signal/sigprocmask.c
$(OBJDIR)/sigprocmask.o: src/_syscall.h
$(OBJDIR)/sigprocmask.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigprocmask.c
