libc_C.1: libc.a(calloc.o)
libc.a(calloc.o): $(OBJDIR)/calloc.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/calloc.o: src/stdlib/calloc.c
$(OBJDIR)/calloc.o: src/stdlib/_stdlib.h
$(OBJDIR)/calloc.o: src/stdlib/_jkmalloc.h
$(OBJDIR)/calloc.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/calloc.c
