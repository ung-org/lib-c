libc_X.4: libc.a(catopen.o)
libc.a(catopen.o): $(OBJDIR)/catopen.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/catopen.o: src/nl_types/catopen.c
$(OBJDIR)/catopen.o: 
$(OBJDIR)/catopen.o: 
$(OBJDIR)/catopen.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/nl_types/catopen.c
