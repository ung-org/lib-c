libc_P.1: libc.a(tzname.o)
libc.a(tzname.o): $(OBJDIR)/tzname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/tzname.o: src/time/tzname.c
$(OBJDIR)/tzname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/time/tzname.c
