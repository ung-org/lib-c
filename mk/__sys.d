libc_C.0: libc.a(__sys.o)
libc.a(__sys.o): $(OBJDIR)/__sys.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/__sys.o: src/__sys.$(ARCHITECTURE)-$(WORDSIZE).s
$(OBJDIR)/__sys.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/__sys.$(ARCHITECTURE)-$(WORDSIZE).s
