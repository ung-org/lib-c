libc_P.200809: libc.a(strncasecmp.o)
libc_X.400: libc.a(strncasecmp.o)
libc.a(strncasecmp.o): $(OBJDIR)/strncasecmp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strncasecmp.o: src/strings/strncasecmp.c
$(OBJDIR)/strncasecmp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/strings/strncasecmp.c
