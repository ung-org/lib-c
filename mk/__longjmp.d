libc_C.0: libc.a(__longjmp.o)
libc.a(__longjmp.o): $(OBJDIR)/__longjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__longjmp.o: src/setjmp/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).s
$(OBJDIR)/__longjmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/setjmp/__longjmp.$(ARCHITECTURE)-$(WORDSIZE).s
