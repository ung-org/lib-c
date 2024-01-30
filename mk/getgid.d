libc_P.1: libc.a(getgid.o)
libc.a(getgid.o): $(OBJDIR)/getgid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getgid.o: src/unistd/getgid.c
$(OBJDIR)/getgid.o: src/_syscall.h
$(OBJDIR)/getgid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/getgid.c
