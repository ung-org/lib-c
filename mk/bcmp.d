libc_X.400: libc.a(bcmp.o)
libc.a(bcmp.o): $(OBJDIR)/bcmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bcmp.o: src/strings/bcmp.c
$(OBJDIR)/bcmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/bcmp.c
