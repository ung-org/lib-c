libc_C.0: libc.a(__longjmp.x86-64.s.o)
libc.a(__longjmp.x86-64.s.o): $(OBJDIR)/__longjmp.x86-64.s.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__longjmp.x86-64.s.o: src/setjmp/__longjmp.x86-64.s
$(OBJDIR)/__longjmp.x86-64.s.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/setjmp/__longjmp.x86-64.s
