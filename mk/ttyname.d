libc_P.1: libc.a(ttyname.o)
libc.a(ttyname.o): $(OBJDIR)/ttyname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ttyname.o: src/unistd/ttyname.c
$(OBJDIR)/ttyname.o: src/unistd/_unistd.h
$(OBJDIR)/ttyname.o: src/_syscall.h
$(OBJDIR)/ttyname.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/ttyname.c
