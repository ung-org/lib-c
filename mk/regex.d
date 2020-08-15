libc_X.400: libc.a(regex.o)
libc.a(regex.o): $(OBJDIR)/regex.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/regex.o: src/libgen/regex.c
$(OBJDIR)/regex.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/libgen/regex.c
