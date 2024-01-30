libc_X.400: libc.a(setregid.o)
libc.a(setregid.o): $(OBJDIR)/setregid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setregid.o: src/unistd/setregid.c
$(OBJDIR)/setregid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/setregid.c
