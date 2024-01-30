libc_X.4: libc.a(drand48.o)
libc.a(drand48.o): $(OBJDIR)/drand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/drand48.o: src/stdlib/drand48.c
$(OBJDIR)/drand48.o: src/stdlib/_stdlib.h
$(OBJDIR)/drand48.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/drand48.c
