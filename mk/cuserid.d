libc_P.1: libc.a(cuserid.o)
libc.a(cuserid.o): $(OBJDIR)/cuserid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/cuserid.o: src/unistd/cuserid.c
$(OBJDIR)/cuserid.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/cuserid.c
