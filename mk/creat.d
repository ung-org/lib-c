libc_P.1: libc.a(creat.o)
libc.a(creat.o): $(OBJDIR)/creat.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/creat.o: src/fcntl/creat.c
$(OBJDIR)/creat.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/fcntl/creat.c
