libc_X.400: libc.a(_setjmp.o)
libc.a(_setjmp.o): $(OBJDIR)/_setjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/_setjmp.o: src/setjmp/_setjmp.c
$(OBJDIR)/_setjmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/setjmp/_setjmp.c
