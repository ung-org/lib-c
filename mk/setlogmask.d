libc_X.400: libc.a(setlogmask.o)
libc.a(setlogmask.o): $(OBJDIR)/setlogmask.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setlogmask.o: src/syslog/setlogmask.c
$(OBJDIR)/setlogmask.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/syslog/setlogmask.c
