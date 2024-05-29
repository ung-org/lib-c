libc_P.1: libc.a(sigaction.o)
libc.a(sigaction.o): $(OBJDIR)/sigaction.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigaction.o: src/signal/sigaction.c
$(OBJDIR)/sigaction.o: src/_syscall.h
$(OBJDIR)/sigaction.o: src/_safety.h
$(OBJDIR)/sigaction.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/sigaction.c
