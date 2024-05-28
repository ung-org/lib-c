libc_C.1: libc.a(free.o)
libc.a(free.o): $(OBJDIR)/free.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/free.o: src/stdlib/free.c
$(OBJDIR)/free.o: src/stdlib/_stdlib.h
$(OBJDIR)/free.o: src/stdlib/_jkmalloc.h
$(OBJDIR)/free.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/free.c
