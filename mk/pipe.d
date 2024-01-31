libc_P.1: libc.a(pipe.o)
libc.a(pipe.o): $(OBJDIR)/pipe.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/pipe.o: src/unistd/pipe.c
$(OBJDIR)/pipe.o: src/_safety.h
$(OBJDIR)/pipe.o: src/_syscall.h
$(OBJDIR)/pipe.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/pipe.c
