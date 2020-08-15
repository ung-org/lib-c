libc_X.4: libc.a(catclose.o)
libc.a(catclose.o): $(OBJDIR)/catclose.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/catclose.o: src/nl_types/catclose.c
$(OBJDIR)/catclose.o: 
$(OBJDIR)/catclose.o: 
$(OBJDIR)/catclose.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/nl_types/catclose.c
