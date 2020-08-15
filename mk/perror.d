libc_C.1: libc.a(perror.o)
libc.a(perror.o): $(OBJDIR)/perror.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/perror.o: src/stdio/perror.c
$(OBJDIR)/perror.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/stdio/perror.c
