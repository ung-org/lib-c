libc_P.1: libc.a(sigsuspend.o)
libc.a(sigsuspend.o): $(OBJDIR)/sigsuspend.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigsuspend.o: src/signal/sigsuspend.c
$(OBJDIR)/sigsuspend.o: src/_syscall.h
$(OBJDIR)/sigsuspend.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigsuspend.c
