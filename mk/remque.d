libc_X.400: libc.a(remque.o)
libc.a(remque.o): $(OBJDIR)/remque.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/remque.o: src/search/remque.c
$(OBJDIR)/remque.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/search/remque.c
