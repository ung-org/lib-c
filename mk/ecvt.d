libc_X.400: libc.a(ecvt.o)
libc.a(ecvt.o): $(OBJDIR)/ecvt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ecvt.o: src/stdlib/ecvt.c
$(OBJDIR)/ecvt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/ecvt.c
