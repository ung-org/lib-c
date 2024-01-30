libc_P.1: libc.a(sleep.o)
libc.a(sleep.o): $(OBJDIR)/sleep.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sleep.o: src/unistd/sleep.c
$(OBJDIR)/sleep.o: src/_syscall.h
$(OBJDIR)/sleep.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/sleep.c
