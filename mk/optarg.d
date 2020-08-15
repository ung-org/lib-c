libc_P.2: libc.a(optarg.o)
libc.a(optarg.o): $(OBJDIR)/optarg.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/optarg.o: src/unistd/optarg.c
$(OBJDIR)/optarg.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/optarg.c
