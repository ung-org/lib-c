libc_C.0: libc.a(___longjmp.x86-64.s.o)
libc.a(___longjmp.x86-64.s.o): $(OBJDIR)/___longjmp.x86-64.s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/___longjmp.x86-64.s.o: src/setjmp/___longjmp.x86-64.s
$(OBJDIR)/___longjmp.x86-64.s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/___longjmp.x86-64.s
