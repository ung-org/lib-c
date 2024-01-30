libc_X.400: libc.a(getrusage.o)
libc.a(getrusage.o): $(OBJDIR)/getrusage.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getrusage.o: src/sys/resource/getrusage.c
$(OBJDIR)/getrusage.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/resource/getrusage.c
