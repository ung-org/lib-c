libc_C.1: libc.a(signal.o)
libc.a(signal.o): $(OBJDIR)/signal.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/signal.o: src/signal/signal.c
$(OBJDIR)/signal.o: src/signal/_signal.h
$(OBJDIR)/signal.o: src/_safety.h
$(OBJDIR)/signal.o: src/_syscall.h
$(OBJDIR)/signal.o: src/_forced/sigaction.h
$(OBJDIR)/signal.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/signal.c
