libc_P.200809: libc.a(fchdir.o)
libc_X.400: libc.a(fchdir.o)
libc.a(fchdir.o): $(OBJDIR)/fchdir.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fchdir.o: src/unistd/fchdir.c
$(OBJDIR)/fchdir.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/fchdir.c
