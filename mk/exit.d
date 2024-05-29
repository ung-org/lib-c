libc_C.1: libc.a(exit.o)
libc.a(exit.o): $(OBJDIR)/exit.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/exit.o: src/stdlib/exit.c
$(OBJDIR)/exit.o: src/stdlib/_stdlib.h
$(OBJDIR)/exit.o: src/_syscall.h
$(OBJDIR)/exit.o: src/_forced/_Exit.h
$(OBJDIR)/exit.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/stdlib/exit.c
