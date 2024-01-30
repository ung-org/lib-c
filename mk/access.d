libc_P.1: libc.a(access.o)
libc.a(access.o): $(OBJDIR)/access.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/access.o: src/unistd/access.c
$(OBJDIR)/access.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/access.c
