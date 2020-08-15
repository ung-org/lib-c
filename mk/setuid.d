libc_P.1: libc.a(setuid.o)
libc.a(setuid.o): $(OBJDIR)/setuid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setuid.o: src/unistd/setuid.c
$(OBJDIR)/setuid.o: src/_syscall.h
$(OBJDIR)/setuid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/setuid.c
