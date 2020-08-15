libc_P.1: libc.a(execle.o)
libc.a(execle.o): $(OBJDIR)/execle.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/execle.o: src/unistd/execle.c
$(OBJDIR)/execle.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/execle.c
