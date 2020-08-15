libc_C.1: libc.a(rand.o)
libc.a(rand.o): $(OBJDIR)/rand.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/rand.o: src/stdlib/rand.c
$(OBJDIR)/rand.o: src/stdlib/_stdlib.h
$(OBJDIR)/rand.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/rand.c
