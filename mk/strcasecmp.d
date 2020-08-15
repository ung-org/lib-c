libc_P.200809: libc.a(strcasecmp.o)
libc_X.400: libc.a(strcasecmp.o)
libc.a(strcasecmp.o): $(OBJDIR)/strcasecmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strcasecmp.o: src/strings/strcasecmp.c
$(OBJDIR)/strcasecmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/strcasecmp.c
