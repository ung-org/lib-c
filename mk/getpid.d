libc_P.1: libc.a(getpid.o)
libc.a(getpid.o): $(OBJDIR)/getpid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getpid.o: src/unistd/getpid.c
$(OBJDIR)/getpid.o: src/_syscall.h
$(OBJDIR)/getpid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getpid.c
