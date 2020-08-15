libc_P.1: libc.a(sigemptyset.o)
libc.a(sigemptyset.o): $(OBJDIR)/sigemptyset.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/sigemptyset.o: src/signal/sigemptyset.c
$(OBJDIR)/sigemptyset.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/signal/sigemptyset.c
