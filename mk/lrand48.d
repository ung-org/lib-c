libc_X.4: libc.a(lrand48.o)
libc.a(lrand48.o): $(OBJDIR)/lrand48.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/lrand48.o: src/stdlib/lrand48.c
$(OBJDIR)/lrand48.o: src/stdlib/_stdlib.h
$(OBJDIR)/lrand48.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/lrand48.c
