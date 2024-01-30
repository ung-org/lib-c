libc_X.400: libc.a(fcvt.o)
libc.a(fcvt.o): $(OBJDIR)/fcvt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/fcvt.o: src/stdlib/fcvt.c
$(OBJDIR)/fcvt.o: src/stdlib/_stdlib.h
$(OBJDIR)/fcvt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/fcvt.c
