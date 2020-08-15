libc_X.400: libc.a(setreuid.o)
libc.a(setreuid.o): $(OBJDIR)/setreuid.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/setreuid.o: src/unistd/setreuid.c
$(OBJDIR)/setreuid.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/unistd/setreuid.c
