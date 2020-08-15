libc_X.400: libc.a(closelog.o)
libc.a(closelog.o): $(OBJDIR)/closelog.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/closelog.o: src/syslog/closelog.c
$(OBJDIR)/closelog.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/syslog/closelog.c
