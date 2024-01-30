libc_X.400: libc.a(gethostid.o)
libc.a(gethostid.o): $(OBJDIR)/gethostid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gethostid.o: src/unistd/gethostid.c
$(OBJDIR)/gethostid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/gethostid.c
