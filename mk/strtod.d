libc_C.1: libc.a(strtod.o)
libc.a(strtod.o): $(OBJDIR)/strtod.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/strtod.o: src/stdlib/strtod.c
$(OBJDIR)/strtod.o: src/stdlib/_stdlib.h
$(OBJDIR)/strtod.o: src/stdlib/_strtod.h
$(OBJDIR)/strtod.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/strtod.c
