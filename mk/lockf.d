libc_X.400: libc.a(lockf.o)
libc.a(lockf.o): $(OBJDIR)/lockf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lockf.o: src/unistd/lockf.c
$(OBJDIR)/lockf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/lockf.c
