libc_X.400: libc.a(_longjmp.o)
libc.a(_longjmp.o): $(OBJDIR)/_longjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_longjmp.o: src/setjmp/_longjmp.c
$(OBJDIR)/_longjmp.o: src/_safety.h
$(OBJDIR)/_longjmp.o:
	@mkdir -p $(@D)
	$(CC) -c -o $@ $(CFLAGS) src/setjmp/_longjmp.c
