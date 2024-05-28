libc_C.1: libc.a(malloc.o)
libc.a(malloc.o): $(OBJDIR)/malloc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/malloc.o: src/stdlib/malloc.c
$(OBJDIR)/malloc.o: src/stdlib/_stdlib.h
$(OBJDIR)/malloc.o: src/stdlib/_jkmalloc.h
$(OBJDIR)/malloc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/malloc.c
