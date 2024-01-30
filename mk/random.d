libc_X.400: libc.a(random.o)
libc.a(random.o): $(OBJDIR)/random.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/random.o: src/stdlib/random.c
$(OBJDIR)/random.o: src/stdlib/_stdlib.h
$(OBJDIR)/random.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/random.c
