libc_X.400: libc.a(getrlimit.o)
libc.a(getrlimit.o): $(OBJDIR)/getrlimit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getrlimit.o: src/sys/resource/getrlimit.c
$(OBJDIR)/getrlimit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/sys/resource/getrlimit.c
