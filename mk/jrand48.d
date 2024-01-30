libc_X.4: libc.a(jrand48.o)
libc.a(jrand48.o): $(OBJDIR)/jrand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/jrand48.o: src/stdlib/jrand48.c
$(OBJDIR)/jrand48.o: src/stdlib/_stdlib.h
$(OBJDIR)/jrand48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/jrand48.c
