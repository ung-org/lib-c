libc_P.1: libc.a(fork.o)
libc.a(fork.o): $(OBJDIR)/fork.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fork.o: src/unistd/fork.c
$(OBJDIR)/fork.o: src/_syscall.h
$(OBJDIR)/fork.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/fork.c
