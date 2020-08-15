libc_X.400: libc.a(bcopy.o)
libc.a(bcopy.o): $(OBJDIR)/bcopy.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/bcopy.o: src/strings/bcopy.c
$(OBJDIR)/bcopy.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/bcopy.c
