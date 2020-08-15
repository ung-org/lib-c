libc_X.400: libc.a(ptsname.o)
libc.a(ptsname.o): $(OBJDIR)/ptsname.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ptsname.o: src/stdlib/ptsname.c
$(OBJDIR)/ptsname.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/ptsname.c
