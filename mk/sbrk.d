libc_X.400: libc.a(sbrk.o)
libc.a(sbrk.o): $(OBJDIR)/sbrk.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sbrk.o: src/unistd/sbrk.c
$(OBJDIR)/sbrk.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/sbrk.c
