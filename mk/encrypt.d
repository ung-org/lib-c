libc_X.4: libc.a(encrypt.o)
libc.a(encrypt.o): $(OBJDIR)/encrypt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/encrypt.o: src/unistd/encrypt.c
$(OBJDIR)/encrypt.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/encrypt.c
