libc_P.1: libc.a(sigsetjmp.o)
libc.a(sigsetjmp.o): $(OBJDIR)/sigsetjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigsetjmp.o: src/setjmp/sigsetjmp.c
$(OBJDIR)/sigsetjmp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/sigsetjmp.c
