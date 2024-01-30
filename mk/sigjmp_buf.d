libc_P.1: libc.a(sigjmp_buf.o)
libc.a(sigjmp_buf.o): $(OBJDIR)/sigjmp_buf.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigjmp_buf.o: src/setjmp/sigjmp_buf.c
$(OBJDIR)/sigjmp_buf.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/sigjmp_buf.c
