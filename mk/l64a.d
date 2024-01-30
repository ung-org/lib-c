libc_X.400: libc.a(l64a.o)
libc.a(l64a.o): $(OBJDIR)/l64a.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/l64a.o: src/stdlib/l64a.c
$(OBJDIR)/l64a.o: src/stdlib/_stdlib.h
$(OBJDIR)/l64a.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/l64a.c
