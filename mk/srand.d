libc_C.1: libc.a(srand.o)
libc.a(srand.o): $(OBJDIR)/srand.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/srand.o: src/stdlib/srand.c
$(OBJDIR)/srand.o: src/stdlib/_stdlib.h
$(OBJDIR)/srand.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/srand.c
