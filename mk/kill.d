libc_P.1: libc.a(kill.o)
libc.a(kill.o): $(OBJDIR)/kill.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/kill.o: src/signal/kill.c
$(OBJDIR)/kill.o: src/_syscall.h
$(OBJDIR)/kill.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/signal/kill.c
