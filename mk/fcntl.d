libc_P.1: libc.a(fcntl.o)
libc.a(fcntl.o): $(OBJDIR)/fcntl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fcntl.o: src/fcntl/fcntl.c
$(OBJDIR)/fcntl.o: src/_syscall.h
$(OBJDIR)/fcntl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/fcntl/fcntl.c
