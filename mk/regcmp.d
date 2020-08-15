libc_X.400: libc.a(regcmp.o)
libc.a(regcmp.o): $(OBJDIR)/regcmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/regcmp.o: src/libgen/regcmp.c
$(OBJDIR)/regcmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/libgen/regcmp.c
