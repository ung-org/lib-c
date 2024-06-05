libc_C.0: libc.a(__stdlib_h.o)
libc.a(__stdlib_h.o): $(OBJDIR)/__stdlib_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__stdlib_h.o: src/stdlib/__stdlib_h.c
$(OBJDIR)/__stdlib_h.o: src/stdlib/_stdlib.h
$(OBJDIR)/__stdlib_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/__stdlib_h.c
