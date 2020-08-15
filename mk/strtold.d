libc_C.199901: libc.a(strtold.o)
libc.a(strtold.o): $(OBJDIR)/strtold.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtold.o: src/stdlib/strtold.c
$(OBJDIR)/strtold.o: src/stdlib/_strtod.h
$(OBJDIR)/strtold.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtold.c
