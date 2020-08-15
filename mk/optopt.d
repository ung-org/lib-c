libc_P.2: libc.a(optopt.o)
libc.a(optopt.o): $(OBJDIR)/optopt.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/optopt.o: src/unistd/optopt.c
$(OBJDIR)/optopt.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/optopt.c
