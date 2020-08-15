libc_P.1: libc.a(_exit.o)
libc.a(_exit.o): $(OBJDIR)/_exit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_exit.o: src/unistd/_exit.c
$(OBJDIR)/_exit.o: src/_syscall.h
$(OBJDIR)/_exit.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/_exit.c
