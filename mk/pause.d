libc_P.1: libc.a(pause.o)
libc.a(pause.o): $(OBJDIR)/pause.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pause.o: src/unistd/pause.c
$(OBJDIR)/pause.o: src/_syscall.h
$(OBJDIR)/pause.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/pause.c
