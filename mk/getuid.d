libc_P.1: libc.a(getuid.o)
libc.a(getuid.o): $(OBJDIR)/getuid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getuid.o: src/unistd/getuid.c
$(OBJDIR)/getuid.o: src/_syscall.h
$(OBJDIR)/getuid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/getuid.c
