libc_X.4: libc.a(compile.o)
libc.a(compile.o): $(OBJDIR)/compile.o
	@$(AR) $(ARFLAGS) $@ $(OBJDIR)/$%

$(OBJDIR)/compile.o: src/regexp/compile.c
$(OBJDIR)/compile.o:
	@echo "  [CC] $@"
	@mkdir -p $(@D)
	@$(CC) -c -o $@ $(CFLAGS) src/regexp/compile.c
