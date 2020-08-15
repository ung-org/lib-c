libc_X.4: libc.a(catgets.o)
libc.a(catgets.o): $(OBJDIR)/catgets.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/catgets.o: src/nl_types/catgets.c
$(OBJDIR)/catgets.o: 
$(OBJDIR)/catgets.o: 
$(OBJDIR)/catgets.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/nl_types/catgets.c
