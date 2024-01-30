libc_P.1: libc.a(times.o)
libc.a(times.o): $(OBJDIR)/times.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/times.o: src/sys/times/times.c
$(OBJDIR)/times.o: src/_syscall.h
$(OBJDIR)/times.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/times/times.c
