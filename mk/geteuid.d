libc_P.1: libc.a(geteuid.o)
libc.a(geteuid.o): $(OBJDIR)/geteuid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/geteuid.o: src/unistd/geteuid.c
$(OBJDIR)/geteuid.o: src/_syscall.h
$(OBJDIR)/geteuid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/geteuid.c
