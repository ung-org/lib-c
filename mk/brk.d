libc_X.400: libc.a(brk.o)
libc.a(brk.o): $(OBJDIR)/brk.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/brk.o: src/unistd/brk.c
$(OBJDIR)/brk.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/brk.c
