libc_P.1: libc.a(execvp.o)
libc.a(execvp.o): $(OBJDIR)/execvp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/execvp.o: src/unistd/execvp.c
$(OBJDIR)/execvp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/execvp.c
