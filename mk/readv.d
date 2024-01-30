libc_X.400: libc.a(readv.o)
libc.a(readv.o): $(OBJDIR)/readv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/readv.o: src/sys/uio/readv.c
$(OBJDIR)/readv.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/uio/readv.c
