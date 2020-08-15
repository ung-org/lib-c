libc_X.400: libc.a(endpwent.o)
libc.a(endpwent.o): $(OBJDIR)/endpwent.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/endpwent.o: src/pwd/endpwent.c
$(OBJDIR)/endpwent.o: src/pwd/_pwd.h
$(OBJDIR)/endpwent.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/pwd/endpwent.c
