libc_C.1: libc.a(atof.o)
libc.a(atof.o): $(OBJDIR)/atof.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/atof.o: src/stdlib/atof.c
$(OBJDIR)/atof.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/atof.c
