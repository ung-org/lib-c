libc_P.1: libc.a(setsid.o)
libc.a(setsid.o): $(OBJDIR)/setsid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setsid.o: src/unistd/setsid.c
$(OBJDIR)/setsid.o: src/_syscall.h
$(OBJDIR)/setsid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/setsid.c
