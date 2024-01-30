libc_C.1: libc.a(mblen.o)
libc.a(mblen.o): $(OBJDIR)/mblen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mblen.o: src/stdlib/mblen.c
$(OBJDIR)/mblen.o: src/stdlib/_stdlib.h
$(OBJDIR)/mblen.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/mblen.c
