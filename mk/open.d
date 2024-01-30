libc_P.1: libc.a(open.o)
libc.a(open.o): $(OBJDIR)/open.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/open.o: src/fcntl/open.c
$(OBJDIR)/open.o: src/_syscall.h
$(OBJDIR)/open.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fcntl/open.c
