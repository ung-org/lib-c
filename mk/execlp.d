libc_P.1: libc.a(execlp.o)
libc.a(execlp.o): $(OBJDIR)/execlp.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/execlp.o: src/unistd/execlp.c
$(OBJDIR)/execlp.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/execlp.c
