libc_X.400: libc.a(realpath.o)
libc.a(realpath.o): $(OBJDIR)/realpath.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/realpath.o: src/stdlib/realpath.c
$(OBJDIR)/realpath.o: src/stdlib/_stdlib.h
$(OBJDIR)/realpath.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/realpath.c
