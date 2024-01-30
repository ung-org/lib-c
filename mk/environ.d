libc_P.1: libc.a(environ.o)
libc.a(environ.o): $(OBJDIR)/environ.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/environ.o: src/environ.c
$(OBJDIR)/environ.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/environ.c
