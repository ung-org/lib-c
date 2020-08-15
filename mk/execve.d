libc_P.1: libc.a(execve.o)
libc.a(execve.o): $(OBJDIR)/execve.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/execve.o: src/unistd/execve.c
$(OBJDIR)/execve.o: src/_syscall.h
$(OBJDIR)/execve.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/execve.c
