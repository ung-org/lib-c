libc_P.200809: libc.a(strdup.o)
libc_X.400: libc.a(strdup.o)
libc.a(strdup.o): $(OBJDIR)/strdup.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strdup.o: src/string/strdup.c
$(OBJDIR)/strdup.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/string/strdup.c
