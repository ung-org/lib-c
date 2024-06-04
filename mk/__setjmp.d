libc_C.1: libc.a(__setjmp.o)
libc.a(__setjmp.o): $(OBJDIR)/__setjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__setjmp.o: src/setjmp/__setjmp.c
$(OBJDIR)/__setjmp.o: src/_safety.h
$(OBJDIR)/__setjmp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/__setjmp.c
