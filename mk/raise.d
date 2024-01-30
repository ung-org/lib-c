libc_C.1: libc.a(raise.o)
libc.a(raise.o): $(OBJDIR)/raise.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/raise.o: src/signal/raise.c
$(OBJDIR)/raise.o: src/_syscall.h
$(OBJDIR)/raise.o: src/_safety.h
$(OBJDIR)/raise.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/raise.c
