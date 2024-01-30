libc_P.1: libc.a(chdir.o)
libc.a(chdir.o): $(OBJDIR)/chdir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/chdir.o: src/unistd/chdir.c
$(OBJDIR)/chdir.o: src/_syscall.h
$(OBJDIR)/chdir.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/chdir.c
