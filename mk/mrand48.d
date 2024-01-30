libc_X.4: libc.a(mrand48.o)
libc.a(mrand48.o): $(OBJDIR)/mrand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/mrand48.o: src/stdlib/mrand48.c
$(OBJDIR)/mrand48.o: src/stdlib/_stdlib.h
$(OBJDIR)/mrand48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/mrand48.c
