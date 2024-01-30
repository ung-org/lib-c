libc_X.4: libc.a(crypt.o)
libc.a(crypt.o): $(OBJDIR)/crypt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/crypt.o: src/unistd/crypt.c
$(OBJDIR)/crypt.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/crypt.c
