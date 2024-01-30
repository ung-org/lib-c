libc_C.1: libc.a(ldiv.o)
libc.a(ldiv.o): $(OBJDIR)/ldiv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/ldiv.o: src/stdlib/ldiv.c
$(OBJDIR)/ldiv.o: src/stdlib/_stdlib.h
$(OBJDIR)/ldiv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/ldiv.c
