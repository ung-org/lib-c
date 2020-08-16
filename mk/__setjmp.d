libc_C.0: libc.a(__setjmp.o)
libc.a(__setjmp.o): $(OBJDIR)/__setjmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__setjmp.o: src/setjmp/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).s
$(OBJDIR)/__setjmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/setjmp/__setjmp.$(ARCHITECTURE)-$(WORDSIZE).s
