libc_X.400: libc.a(openlog.o)
libc.a(openlog.o): $(OBJDIR)/openlog.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/openlog.o: src/syslog/openlog.c
$(OBJDIR)/openlog.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/syslog/openlog.c
