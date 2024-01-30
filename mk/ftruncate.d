libc_P.199309: libc.a(ftruncate.o)
libc_X.400: libc.a(ftruncate.o)
libc.a(ftruncate.o): $(OBJDIR)/ftruncate.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ftruncate.o: src/unistd/ftruncate.c
$(OBJDIR)/ftruncate.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/ftruncate.c
