libc_C.1: libc.a(getenv.o)
libc.a(getenv.o): $(OBJDIR)/getenv.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/getenv.o: src/stdlib/getenv.c
$(OBJDIR)/getenv.o: src/stdlib/_stdlib.h
$(OBJDIR)/getenv.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdlib/getenv.c
