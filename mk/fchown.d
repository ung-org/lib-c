libc_P.200112: libc.a(fchown.o)
libc_X.400: libc.a(fchown.o)
libc.a(fchown.o): $(OBJDIR)/fchown.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fchown.o: src/unistd/fchown.c
$(OBJDIR)/fchown.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/unistd/fchown.c
