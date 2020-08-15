libc_X.400: libc.a(bzero.o)
libc.a(bzero.o): $(OBJDIR)/bzero.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bzero.o: src/strings/bzero.c
$(OBJDIR)/bzero.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/bzero.c
