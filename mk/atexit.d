libc_C.1: libc.a(atexit.o)
libc.a(atexit.o): $(OBJDIR)/atexit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atexit.o: src/stdlib/atexit.c
$(OBJDIR)/atexit.o: src/stdlib/_stdlib.h
$(OBJDIR)/atexit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/atexit.c
