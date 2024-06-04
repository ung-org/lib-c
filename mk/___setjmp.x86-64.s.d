libc_C.0: libc.a(___setjmp.x86-64.s.o)
libc.a(___setjmp.x86-64.s.o): $(OBJDIR)/___setjmp.x86-64.s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/___setjmp.x86-64.s.o: src/setjmp/___setjmp.x86-64.s
$(OBJDIR)/___setjmp.x86-64.s.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/___setjmp.x86-64.s
