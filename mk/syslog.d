libc_X.400: libc.a(syslog.o)
libc.a(syslog.o): $(OBJDIR)/syslog.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/syslog.o: src/syslog/syslog.c
$(OBJDIR)/syslog.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/syslog/syslog.c
