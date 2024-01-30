libc_P.1: libc.a(getppid.o)
libc.a(getppid.o): $(OBJDIR)/getppid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getppid.o: src/unistd/getppid.c
$(OBJDIR)/getppid.o: src/_syscall.h
$(OBJDIR)/getppid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/getppid.c
