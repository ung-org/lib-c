libc_C.1: libc.a(wcstombs.o)
libc.a(wcstombs.o): $(OBJDIR)/wcstombs.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/wcstombs.o: src/stdlib/wcstombs.c
$(OBJDIR)/wcstombs.o: src/stdlib/_stdlib.h
$(OBJDIR)/wcstombs.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/wcstombs.c
