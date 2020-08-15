libc_P.1: libc.a(execl.o)
libc.a(execl.o): $(OBJDIR)/execl.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/execl.o: src/unistd/execl.c
$(OBJDIR)/execl.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/execl.c
