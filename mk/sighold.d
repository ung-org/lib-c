libc_X.400: libc.a(sighold.o)
libc.a(sighold.o): $(OBJDIR)/sighold.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sighold.o: src/signal/sighold.c
$(OBJDIR)/sighold.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sighold.c
