libc_X.400: libc.a(index.o)
libc.a(index.o): $(OBJDIR)/index.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/index.o: src/strings/index.c
$(OBJDIR)/index.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/index.c
