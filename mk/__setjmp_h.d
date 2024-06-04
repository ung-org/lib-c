libc_C.0: libc.a(__setjmp_h.o)
libc.a(__setjmp_h.o): $(OBJDIR)/__setjmp_h.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__setjmp_h.o: src/setjmp/__setjmp_h.c
$(OBJDIR)/__setjmp_h.o: src/setjmp/_setjmp.h
$(OBJDIR)/__setjmp_h.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/__setjmp_h.c
