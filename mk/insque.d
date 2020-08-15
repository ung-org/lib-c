libc_X.400: libc.a(insque.o)
libc.a(insque.o): $(OBJDIR)/insque.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/insque.o: src/search/insque.c
$(OBJDIR)/insque.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/insque.c
