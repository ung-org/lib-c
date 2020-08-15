libc_P.1: libc.a(umask.o)
libc.a(umask.o): $(OBJDIR)/umask.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/umask.o: src/sys/stat/umask.c
$(OBJDIR)/umask.o: src/_syscall.h
$(OBJDIR)/umask.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/sys/stat/umask.c
