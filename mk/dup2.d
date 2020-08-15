libc_P.1: libc.a(dup2.o)
libc.a(dup2.o): $(OBJDIR)/dup2.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/dup2.o: src/unistd/dup2.c
$(OBJDIR)/dup2.o: src/_syscall.h
$(OBJDIR)/dup2.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/dup2.c
