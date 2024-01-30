libc_P.2: libc.a(optind.o)
libc.a(optind.o): $(OBJDIR)/optind.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/optind.o: src/unistd/optind.c
$(OBJDIR)/optind.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/optind.c
