libc_X.400: libc.a(grantpt.o)
libc.a(grantpt.o): $(OBJDIR)/grantpt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/grantpt.o: src/stdlib/grantpt.c
$(OBJDIR)/grantpt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/grantpt.c
