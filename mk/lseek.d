libc_P.1: libc.a(lseek.o)
libc.a(lseek.o): $(OBJDIR)/lseek.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lseek.o: src/unistd/lseek.c
$(OBJDIR)/lseek.o: src/_syscall.h
$(OBJDIR)/lseek.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/lseek.c
