libc_C.0: libc.a(__setjmp.x86-64.s.o)
libc.a(__setjmp.x86-64.s.o): $(OBJDIR)/__setjmp.x86-64.s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__setjmp.x86-64.s.o: src/setjmp/__setjmp.x86-64.s
$(OBJDIR)/__setjmp.x86-64.s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/__setjmp.x86-64.s
