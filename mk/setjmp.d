libc_C.1: libc.a(setjmp.o)
libc.a(setjmp.o): $(OBJDIR)/setjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setjmp.o: src/setjmp/setjmp.c
$(OBJDIR)/setjmp.o: src/_safety.h
$(OBJDIR)/setjmp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/setjmp.c
