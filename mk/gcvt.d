libc_X.400: libc.a(gcvt.o)
libc.a(gcvt.o): $(OBJDIR)/gcvt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/gcvt.o: src/stdlib/gcvt.c
$(OBJDIR)/gcvt.o: src/stdlib/_stdlib.h
$(OBJDIR)/gcvt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/gcvt.c
