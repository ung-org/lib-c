libc_C.1: libc.a(system.o)
libc.a(system.o): $(OBJDIR)/system.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/system.o: src/stdlib/system.c
$(OBJDIR)/system.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/system.c
