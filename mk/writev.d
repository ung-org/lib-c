libc_X.400: libc.a(writev.o)
libc.a(writev.o): $(OBJDIR)/writev.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/writev.o: src/sys/uio/writev.c
$(OBJDIR)/writev.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/uio/writev.c
