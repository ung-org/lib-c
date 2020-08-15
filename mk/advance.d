libc_X.4: libc.a(advance.o)
libc.a(advance.o): $(OBJDIR)/advance.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/advance.o: src/regexp/advance.c
$(OBJDIR)/advance.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regexp/advance.c
